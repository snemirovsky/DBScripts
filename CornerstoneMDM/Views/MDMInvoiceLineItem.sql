USE [CornerstoneMDM]
GO

/****** Object:  View [dbo].[MDMInvoiceLineItem]    Script Date: 1/23/2015 9:15:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






ALTER view [dbo].[MDMInvoiceLineItem]
as
/*
	Created by:			Ben Huntley 
	Created on;			2014-07-16
	
	Purpose:			Returns a set of all invoice line items for invoices returned by MDMInvoice, based on ERP tables
	
	Notes:				2014-08-01 BH:  Added joins to SAPStaging.DeliveryItems and SAPStaging.OrderItems.
										Added CustomerLineItemId attribute
						2014-08-04 BH:  Added Description attribute
										Added join to SAPStaging.DocumentTexts for inbound customer line item IDs
										Added CustomerLineItemId attribute
										Revamped join logic such that CustomerLineItemNumber and CustomerLineItemId are coming from the	
										SAP "batch parent" row.
						2014-08-05 BH:	Updated left join section for CustomerLineItemNumber.  The inner left join on DeliveryItem was
										incorrect.  di.ReferenceItem was changed to di.DeliveryItemNumber
						2014-08-20 BH:	Added MDMInvoice.ReferenceId attribute for the sake of other objects joining to this view
						2014-10-08 BH:	Added InvoiceItems.DocumentNumberOfTheReferenceDocument	as DeliveryDocumentNumber attribute
						2014-10-20 BH:	Added Invoice.OrderTypeCode attribute
						2014-11-03 BH:	Updated join logic on DocumentTexts-based table structure.  For whatever reason, SFDC quotes that 
										made their way to SAP, don't have a HigherLevelItemOfBatchSplitItem value populated, so those null
										values weren't joining on anything in dbo.DocumentTexts.  However, the BillingItem value for these
										records found in dbo.InvoiceItems *did* match what was found in dbo.DocumentTexts.  The join 
										condition was updated as isnull(ii.HigherLevelItemOfBatchSplitItem, ii.BillingItem), which is now 
										returning matching document text records for SFDC quotes, which include line item IDs.  It appears
										that not all SFDC quote line items have reference IDs which are found in dbo.Invoice
						2014-11-06 JG:  1.) Added Profit Center attributes and joined to a CTRLtable with the values
										2.) Added "RevenueAccountDebitCreditAdjustmentFactor" from MDMInvoice into the calculation for revenue.  Originally, this
										amount only contained positive numbers and did not "flip" the "revenue" from credit memo's and other types 
										of credits in SAP into addable, net dollars 
						2015-01-23 SN:	Added Item Category									
											
	Last modified by:	Sergei Nemirovsky
	Last modified on:	2015-01-23
*/
select	distinct 
		ii.BillingDocument + '_' + cast(ii.BillingItem as nvarchar(4))	as LineItemId
		,ii.BillingDocument												as InvoiceNumber
		,ii.BillingItem
		,ii.HigherLevelItemOfBatchSplitItem
		,i.OrderNumber
		,i.ReferenceId
		,ii.DocumentNumberOfTheReferenceDocument						as DeliveryDocumentNumber

		,ii.MaterialGroup												as ProductType			-- used to discern product type, such as OEM
		,ii.MaterialNumber												as SAPProductCode
		,ii.ShortTextForSalesOrderItem									as [Description]
		,ii.ActualInvoicedQuantity										as Quantity

		,isnull(ii.NetvalueOfTheBillingItemInDocumentCurrency,0) * i.RevenueAccountDebitCreditAdjustmentFactor		as TotalPrice
		
		,ii.Subtotal2FromPricingProcedureForCondition					as TotalDiscount
		,ii.TaxAmountInDocumenCurrency									as SalesTax

		,dt.Line														as CustomerLineItemId	
		,ii2.PurchaseOrderItem											as CustomerLineItemNumber
		
		,i.OrderTypeCode
		
		,prof.SAPProfitCenterCategory
		,prof.SAPProfitCenterCode
		,Prof.SAPProfitCenterDescription
		,ii.SalesDocumentItemCategory									as ItemCategory
		
		
from	SAPStaging.dbo.InvoiceItems ii
		inner join dbo.MDMInvoice i on ii.BillingDocument = i.InvoiceNumber

		left join SAPStaging.dbo.DeliveryItems di on ii.[DocumentNumberOfTheReferenceDocument] = di.[DeliveryDocument]
													 and ii.[ItemNumberOfTheReferenceItem] = di.[ReferenceItem]								 
		left join SAPStaging.dbo.OrderItems oi on di.[ReferenceDocument] = oi.[SalesDocument]
												  and di.[ReferenceItem] = oi.[SalesDocumentItem]		-- inbound customer line item numbers
		
		-- the customer line item number from the SAP "parent" row for the batch									  
		left join (
					select	distinct
							a.BillingDocument
							,a.BillingItem
							,oi.PurchaseOrderItem
					from	SAPStaging.dbo.InvoiceItems a
							inner join dbo.MDMInvoice b on a.BillingDocument = b.InvoiceNumber
							left join SAPStaging.dbo.DeliveryItems di on a.[DocumentNumberOfTheReferenceDocument] = di.[DeliveryDocument]
													 and a.[ItemNumberOfTheReferenceItem] = di.[DeliveryItemNumber]								 
							left join SAPStaging.dbo.OrderItems oi on di.[ReferenceDocument] = oi.[SalesDocument]
												  and di.[ReferenceItem] = oi.[SalesDocumentItem]		-- inbound customer line item numbers
					where	oi.PurchaseOrderItem is not null
							
				  ) ii2 on ii.BillingDocument = ii2.BillingDocument
						   and ii.HigherLevelItemOfBatchSplitItem = ii2.BillingItem	
		
		-- the customer line item reference ID from the SAP "parent" row for the batch
		left join (
					select	a.BillingDocument
							,a.BillingItem
							,c.SalesAndDistributionDocumentNumber
							,c.Line 
							,c.TextID               
					from    SAPStaging.dbo.InvoiceItems a
							left join SAPStaging.dbo.DocumentTexts c on a.BillingDocument = c.SalesAndDistributionDocumentNumber
																		and a.BillingItem = c.ItemNumberOfTheSDDocument
					where   1 = 1
							and c.TextID = 'Z001'
							and c.Line is not null
				   ) dt on ii.BillingDocument = dt.BillingDocument
						   and isnull(ii.HigherLevelItemOfBatchSplitItem, ii.BillingItem) = dt.BillingItem		-- ** See 2014-11-03 note
						   --and ii.HigherLevelItemOfBatchSplitItem = dt.BillingItem
			      	-- inbound customer line item IDs, including SFDC

		-- ctrl Profit Center Join
		left join dbo.ctrlSAPProfitCenters prof on ii.ProfitCenter = prof.SAPProfitCenterCode
where	1 = 1
		and isnull(ii.ActualInvoicedQuantity,0) <> 0
		and isnull(ii.MaterialGroup,'') not in ('FREIGHT')
		and isnull(ii.MaterialNumber,'') <> 'FREIGHT'
		--and ii.BillingDocument = '0090000061'
--order by 1













GO



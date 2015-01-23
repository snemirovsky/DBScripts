USE [CornerstoneMDM]
GO

/****** Object:  View [dbo].[Out1DWSales]    Script Date: 1/21/2015 5:27:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER view [dbo].[Out1DWSales]
as
/*
	Created by:		Joe Grimes
	Created on:		2014-08-08
	
	Purpose:		Used by ETL that delivers sales data (posted invoices) from MDM to DW.
						
	Notes:			2014-08-08  Initial verison created based loosely off Out1SFDCClosedOpportunities
					2014-08-27  Eliminated separate Bill To and Ship To customers for single customer key
					2014-09-02  Added Logic for Bulk/OTC
					2014-09-23  Added Field for Ship to Territory
					2014-10-09	Updated L1/L2 Sales Territory Logic

		
	Modified by:	Joe Grimes
	Modified on:	2014-09-23
	
	Notes:			
*/


SELECT 
	   convert(nvarchar(255), h.[DocumentDate])								as [Order Date]
	  
	  ,convert(nvarchar(255), h.[InvoiceNumber])							as [Invoice Number]
      ,convert(nvarchar(255), h.[OrderNumber])								as [Order Number]
      
      ,convert(nvarchar(255), h.[DocumentType])								as [Document Type]
      ,convert(nvarchar(255), h.[CurrencyCode])								as [Currency Code]
      
	  ,convert(nvarchar(255), h.[BPNumber] + '_' + h.[ShipToBPNumber])		as [MDMAccountID]
      
      ,convert(nvarchar(255), h.[OrderTypeCode])							as [Order Type Code]
      
      ,convert(nvarchar(255), h.OrderBillToContactEmail)					as [Email (Bill to)]
	  ,convert(nvarchar(255), h.OrderBuyerContactEmail)						as [Email (Buyer)]
	  ,convert(nvarchar(255), h.OrderEndUserContactEmail)					as [Email (End user)]
	  ,convert(nvarchar(255), h.OrderShipToContactEmail)					as [Email (Ship to)]

      ,convert(nvarchar(255), h.[OrderShipToCity])							as [Order Ship To City]			
      ,convert(nvarchar(255), h.[OrderShipToState])							as [Order Ship to State]
      ,convert(nvarchar(255), h.[OrderShipToPostalCode])					as [Order Ship to Postal Code]
      ,convert(nvarchar(255), h.[OrderShipToCountry])						as [Order Ship to Country]
	  ,convert(nvarchar(255), h.OrderShipToTerritoryCode)					as [Order Ship to Territory]

	  ,Case h.OrderShipToTerritoryCode
		when 'Foreign Sales' then convert(nvarchar(255),N'Foreign')
		else 'Domestic'
		end																	as [L1SalesTerritory]
	  
	  ,convert(nvarchar(255),h.OrderShipToTerritoryCode)					as [L2SalesTerritory]	  
      	  
	  ,convert(nvarchar(255), h.ReferenceId)								as [Reference ID]
	  	  
	  ,convert(nvarchar(255), i.[LineItemId])								as [Line Item Id]
      ,convert(nvarchar(255), i.[SAPProductCode])							as [Product ID]

	,Case  i.CostCenter
		when 'OEM' then N'Bulk'
		else N'OTC'
	   end
	 
	 as [Order Sales Channel]
	        
	  ,i.[Quantity] as [Quantity]
      ,i.[TotalPrice] as [Net Revenue]    	       

from	
	[MDMInvoice] h
	inner join 
	(
	

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
		,isnull(ii.NetvalueOfTheBillingItemInDocumentCurrency,0)		as TotalPrice
		,ii.Subtotal2FromPricingProcedureForCondition					as TotalDiscount
		,ii.TaxAmountInDocumenCurrency									as SalesTax

		,dt.Line														as CustomerLineItemId	
		,ii2.PurchaseOrderItem											as CustomerLineItemNumber
		,i.OrderTypeCode
		,ii.CostCenter
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
						   and ii.HigherLevelItemOfBatchSplitItem = dt.BillingItem
			      	-- inbound customer line item IDs, including SFDC
where	1 = 1
		and isnull(ii.ActualInvoicedQuantity,0) <> 0
		and isnull(ii.MaterialGroup,'') not in ('FREIGHT')
		and isnull(ii.MaterialNumber,'') <> 'FREIGHT'
		--and ii.BillingDocument = '0090000061'
--order by 1





	)
	as i on h.InvoiceNumber = i.invoiceNumber










GO


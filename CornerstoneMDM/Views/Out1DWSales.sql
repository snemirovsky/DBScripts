USE [CornerstoneMDM]
GO

/****** Object:  View [dbo].[Out1DWSales]    Script Date: 1/21/2015 5:38:46 PM ******/
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
					2014-10-29  Added Cost Center OEM logic
					2014-11-05  Updated logic to relfect changes to MDMInvoice and MDMInvoiceLineItem
					2015-01-22	SN:	Added FreightAmount
					2015-01-22	SN:	Added Item Category, Order Type and Order Reason

	Modified by:	Sergei Nemirovsky
	Modified on:	2015-01-26
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

	  ,Case h.[OrderTypeCode]
		when 'SFDC-Quote' then N'Bulk'
		else N'OTC'
	   end as [Order Sales Channel]

	 ,i.SAPProfitCenterCategory
	 ,i.SAPProfitCenterCode
	 ,i.SAPProfitCenterDescription
	 ,h.OrderTypeCode
	 
	 ,i.[Quantity]															as [Quantity]
     ,i.[TotalPrice]														as [Net Revenue]
	 ,h.FreightAmount														as [Freight Amount]
	 ,ic.Description														as [ItemCategory]
	 ,rc.Description														as [ReasonCode]
	 ,ot.Description														as [OrderType]
from	
	[MDMInvoice] as h
	inner join [MDMInvoiceLineItem]	as i on h.InvoiceNumber = i.invoiceNumber
	inner join [MDMOrder] o on (h.OrderNumber = o.OrderNumber)
	inner join [MDMOrderLineItem] oi on (o.OrderNumber = oi.SalesDocument and i.SAPProductCode = oi.Material)
	left outer join SAPStaging.dbo.REASON_CODES rc on oi.ReasonCode = rc.ReasonCode
	left outer join SAPStaging.dbo.ITEM_CATEGORIES ic on ic.ItemCategory = oi.ItemCategory 
	left outer join SAPStaging.dbo.ORDER_TYPES ot on ot.OrderType = o.OrderSalesDocumentType
	
GO


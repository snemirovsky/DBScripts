USE [CornerstoneMDM]
GO

/****** Object:  View [dbo].[MDMOrderLineItem]    Script Date: 1/22/2015 6:44:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER view [dbo].[MDMOrderLineItem]
as
/*
	Created by:			Mike Morris 
	Created on;			2014-08-26
	
	Purpose:			Returns a set of all order line items for orders returned by MDMOrder, based on ERP tables
	
	Notes:				2014-10-27 JG:	Added oi.Reason code for replacement orders
						2015-01-22 SN:	Added ItemCategory

	Last modified by:	Sergei Nemirovsky
	Last modified on:	2015-01-22
*/

select oi.SalesDocument
	   ,oi.SalesDocumentItem													-- order number
	   ,oi.PurchaseOrderItem													-- customer line number
	   ,dt.Line								as CustomerLineItemId				-- customer line item id
	   ,oi.Material
	   ,oi.Description
	   ,si.[ScheduleLine Number]			as ScheduleLineNumber
	   ,si.OrderQuantity
	   ,isnull(si.ConfirmedQuantity , 0)	as ConfirmedQuantity
	   ,oi.BaseUnitOfMeasure
	   ,oi.NetPrice
	   ,oi.NetValue
	   ,oi.DocumentCurrency
	   ,oi.TaxAmount
	   ,si.DeliveryDate3
	   ,si.MaterialAvailDate
	   ,si.GoodsIssueDate
	   ,oi.ReasonCode
	   ,oi.ItemCategory
from SAPStaging.dbo.OrderItems oi

-- Schedule lines
left join SAPStaging.dbo.OrderItemScheduleLines si 
on oi.SalesDocument = si.SalesDocument
and oi.SalesDocumentItem = si.SalesDocumentItem

-- Customer line item Ids
left join SAPStaging.dbo.DocumentTexts dt 
on oi.SalesDocument = dt.SalesAndDistributionDocumentNumber
and oi.SalesDocumentItem = dt.ItemNumberOfTheSDDocument
and	dt.TextID = 'Z001'
				  


GO



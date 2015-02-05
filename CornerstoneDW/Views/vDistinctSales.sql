USE [CornerstoneDW]
GO

/****** Object:  View [dbo].[vDistinctSales]    Script Date: 2/4/2015 5:21:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vDistinctSales]
AS
SELECT DISTINCT 
                         OrderDate, OrderID, ProductID, ContactEmail, OpportunityID, AccountID, ProductKey, CustomerKey, OrderShipToCountry, OrderShipToState, OrderShipToCity, 
                         OrderShipToZip, OrderChannel, OrderSalesChannel, OrderL1SalesTerritory, OrderL2SalesTerritory, RevenueType, Quantity, Revenue, [Non-ERP Revenue], 
                         [Non-ERP Quantity], [Blended Revenue], [Blended Quantity], InvoiceID, SAPProfitCenterCategory, SAPProfitCenterCode, SAPProfitCenterDescription, ETLDate, Source, 
                         Package, Server, [Order Type], [Order Reason], [Item Category], [Freight Amount]
FROM            dbo.factSales

GO

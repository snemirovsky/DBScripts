USE [CornerstoneDW]
GO

/****** Object:  Table [dbo].[stagingFactSales]    Script Date: 2/4/2015 5:24:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stagingFactSales](
	[OrderDate] [date] NULL,
	[OrderID] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NULL,
	[ContactEmail] [nvarchar](255) NULL,
	[OpportunityID] [nvarchar](255) NULL,
	[AccountID] [nvarchar](255) NULL,
	[ProductKey] [bigint] NULL,
	[CustomerKey] [bigint] NULL,
	[OrderShipToCountry] [nvarchar](255) NULL,
	[OrderShipToState] [nvarchar](255) NULL,
	[OrderShipToCity] [nvarchar](255) NULL,
	[OrderShipToZip] [nvarchar](255) NULL,
	[OrderChannel] [nvarchar](255) NULL,
	[OrderSalesChannel] [nvarchar](255) NULL,
	[OrderL1SalesTerritory] [nvarchar](255) NULL,
	[OrderL2SalesTerritory] [nvarchar](255) NULL,
	[RevenueType] [nvarchar](255) NULL,
	[Quantity] [float] NULL,
	[Revenue] [float] NULL,
	[Non-ERP Revenue] [float] NULL,
	[Non-ERP Quantity] [float] NULL,
	[Blended Revenue] [float] NULL,
	[Blended Quantity] [float] NULL,
	[InvoiceID] [nvarchar](255) NULL,
	[SAPProfitCenterCategory] [nvarchar](255) NULL,
	[SAPProfitCenterCode] [int] NULL,
	[SAPProfitCenterDescription] [nvarchar](255) NULL,
	[ETLDate] [datetime] NULL,
	[Source] [nvarchar](255) NULL,
	[Package] [nvarchar](255) NULL,
	[Server] [nvarchar](255) NULL,
	[Order Type] [nvarchar](255) NULL,
	[Order Reason] [nvarchar](255) NULL,
	[Item Category] [nvarchar](255) NULL,
	[Freight Amount] [decimal](38, 2) NULL
) ON [PRIMARY]

GO



USE [SAPStaging]
GO
/****** Object:  Table [dbo].[REASON_CODES]    Script Date: 1/26/2015 4:15:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REASON_CODES]') AND type in (N'U'))
DROP TABLE [dbo].[REASON_CODES]
GO
/****** Object:  Table [dbo].[REASON_CODES]    Script Date: 1/26/2015 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REASON_CODES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REASON_CODES](
	[ReasonCode] [nvarchar](3) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_REASON_CODES] PRIMARY KEY CLUSTERED 
(
	[ReasonCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'F01', N'Free Goods Sales Promo')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RC1', N'CUSTOMER ERROR')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RC2', N'HOLIDAY CLOSED')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RC3', N'CUSTOMER ERROR WRONG ADDRESS')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE1', N'EDI Error')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE2', N'WEB Error')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE3', N'SAP Error')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE4', N'FVTech Error')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE5', N'WEB SITE DATA ERROR')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RE6', N'Invoice Correction')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF1', N'ACTUAL LATE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF2', N'BOX DAMAGED')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF3', N'BOX WARM')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF4', N'MISSED CONNECTION')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF5', N'MECHANICAL DELAY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF6', N'REPORTED LATE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF7', N'WRONG ADDRESS')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RF8', N'WEATHER DELAY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM1', N'LOW OR NO ACTIVITY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM2', N'PRODUCT NOT WORKING')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM3', N'PRODUCT RECALL')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM4', N'UNWANTED ACTIVITY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM5', N'EXTRA BAND')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RM6', N'DATA CARD ERROR')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RO1', N'PRODUCT NOT TYPED')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RO2', N'SHIPPED IN ERROR')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RO3', N'TYPED WRONG PRODUCT')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RO4', N'TYPED WRONG QUANTITY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RO5', N'TYPED WRONG ADDRESS')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP1', N'EMPTY VIAL')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP2', N'EXPIRED PRODUCTS')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP3', N'LABEL ERROR')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP4', N'LEAKY VIAL')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP5', N'LOW VOLUME')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP6', N'MISSING PRODUCT IN PACKAGE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP7', N'NEAR EXPIRATION')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RP8', N'WRONG PRODUCT IN PACKAGE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RR1', N'SAMPLE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RR2', N'NO CHARGE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS1', N'EMPTY BOX')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS2', N'NO DRY ICE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS3', N'NO INVENTORY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS4', N'PRODUCT NOT PACKED')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS5', N'NO TRACKING INFORMATION')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS6', N'PACKED WRONG BOX')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS7', N'PACKED WRONG PRODUCT')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS8', N'PACKED WRONG QUANTITY')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RS9', N'DAMAGED VIAL')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RZ1', N'FREEZER EXPIRED PRODUCTS')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RZ2', N'FREEZER SHRINKAGE')
GO
INSERT [dbo].[REASON_CODES] ([ReasonCode], [Description]) VALUES (N'RZ3', N'Freezer Invoice')
GO

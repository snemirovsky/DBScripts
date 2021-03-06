USE [SAPStaging]
GO
/****** Object:  Table [dbo].[ITEM_CATEGORIES]    Script Date: 1/26/2015 4:11:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_CATEGORIES]') AND type in (N'U'))
DROP TABLE [dbo].[ITEM_CATEGORIES]
GO
/****** Object:  Table [dbo].[ITEM_CATEGORIES]    Script Date: 1/26/2015 4:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_CATEGORIES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ITEM_CATEGORIES](
	[ItemCategory] [nvarchar](4) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ITEM_CATEGORIES] PRIMARY KEY CLUSTERED 
(
	[ItemCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'0001', N'Requisition')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ADP1', N'Ret.Pack. Pickup')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ADP2', N'Ret. Pack. Shipment')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ADP3', N'Ret.Pack. Sales')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AEBA', N'eBay Payment Process')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AEBT', N'Indep. Payt Process')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AEN', N'Qtn from Serv. Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AES', N'Qtn from Serv. Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AFC', N'Configuration')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AFN', N'Inquiry Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AFNN', N'Free of Charge Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AFTX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AFX', N'Inquiry Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGC', N'Config.at Mat.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGE', N'Service Quotation')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGM', N'Config.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGNN', N'Free of Charge Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGR', N'Repair Quotation')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGTX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AGX', N'Quotation Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ALEN', N'ALE Standard Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ALES', N'ALE Third Party')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'APX', N'Quotation Item Proj.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'APXS', N'Quotation Item Stat.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ARTX', N'Returns Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AVC', N'Configuration')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'AVN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'B1E', N'Reb.Credit Memo Req.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'B1N', N'Reb.Credit Memo Req.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'BI1', N'Indirect Item Rebate')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'BI2', N'Indir.Returns Rebate')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'BVN', N'Cash Sales')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'BVNN', N'Cash Sales:FreeofCh.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CBSS', N'SCS Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH00', N'Request Rent D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH01', N'Cancel.Rent Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH02', N'Request Admin.Cost D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH03', N'Cancel.AdmCo Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH04', N'IEA Request D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH05', N'Cancel.IEA Request D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH06', N'IEA Intern. Deb')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH07', N'Cancel.IEA Intern. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH08', N'Request Rent D Pr.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH09', N'Cancel.Rent P.Req.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH10', N'IEA Pr. Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH11', N'CancelIEA Pr. Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH12', N'IEA pr. Int. Deb.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH13', N'Cancel. IEA Pr. Int.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH14', N'IE Sett.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH15', N'Cancel.IE Sett.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH16', N'CreditMemo IE Sett.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH17', N'C.CreMemo IE Sett. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH18', N'IE Sett. Intern D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH19', N'Canc.IE Sett. Int. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH20', N'IE Sett.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH21', N'Cancel.IE Sett.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH22', N'CreditMemo IE Sett.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH23', N'C.CreMemo IE Sett. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH24', N'IE Sett. Intern D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH25', N'Canc.IE Sett. Int. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH26', N'Request Sec. Dep. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH27', N'Cancel.Sec.Dep.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH28', N'Sec.Dep. Statement D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH29', N'Cancel.Sec.Dep.Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH30', N'Sec.Dep.Inter.Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH31', N'Cancel.S.D.Int.Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH32', N'Sec.Dep.Res. Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH33', N'Ca.Sec.Dep.Res.Req.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH34', N'Sec.Dep.Res. Sta.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH35', N'Ca.Sec.Dep.Res.Req.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH36', N'Sec.Dep.Inter.Req D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CH37', N'Ca.Sec.Dep.Int.Req.D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHA0', N'Payment Statement D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHA1', N'Cancel.Payment Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHA2', N'Request Payment D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHA3', N'RequestCanc.Paymnt D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHB0', N'Depreciation D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHB1', N'C Depriaition D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHBA', N'Rebate')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHBB', N'Rebate Cancellation')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHBV', N'Clearing')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHBW', N'Clearing Bonus')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHK0', N'Payment Sta.      C')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHK1', N'Cancel.Payment Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHK2', N'Payment Req.    C')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHK3', N'Cancel.Payment Req C')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHT0', N'Repayment Sta D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHT1', N'Cancel.Repay.Sta   D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHT2', N'Request Repayment D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHT3', N'Cancel.Repay.Req.  D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHV0', N'Request Refund D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHV1', N'Cancel.Req. Refund D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHZ0', N'Interest Res. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHZ1', N'Canc.Interest Res. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHZ2', N'Request Interest D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'CHZ3', N'Cancel. Inter.Req. D')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DIGN', N'Goods Mov-Inb. Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLN', N'Stndard Itm w/o Ord.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLN2', N'DFPS Normal Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLNG', N'Full Product w. Ref.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLNZ', N'Tied Empties w/o Ref')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLP', N'Items from Projects')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLTX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLW', N'Value Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DLX', N'Non-stock item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DOGN', N'Goods Mov-Outb. Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DSI', N'CMS Stdrd Indiv.Part')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'DSTP', N'TransfPostItemCentr')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'EDK', N'ExtAgtCorrectionItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'EDK1', N'Neg.Correct-Ext Agt')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'EGN', N'Rough Goods Receipt')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'EGSH', N'Rough GR:SLSMainItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'EGSU', N'Rough GR:SLS SubItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELCR', N'Advanced Returns CC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELLR', N'Advanced Returns IC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELN', N'Inbound Delivery')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELP', N'Inb. Delvy Packaging')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELSH', N'Inb. Dely SLS MItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ELSU', N'Inb.Dely SLS Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'G2N', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'G2S', N'Statistical Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'G2TX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'G2W', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'G2WT', N'Val. Item for SBWAP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GAGC', N'Config.at SW-Product')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GAGD', N'Configurable Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GAGM', N'Config.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GAN2', N'Advanced CMR')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBKC', N'GG bundle config sub')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBKS', N'GG bundle config sub')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBMC', N'GG Bundle main item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBMI', N'GG bundle main item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBNC', N'GG bundle sub item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GBNS', N'GG bundle sub item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GCSC', N'Contr.Config.Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GCSN', N'Contract Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GCWB', N'Config. w/o BOM')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GFN', N'Request Billing Plan')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GKMC', N'Config.at SW-Product')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GKMM', N'Config.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GKMP', N'Precon.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GNDP', N'Perf-based no deliv.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GODK', N'Config ND OTC for QC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GODQ', N'Config. ND OTC Quote')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GODV', N'Config ND OTC for VC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GORP', N'Perf-based del. rel.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GPLD', N'Config. for SMP-delv')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GPLN', N'Config. for SMP-Ndel')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRCC', N'Config. RC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRCQ', N'Config RC for quote')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRCV', N'Config RC for VC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRDK', N'Config ND RC for QC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRDQ', N'Config. NDRC for QT')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRDV', N'Config ND RC for VC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GREX', N'Ret. Non-Stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GRVC', N'Vers.Change Return')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTAC', N'Config. Standard')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTAD', N'Configurable Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTAN', N'Standard w/o delive.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTAP', N'Precon.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTOD', N'Config. No Del. OTC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GTRD', N'Config. No Del. RC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GVCC', N'Config.at SW-Product')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GVCN', N'Value contract item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GVCP', N'Val. cont. prf-based')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'GWVN', N'Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'HIDN', N'SH - Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'HODN', N'Goods Issue - Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'HSTP', N'TransferPostingItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'HUPM', N'Additionals Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IBOS', N'Inquiry BOS/StdItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRAL', N'Repaired Goods Del.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRAT', N'Repairs Exchange')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRGN', N'Repairs Credit Memo')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRIN', N'DynItems for BillDoc')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRLA', N'Pickup Replacement')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRLB', N'Send Replacement')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRLN', N'Repairs Debit Memo')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRNI', N'Statist. Dyn. Items')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRPA', N'Fixed Rate Repairs')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRRA', N'Repair Costs')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRRE', N'Return for Repairs')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRRP', N'Repair')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRRS', N'Rep. Serv. Resources')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'IRVE', N'Scrap Goods')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'J3GM', N'CEM Material Sales')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'J3GP', N'CEM Services')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'J3GR', N'CEM Repurchase')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'JRE', N'DR-MS Ret at DR')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KAN', N'Consignment Pick-up')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KBN', N'Consignment Fill-up')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KEN', N'Consignment Issue')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KIT', N'Kit Header')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KLN', N'Free of Charge Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KLS', N'F.O.C Non-stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KLX', N'Free of Charge Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KMN', N'Qty Contract Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KOMP', N'Kit Component')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'KRN', N'Consignment Returns')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2DM', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2DP', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2N', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2S', N'Statistical Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2W', N'Request')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'L2WT', N'Val. Item for SBWAP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LAN', N'Ret.Packaging Pickup')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LBN', N'Mat. Provided Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LBR', N'PM Item for Reserv.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LDN', N'Standard Item Dec.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LDTX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LDX', N'Non-stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LFN', N'Request Billing Plan')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LKN', N'SchedAgr w.ExtAgent')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LNN', N'Ret.Packaging Issue')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LPN', N'Sched.Agreement Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LPPP', N'Deliv. WM->PP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LZMA', N'Dlv. SchedAgree Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LZN', N'Sched.Agreement Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LZQ', N'SA Item on DelyConf.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'LZSN', N'SAIt-SelfBill w/Inv.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'MAK', N'Dlv.-Pos. Correction')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'MAK1', N'Dlv.-Neg. Correction')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'MVN', N'Lease Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NCRG', N'IntCo. Full Good Ret')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NCRN', N'InterCo.StTR-Returns')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NCRZ', N'InterCo.Empties Retn')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NKN', N'TF Consgmt Lending')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NKR', N'TR consgmt ret. del.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLC', N'InterCo Stock Tr.Itm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLCG', N'IComp-StTr-FullGoods')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLCU', N'IC-StTr-Empt(untied)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLCZ', N'IC-StTr-Empty (tied)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLLR', N'Advanced STO')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLN', N'StandStockTransItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLNG', N'Full Prod. Stock Tr.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLNZ', N'EmptStockTran.(tied)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLRG', N'FullGood ST Ret.Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLRN', N'Return StockTransItm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLRZ', N'ST Empties Ret(tied)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLSH', N'STrans.SLS Main Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'NLSU', N'STrans.SLS Sub-Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'OBLS', N'Order BOS/Flat Rate')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'OBOS', N'Order BOS/Std Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PI', N'Dely Note PackgMatl')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PLPA', N'Pendulum List Req.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PLPN', N'Pend.List Zero Qty')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PLPR', N'Pendulum List Ret.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PLPS', N'Pendulum List Cancel')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PLPX', N'Pendulum List Revenu')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PO', N'Delivery PackgMatl')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'POB', N'Billed Dely PackgMat')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'POR', N'ReturnDely PackgMatl')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'PVN', N'Item Proposal')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'QBLS', N'Quot. BOS/Flat-Rate')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'QBOS', N'Quot. BOS/Std Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RAGN', N'Stock Quotation Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RAIN', N'SPE Returns Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RAIS', N'SPE Returns Itm TPOP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RASC', N'SPE Ret. Scrapping')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REHP', N'RBA Returns MainItm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REN2', N'Adv. Returns Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RENN', N'Free Goods Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REQ', N'Full Product Returns')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RETX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REU', N'EmptReturns unlinked')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REUP', N'RBA Returns Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REX', N'Non-stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'REZ', N'Empties (linked)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RLLN', N'Return Delivery Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RLN', N'Returns Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RLNG', N'Full Gds Return Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RLNZ', N'Empt.ret. dely(link)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RTTC', N'SPE Ret.pos.to Cust.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'RTTR', N'SPE Ret.pos.Over.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAB', N'Indiv.Purchase Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAC', N'Config.at Mat.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAD', N'Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TADC', N'Configurable Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAE', N'Explanation')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAF', N'Configurable Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAG', N'Generic Article')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAHP', N'RBA Main Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAL', N'Ret.Packag.Shipment')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TALS', N'Standard Item: SLS')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAM', N'Config.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAMA', N'Delivery Order Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TANN', N'Free of Charge Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAO', N'Milestone-Bill.Plan')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAP', N'Pric.at Item Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAP2', N'Kit: Replaced Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAPA', N'Standard Sourcing')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAPN', N'Free of Ch. Sourcing')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAPS', N'Standard Item (PS)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAQ', N'Pric.at Header Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAS', N'Third Party Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TASG', N'3rd Pty Credit Memo')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TATX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAU', N'Empties (unlinked)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAUL', N'Sub-item: SLS')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAUP', N'RBA Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAW', N'Value Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAX', N'Non-stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TAZ', N'Empties (linked)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TBOS', N'Entry of Srvc Prfrmd')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'TPOP', N'Inbound Delivery')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ULN', N'StandStockTransItem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ULNG', N'FULL PROD.TRANS.ITEM')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ULNZ', N'STransfOfTiedEmpties')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'UPOS', N'Automotive Subitem')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'VBOS', N'Value Contr BOS Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WAC', N'Con. ValContract Rel')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WAN', N'Release Item ValCont')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WIDN', N'WMS Inbound Delivery')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WIGN', N'Other WMS Inb. Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WKC', N'ValContrItem-Config.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WKN', N'Value Contract Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WMPP', N'Deliv. WM->PP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WNLN', N'Replenishment WMS')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WODD', N'Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WODN', N'WMS Outbound Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WODS', N'Non-stock Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WODW', N'Value Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WODX', N'Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WOGN', N'Other WMS Outb. Dely')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WRDN', N'WMS Customer Returns')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WSTP', N'TransfPostItemDec')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'WVN', N'Maint.Contract Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB01', N'Ret. Packaging del.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB1', N'3rd Party with SN')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB10', N'Ret. Packaging del.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB11', N'Ret. Packaging')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB2', N'3rd Party w/o SN')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB98', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YB99', N'Batch Sub Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBAB', N'Bought-In Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBAG', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBAO', N'Standard Item IM')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBC1', N'SP: Contract Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBC2', N'SP: Contrct Itm w BP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBEN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBLN', N'Free of Charge Exps')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBQ1', N'SP: Quotation')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBR1', N'SP:Order BOS/Std Itm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBR2', N'SP: Rep. Goods Del.')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBR3', N'SP: Return f Repairs')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBR4', N'SP:Serv Repair Contr')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS1', N'SP: Serv w FP Bill')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS2', N'SP: Serv w T&M')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS3', N'SP: Service Order')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS4', N'SP: SD T&M')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS5', N'SP: PS FP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBS6', N'SP: PS T&M')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBTA', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YBTC', N'Config.at Mat.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YDCF', N'Configuration')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YDCO', N'BP Components')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YDL2', N'DebitMemoRequest')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YDPM', N'Packaging Material')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YDTA', N'BOM Assembly Product')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YGRN', N'STO W/ ORDER')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YGTN', N'Batch Sub Free Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIAC', N'Config.at Mat.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIAN', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YICG', N'665 Item Category Gr')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIOC', N'Config.at Mat.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YION', N'Standard Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YISC', N'Config.at Comp.Level')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIYM', N'Monthly Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIYQ', N'Quarterly Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YIYY', N'Yearly Service')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YKLN', N'Free Item Batch')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSR1', N'SP:Free of Charg Itm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSR2', N'SP: ReplacMat Deliv')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSR3', N'SP: ReplacMat Return')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX1', N'SP Ext: SD FP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX2', N'SP Ext: SD T&M')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX3', N'SP Ext: PS FP')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX4', N'SP Ext: PS T&M')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX5', N'SP Ext: SD FP MS')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX6', N'SP Ext: PS FP MS')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSX7', N'SP Ext: PS T&M 2')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSXA', N'BRE: Accrual Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSXB', N'BRE: Accrual Sttlmnt')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSXC', N'BRE: Text Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSXD', N'BRE: Statistical Itm')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'YSXX', N'BRE: On-Account')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZBM1', N'Sales BOM (LP)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZBMF', N'NEB Sales BOM FOC')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZBMI', N'NEB S. BOM FOC Inv')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZBOM', N'NEB Sales BOM item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZFRT', N'Freight')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZKBN', N'Consignmnt Fill-up 2')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZKEN', N'Consignment Issue 2')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZMTO', N'NEB MTO Item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZTA2', N'Sales BOM item (LP)')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZTAE', N'NEB Sales BOM item')
GO
INSERT [dbo].[ITEM_CATEGORIES] ([ItemCategory], [Description]) VALUES (N'ZTAN', N'Cross Selling Promo')
GO

USE [SAPStaging]
GO
/****** Object:  Table [dbo].[ORDER_TYPES]    Script Date: 1/26/2015 4:11:35 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_TYPES]') AND type in (N'U'))
DROP TABLE [dbo].[ORDER_TYPES]
GO
/****** Object:  Table [dbo].[ORDER_TYPES]    Script Date: 1/26/2015 4:11:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_TYPES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDER_TYPES](
	[OrderType] [nvarchar](5) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ORDER_TYPES] PRIMARY KEY CLUSTERED 
(
	[OrderType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'01', N'Cust.Independent Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AA', N'Promotion Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AD1', N'A&D Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AD2', N'A&D Deb. Memo Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AD3', N'A&D Retroactive Bill')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AD9', N'RRB Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AE', N'Qtn from Serv. Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AEBO', N'Standard order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AEBQ', N'Offer')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AF', N'Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AFLV', N'Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AG', N'Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AGLS', N'Quotation lumpsum')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AGLV', N'Quotation unit BOS')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AP', N'Project Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AR', N'Repair Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AS', N'Service Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AU', N'Sales Information')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'AV', N'Quotation f.Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B1', N'Reb.Credit Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B1E', N'Exptd RebateCredMemo')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B2', N'Rebate Correctn Rqst')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B2E', N'Rebate P.Correctn Rt')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B3', N'PartRebSettl.Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B3E', N'Exp.PartRebSettl.Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'B4', N'Reb.Req.f.Man.Accrls')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BIND', N'Indir. Sales Rebate')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BK1', N'Agrmt Cred.Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BK3', N'Agrmt Cred.Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BM1', N'Agrmnt Deb.Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BM3', N'Agrmnt Deb.Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'BV', N'Cash Sale')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CBOS', N'Service credit sheet')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CBSS', N'Service credit sheet')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CH', N'Contract Handling')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CLRP', N'Requests + Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CMDM', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CMR', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CMRC', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'CMRP', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DHU', N'SlsDocTypeDelyHUmvmt')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DJIT', N'Order Type JIT')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DL', N'Order Type Sched.Ag.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DLR', N'Ord.Type Returns Del')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DLRE', N'Ord.Type Returns Del')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DMRB', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DMRP', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DMRR', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'DZL', N'Dec. Dely Order Type')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'ED', N'Issue by Ext. Agent')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'EDKO', N'Correction f.ExtAgnt')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'G2', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'G2LV', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'G2W', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'G2WT', N'Credit Memo Req. Val')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GA2', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GCQ', N'GG Quantity Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GCTA', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GK', N'Master Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GOR', N'GG Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GPLM', N'GG SW maintenance')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GQT', N'GG Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GRE', N'GG Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'GVC', N'GG Value Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'HBIN', N'Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'HBOR', N'Standard order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'HBQT', N'Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'ICPL', N'Customer Price List')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G1', N'CEM cost settlement')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G2', N'CEM customer settl.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G6', N'CEM mat. sales int.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G7', N'CEM mat. repur. int.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G8', N'CEM mat. sales ext.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3G9', N'CEM mat. repur. ext.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3GB', N'CEM credit memo int.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'J3GC', N'CEM credit memo ext.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JBCD', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JBDM', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JGL', N'Cred.M.Req.Ret.Good')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JLL', N'Deb.M.Requ.Ret.Good')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JOR', N'Standard order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JPCD', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JPCM', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JPDD', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JPDM', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JRE', N'Standard order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JREW', N'Standard order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JSDC', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JSDD', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JSDQ', N'Shp&Deb.Qty Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JSMC', N'Credit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'JST1', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KA', N'Consignment Pick-up')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KAZU', N'ConsignPick-up CompS')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KB', N'Consignment Fill-up')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KE', N'Consignment Issue')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KL', N'Deliv.Free of Charge')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KM', N'Quantity Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KN', N'Subs.Dlv.Free of Ch.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KR', N'Consignment Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'KRZU', N'ConsignReturn CompS')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'L2', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'L2DM', N'Expense:DebitMemoReq')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'L2DP', N'Expense:Payment Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'L2W', N'Debit Memo Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'L2WT', N'Debit Memo Req Value')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LA', N'Ret.Packaging Pickup')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LALV', N'Service Entry Sheet')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LK', N'Sched.Agreement ExAg')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LN', N'Ret.Packaging Issue')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LP', N'Scheduling Agreement')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LV', N'Deb.MemoReq. f.Ctrct')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LXE', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LXI', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZ', N'Sched. Agr. w/ Rel.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZER', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZJ', N'JIT Scheduling Agt')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZJE', N'JIT Sched.Agmt ESA')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZJQ', N'JIT Sched.Agmt (LQ)')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZM', N'SchedAgrt w/Dly Ord.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'LZS', N'SA:Self-bill w/Inv.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'MAKO', N'Dely Order Correctn')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'MV', N'Rental Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'NL', N'Replenishment Dlv.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'OBSS', N'OBSS')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PHAM', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PHAV', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PHOR', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PLPA', N'Pendulum List Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PLPR', N'Pendulum List Ret.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PLPS', N'Pendulum List Cancel')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'POOL', N'Pooling order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'PV', N'Item Proposal')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'QCPL', N'Customer Price List')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'QTLV', N'Request LV/ QTO')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RA', N'Repair Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RAF', N'Stock Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RAG', N'Stock Information')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RAS', N'Repairs / Service')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RE', N'Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RE2', N'Advanced Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RK', N'Invoice Correct. Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RM', N'Delvy Order Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RTTC', N'SPE Return to Cust.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RTTR', N'SPE Return Over.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RXE', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RXI', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'RZ', N'Returns Sched.Agrmnt')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'SO', N'Rush Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'SOR', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'STAT', N'Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TA', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TAF', N'Standard Order (FPl)')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TALS', N'order lump sum')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TALV', N'order unit')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TAM', N'Delivery Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TAV', N'Standard Order (VMI)')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TBSS', N'Entry of Srvc Prfrmd')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TSA', N'Telephone Sales')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TXE', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'TXI', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'UPRR', N'Used Parts Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'UUPR', N'New Parts Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VBOS', N'Matl-Rel. Value Cont')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VLAF', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VLAG', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VLRE', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VLTA', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'VSH1', N'Version Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WA', N'Rel. to Value Contr.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WK1', N'Value Contract- Gen.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WK2', N'Matl-rel. Value Cont')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WL', N'')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WMPP', N'WM Prod.Supply')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'WV', N'Service and Maint.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'Y2', N'Order W/O Charge')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBC1', N'SP: SD-Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBC2', N'SP: SD-Contr w BillP')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBC3', N'SP: PS-Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBDR', N'SP: Debit Memo Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBFD', N'Deliv.Free of Chg Ex')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBG0', N'Return pack./empties')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBII', N'Invoice Increase Req')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBKA', N'Consignment Pick-up')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBMO', N'MTO Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBMQ', N'MTO Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBO1', N'SP: SD-Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBQ1', N'SP: Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBR1', N'SP: Repairs/Service')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YBRE', N'RMA Request')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YCR2', N'CMR Advanced Return')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YD1A', N'BP Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YDAF', N'BP Inquiry')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YDDR', N'Debit Memo Req.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YDO1', N'BP DM ETO Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YDRE', N'BLE Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YIAG', N'Quotation')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YILZ', N'Sched. Agr. w/ Rel.')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YIMT', N'StandardOrder-Config')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YIOR', N'Standard Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YISC', N'Service Contract')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YRE2', N'BLE Advanced Returns')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSDB', N'SP: Draft Bill')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSDP', N'SP: Debit Me Req PS')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSDR', N'SP: Debit Me Req Ext')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSO1', N'SP: Consulting Order')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSR1', N'SP: Repairs free oc')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'YSR2', N'SP: Order ReplaceMat')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'ZKB', N'Consignmnt Fill-up 2')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'ZKE', N'Consignment Issue 2')
GO
INSERT [dbo].[ORDER_TYPES] ([OrderType], [Description]) VALUES (N'ZOR', N'Standard Order')
GO

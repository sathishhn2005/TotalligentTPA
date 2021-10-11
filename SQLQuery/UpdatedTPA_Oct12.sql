USE [Totalligent]
GO

USE [Totalligent]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_HIV_AIDS]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_Sucide]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PandemicEpidemicCondition]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_IntentionalSelfInflicted]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_AviationExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_HazardousSportsExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_CriminalActContent]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_AtomicBiologicalAndCNE]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_WarExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_CriticalIllness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_TerminalIllness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PassiveWarRisk]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_RepatriationBenefit]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_TTDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_TTDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_TTD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PPDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PPDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PPD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PTDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PTDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_PTD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] DROP CONSTRAINT [df_AccidentalDeath]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Updat__3A6CA48E]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Updat__39788055]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Creat__38845C1C]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Creat__379037E3]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Broke__369C13AA]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Broke__35A7EF71]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__34B3CB38]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__VATon__33BFA6FF]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Premi__32CB82C6]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Premi__31D75E8D]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Annua__30E33A54]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Estim__2FEF161B]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__2EFAF1E2]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__AMILo__2E06CDA9]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RIPre__2D12A970]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RIRet__2B2A60FE]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RIRat__2A363CC5]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RI3in__2942188C]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RI2in__284DF453]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RI1in__2759D01A]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__RICou__2665ABE1]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Broke__257187A8]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Broke__247D636F]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__23893F36]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Polic__22951AFD]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Insur__21A0F6C4]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Clien__20ACD28B]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__FCL__1FB8AE52]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__AgeLi__1EC48A19]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__AgeLi__1DD065E0]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__AgeLi__1CDC41A7]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__SumAs__1BE81D6E]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Eligi__1AF3F935]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Polic__19FFD4FC]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__190BB0C3]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__18178C8A]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__17236851]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Total__162F4418]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Categ__153B1FDF]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Perio__1446FBA6]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Branc__1352D76D]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__IFSCC__125EB334]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__BankN__116A8EFB]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__KYCDe__10766AC2]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__City__0F824689]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Addre__0E8E2250]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Juris__0D99FE17]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Scope__0CA5D9DE]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Clien__0BB1B5A5]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Insur__0ABD916C]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Polic__09C96D33]
GO
ALTER TABLE [dbo].[Quotation] DROP CONSTRAINT [DF__Quotation__Statu__08D548FA]
GO
/****** Object:  Table [dbo].[QuotationCoverageDetails]    Script Date: 10/12/2021 2:36:40 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuotationCoverageDetails]') AND type in (N'U'))
DROP TABLE [dbo].[QuotationCoverageDetails]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 10/12/2021 2:36:40 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quotation]') AND type in (N'U'))
DROP TABLE [dbo].[Quotation]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 10/12/2021 2:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[QuotationId] [bigint] IDENTITY(1,1) NOT NULL,
	[DraftNo] [nvarchar](100) NULL,
	[Status] [nvarchar](20) NULL,
	[PolicyNo] [nvarchar](80) NULL,
	[InsuranceCompanyName] [nvarchar](100) NULL,
	[ICMId] [bigint] NULL,
	[ClientCompanyName] [nvarchar](100) NULL,
	[ClientCompanyCode] [nvarchar](100) NULL,
	[ClientCompanyMasterId] [bigint] NULL,
	[ScopeofCoverage] [nvarchar](100) NULL,
	[Jurisdiction] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[KYCDetails] [nvarchar](100) NULL,
	[BankName] [nvarchar](100) NULL,
	[IFSCCode] [nvarchar](100) NULL,
	[Branch] [nvarchar](100) NULL,
	[PeriodofInsurance] [datetime] NULL,
	[Category] [nvarchar](100) NULL,
	[TotalEmployees] [int] NULL,
	[TotalDependents] [int] NULL,
	[TotalSpousedependents] [int] NULL,
	[TotalChilddependents] [int] NULL,
	[PolicyCurrency] [bigint] NULL,
	[EligibilityCriteria] [nvarchar](100) NULL,
	[SumAssured_SA] [decimal](18, 3) NULL,
	[AgeLimitforEmployees] [int] NULL,
	[AgeLimitforDependentSpouse] [int] NULL,
	[AgeLimitforDependentChild] [int] NULL,
	[FCL] [bigint] NULL,
	[ClientPremium] [decimal](18, 3) NULL,
	[InsuranceLevy] [decimal](18, 3) NULL,
	[PolicyFee] [decimal](18, 3) NULL,
	[TotalPremium] [decimal](18, 3) NULL,
	[BrokerName] [nvarchar](100) NULL,
	[Brokerage] [decimal](18, 3) NULL,
	[RICount] [decimal](18, 3) NULL,
	[RI1in_Percentage] [nvarchar](100) NULL,
	[RI2in_Percentage] [nvarchar](100) NULL,
	[RI3in_Percentage] [nvarchar](100) NULL,
	[RIRate] [nvarchar](100) NULL,
	[RIRetension] [nvarchar](100) NULL,
	[RIPremium] [decimal](18, 3) NULL,
	[AMILoading] [decimal](18, 3) NULL,
	[TotalEmployeescount] [int] NULL,
	[EstimatedAnnualWages] [decimal](18, 3) NULL,
	[AnnualRate] [nvarchar](100) NULL,
	[Premium_EAW_Rate] [nvarchar](100) NULL,
	[Premium_Incl_levy_PolFeeRO] [decimal](18, 3) NULL,
	[VATonWCpremium] [decimal](18, 3) NULL,
	[TotalPremiumInclVAT] [decimal](18, 3) NULL,
	[BrokerPercentage] [nvarchar](100) NULL,
	[BrokerAmount] [decimal](18, 3) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[Premium_TypeofSumAssured] [nvarchar](50) NULL,
	[Premium_SumAssured] [decimal](18, 2) NULL,
	[Premium_Salary] [decimal](18, 2) NULL,
	[Premium_FCL] [decimal](18, 2) NULL,
	[Premium_ClientRate] [decimal](18, 2) NULL,
	[Premium_VariableSADetails] [nvarchar](max) NULL,
	[WLDraftNo] [nvarchar](100) NULL,
	[WLPolicyNo] [nvarchar](100) NULL,
	[WCId] [int] NULL,
	[AMIRetension] [decimal](18, 2) NULL,
	[Premium_VariableNetPremium] [decimal](18, 3) NULL,
	[Premium_VariableLevy] [decimal](18, 3) NULL,
	[Premium_VariablePolicyFee1_RO] [decimal](18, 3) NULL,
	[Premium_VariableGrossPremium] [decimal](18, 3) NULL,
	[Premium_GrossPremium] [decimal](18, 3) NULL,
	[PeriodofInsuranceEndDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationCoverageDetails]    Script Date: 10/12/2021 2:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationCoverageDetails](
	[QuotationCoverageDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[QuotationID] [bigint] NULL,
	[DeathCoverType] [nvarchar](10) NULL,
	[DeathCoverAnnualLimit] [nvarchar](50) NULL,
	[DeathCoverSumAssuredAmount] [decimal](18, 2) NULL,
	[DeathCoverSumAssuredNoOfTimes] [int] NULL,
	[DeathCoverFCL] [decimal](18, 2) NULL,
	[AccidentalDeath] [nvarchar](10) NULL,
	[AccidentalAnnualLimit] [nvarchar](50) NULL,
	[AccidentalSumAssuredAmount] [decimal](18, 2) NULL,
	[AccidentalSumAssuredNoOfTimes] [int] NULL,
	[AccidentalFCL] [decimal](18, 2) NULL,
	[PTD] [nvarchar](10) NULL,
	[PTDAccident] [nvarchar](10) NULL,
	[PTDSickness] [nvarchar](10) NULL,
	[PTDCoverageLimit] [decimal](18, 2) NULL,
	[PTDMaximumLimit] [decimal](18, 2) NULL,
	[PTDWaitingYears] [int] NULL,
	[PPD] [nvarchar](10) NULL,
	[PPDAccident] [nvarchar](10) NULL,
	[PPDSickness] [nvarchar](10) NULL,
	[PPDCoverageLimit] [decimal](18, 2) NULL,
	[PPDMaximumLimit] [decimal](18, 2) NULL,
	[PPDWaitingYears] [int] NULL,
	[TTD] [nvarchar](10) NULL,
	[TTDAccident] [nvarchar](10) NULL,
	[TTDSickness] [nvarchar](10) NULL,
	[TTDCoverageLimit] [decimal](18, 2) NULL,
	[TTDMaximumLimit] [decimal](18, 2) NULL,
	[TTDWaitingYears] [int] NULL,
	[RepatriationBenefit] [nvarchar](10) NULL,
	[RBCoverageLimit] [decimal](18, 2) NULL,
	[PassiveWarRisk] [nvarchar](10) NULL,
	[PWRCoverageLimit] [decimal](18, 2) NULL,
	[TerminalIllness] [nvarchar](10) NULL,
	[TLCoverageLimit] [decimal](18, 2) NULL,
	[TLMaximumLimit] [decimal](18, 2) NULL,
	[TLWaitingYears] [int] NULL,
	[CriticalIllness] [nvarchar](10) NULL,
	[CLCoverageLimit] [decimal](18, 2) NULL,
	[CLMaximumLimit] [decimal](18, 2) NULL,
	[CLWaitingYears] [int] NULL,
	[OtherAdditionalCover] [nvarchar](max) NULL,
	[WarExclusion] [nvarchar](10) NULL,
	[WECoverageLimit] [decimal](18, 2) NULL,
	[WEMaximumLimit] [decimal](18, 2) NULL,
	[WEWaitingYears] [int] NULL,
	[AtomicBiologicalAndCNE] [nvarchar](10) NULL,
	[ABACNECoverageLimit] [decimal](18, 2) NULL,
	[ABACNEMaximumLimit] [decimal](18, 2) NULL,
	[ABACNEWaitingYears] [int] NULL,
	[CriminalActContent] [nvarchar](10) NULL,
	[CACCoverageLimit] [decimal](18, 2) NULL,
	[CACNEMaximumLimit] [decimal](18, 2) NULL,
	[CACNEWaitingYears] [int] NULL,
	[HazardousSportsExclusion] [nvarchar](10) NULL,
	[HSECoverageLimit] [decimal](18, 2) NULL,
	[HSEMaximumLimit] [decimal](18, 2) NULL,
	[HSEWaitingYears] [int] NULL,
	[AviationExclusion] [nvarchar](10) NULL,
	[AECoverageLimit] [decimal](18, 2) NULL,
	[AEMaximumLimit] [decimal](18, 2) NULL,
	[AEEWaitingYears] [int] NULL,
	[IntentionalSelfInflicted] [nvarchar](10) NULL,
	[ISSASCoverageLimit] [decimal](18, 2) NULL,
	[ISSASMaximumLimit] [decimal](18, 2) NULL,
	[ISSASWaitingYears] [int] NULL,
	[PandemicEpidemicCondition] [nvarchar](10) NULL,
	[PECCoverageLimit] [decimal](18, 2) NULL,
	[PECMaximumLimit] [decimal](18, 2) NULL,
	[PECWaitingYears] [int] NULL,
	[Sucide] [nvarchar](10) NULL,
	[SECCoverageLimit] [decimal](18, 2) NULL,
	[SEMaximumLimit] [decimal](18, 2) NULL,
	[SEWaitingYears] [int] NULL,
	[HIV_AIDS] [nvarchar](10) NULL,
	[HIVCoverageLimit] [decimal](18, 2) NULL,
	[HIVMaximumLimit] [decimal](18, 2) NULL,
	[HIVWaitingYears] [int] NULL,
	[OtherExclusions] [nvarchar](max) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[MofifiedAt] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quotation] ON 
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension], [Premium_VariableNetPremium], [Premium_VariableLevy], [Premium_VariablePolicyFee1_RO], [Premium_VariableGrossPremium], [Premium_GrossPremium], [PeriodofInsuranceEndDate]) VALUES (1, N'D/004/01/21/3301/00001', N'Rejected', N'', N'1', NULL, N'1', N'CL00001', NULL, N'Worldwide', N'SULTANATE OF OMAN', N'chennai', N'chenI', N'\KYC_Files\CMMasterKYCFiles\13092021153911_CM_1.zip', N'AxisBank', N'ISCC000', N'01', CAST(N'2021-10-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.000 AS Decimal(18, 3)), NULL, NULL, CAST(0.000 AS Decimal(18, 3)), NULL, NULL, N'10', CAST(0.000 AS Decimal(18, 3)), N'', CAST(N'2021-10-11T15:26:52.477' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/01/21/2402/00001', NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(755.125 AS Decimal(18, 3)), CAST(N'2022-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension], [Premium_VariableNetPremium], [Premium_VariableLevy], [Premium_VariablePolicyFee1_RO], [Premium_VariableGrossPremium], [Premium_GrossPremium], [PeriodofInsuranceEndDate]) VALUES (19, N'D/004/01/21/3301/000019', N'Pending', N'', N'4', NULL, N'11', N'CL000014', NULL, N'Worldwide', N'SULTANATE OF OMAN', N'Muscat', N'Muscat', N'\KYC_Files\CMMasterKYCFiles\08102021145425_CM_14.zip', N'AxisBank', N'Icfd1234', N'01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, CAST(0.064 AS Decimal(18, 3)), NULL, NULL, N'10', CAST(0.400 AS Decimal(18, 3)), N'', CAST(N'2021-10-12T01:48:35.610' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/01/2402/000019', NULL, 2, NULL, NULL, NULL, NULL, NULL, CAST(1107.050 AS Decimal(18, 3)), NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension], [Premium_VariableNetPremium], [Premium_VariableLevy], [Premium_VariablePolicyFee1_RO], [Premium_VariableGrossPremium], [Premium_GrossPremium], [PeriodofInsuranceEndDate]) VALUES (20, N'D/004/01/21/3301/000020', N'Pending', N'', N'1', NULL, N'2', N'CL00002', NULL, N'Worldwide', N'SULTANATE OF OMAN', N'Muscat', N'Muscat', N'\KYC_Files\CMMasterKYCFiles\08102021145425_CM_14.zip', N'AxisBank', N'Icfd1234', N'01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, CAST(0.064 AS Decimal(18, 3)), NULL, NULL, N'10', CAST(0.400 AS Decimal(18, 3)), N'', CAST(N'2021-10-12T01:50:23.100' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/01/2402/000020', NULL, 2, NULL, NULL, NULL, NULL, NULL, CAST(1107.050 AS Decimal(18, 3)), NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension], [Premium_VariableNetPremium], [Premium_VariableLevy], [Premium_VariablePolicyFee1_RO], [Premium_VariableGrossPremium], [Premium_GrossPremium], [PeriodofInsuranceEndDate]) VALUES (21, N'D/004/01/21/3301/000021', N'Approved', N'P/004/01/21/3301/000021', N'1', NULL, N'4', N'CL00004', NULL, N'Worldwide', N'SULTANATE OF OMAN', N'kelam', N'padur', N'\KYC_Files\CMMasterKYCFiles\13092021224332_CM_4.zip', N'AxisBank', N'ISCIKKKK', N'01', CAST(N'2020-09-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.000 AS Decimal(18, 3)), NULL, NULL, CAST(0.000 AS Decimal(18, 3)), NULL, NULL, N'10', CAST(0.000 AS Decimal(18, 3)), N'', CAST(N'2021-10-12T01:50:51.810' AS DateTime), N'', CAST(N'2021-10-12T01:52:39.487' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/01/2402/000021', N'P/004/01/21/2402/000021', 1, NULL, NULL, NULL, NULL, NULL, CAST(1107.050 AS Decimal(18, 3)), CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension], [Premium_VariableNetPremium], [Premium_VariableLevy], [Premium_VariablePolicyFee1_RO], [Premium_VariableGrossPremium], [Premium_GrossPremium], [PeriodofInsuranceEndDate]) VALUES (22, N'D/004/01/21/3301/000022', N'Pending', N'', N'4', NULL, N'14', N'CL000014', NULL, N'Worldwide', N'SULTANATE OF OMAN', N'Muscat', N'Muscat', N'\KYC_Files\CMMasterKYCFiles\08102021145425_CM_14.zip', N'AxisBank', N'Icfd1234', N'01', CAST(N'2021-04-15T00:00:00.000' AS DateTime), NULL, 1000, 100, 100, 1000, NULL, N'2000', CAST(200000.000 AS Decimal(18, 3)), 45, 25, 35, 100, NULL, NULL, NULL, NULL, N'Test agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(0.000 AS Decimal(18, 3)), NULL, NULL, N'10', CAST(0.000 AS Decimal(18, 3)), N'', CAST(N'2021-10-12T02:23:25.490' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/01/2402/000022', NULL, 2, NULL, NULL, NULL, NULL, NULL, CAST(1107.050 AS Decimal(18, 3)), CAST(N'2022-04-07T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Quotation] OFF
GO
SET IDENTITY_INSERT [dbo].[QuotationCoverageDetails] ON 
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (1, 1, N'DNC', N'Variable', CAST(100.00 AS Decimal(18, 2)), 1, CAST(200000.00 AS Decimal(18, 2)), N'Y', N'Variable', CAST(1000.00 AS Decimal(18, 2)), 1, CAST(1000.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-10-11T15:26:52.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (16, 19, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'Y', N'Fixed', CAST(1000.00 AS Decimal(18, 2)), 0, CAST(1000.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-10-12T01:48:35.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (17, 20, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'Y', N'Fixed', CAST(1000.00 AS Decimal(18, 2)), 0, CAST(1000.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-10-12T01:50:23.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (18, 21, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'N', NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-10-12T01:50:51.813' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (19, 22, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'Y', N'Fixed', CAST(1000.00 AS Decimal(18, 2)), 0, CAST(1000.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-10-12T02:23:25.500' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[QuotationCoverageDetails] OFF
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [PolicyNo]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [InsuranceCompanyName]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [ClientCompanyName]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [ScopeofCoverage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [Jurisdiction]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [Address]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [City]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [KYCDetails]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [BankName]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [IFSCCode]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [Branch]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('01-01-1900') FOR [PeriodofInsurance]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [Category]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [TotalEmployees]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [TotalDependents]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [TotalSpousedependents]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [TotalChilddependents]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [PolicyCurrency]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [EligibilityCriteria]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [SumAssured_SA]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [AgeLimitforEmployees]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [AgeLimitforDependentSpouse]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [AgeLimitforDependentChild]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [FCL]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [ClientPremium]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [InsuranceLevy]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [PolicyFee]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [TotalPremium]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [BrokerName]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [Brokerage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [RICount]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [RI1in_Percentage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [RI2in_Percentage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [RI3in_Percentage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [RIRate]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [RIRetension]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [RIPremium]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [AMILoading]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0)) FOR [TotalEmployeescount]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [EstimatedAnnualWages]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [AnnualRate]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [Premium_EAW_Rate]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [Premium_Incl_levy_PolFeeRO]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [VATonWCpremium]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [TotalPremiumInclVAT]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [BrokerPercentage]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ((0.000)) FOR [BrokerAmount]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('01-01-1900') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('01-01-1900') FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_AccidentalDeath]  DEFAULT ('N') FOR [AccidentalDeath]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PTD]  DEFAULT ('N') FOR [PTD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PTDAccident]  DEFAULT ('N') FOR [PTDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PTDSickness]  DEFAULT ('N') FOR [PTDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PPD]  DEFAULT ('N') FOR [PPD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PPDAccident]  DEFAULT ('N') FOR [PPDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PPDSickness]  DEFAULT ('N') FOR [PPDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_TTD]  DEFAULT ('N') FOR [TTD]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_TTDAccident]  DEFAULT ('N') FOR [TTDAccident]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_TTDSickness]  DEFAULT ('N') FOR [TTDSickness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_RepatriationBenefit]  DEFAULT ('N') FOR [RepatriationBenefit]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PassiveWarRisk]  DEFAULT ('N') FOR [PassiveWarRisk]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_TerminalIllness]  DEFAULT ('N') FOR [TerminalIllness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_CriticalIllness]  DEFAULT ('N') FOR [CriticalIllness]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_WarExclusion]  DEFAULT ('N') FOR [WarExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_AtomicBiologicalAndCNE]  DEFAULT ('N') FOR [AtomicBiologicalAndCNE]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_CriminalActContent]  DEFAULT ('N') FOR [CriminalActContent]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_HazardousSportsExclusion]  DEFAULT ('N') FOR [HazardousSportsExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_AviationExclusion]  DEFAULT ('N') FOR [AviationExclusion]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_IntentionalSelfInflicted]  DEFAULT ('N') FOR [IntentionalSelfInflicted]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_PandemicEpidemicCondition]  DEFAULT ('N') FOR [PandemicEpidemicCondition]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_Sucide]  DEFAULT ('N') FOR [Sucide]
GO
ALTER TABLE [dbo].[QuotationCoverageDetails] ADD  CONSTRAINT [df_HIV_AIDS]  DEFAULT ('N') FOR [HIV_AIDS]
GO

/****** Object:  StoredProcedure [dbo].[pDMLQuotationMaster]    Script Date: 10/12/2021 2:32:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[pDMLQuotationMaster] ( 
@Action Nvarchar(200),
@JParamValQuotationDetails Nvarchar(MAX),
@JParamValCoverageDetails  Nvarchar(MAX)
)
AS
  BEGIN
    DECLARE @dno    nvarchar(150),
      @companyCode  nvarchar(20),
      @WLDno        nvarchar(150),
      @ClientCompId nvarchar(30),
      @InsCompId    nvarchar(40),
      @ReturnRIid   bigint,
	  @Year varchar(50)
	  set @Year=(select ( YEAR( GETDATE() ) % 100 ))
	
    SELECT *
    INTO   #TempQuotationCoverage
    FROM   OPENJSON (@JParamValCoverageDetails, N'$') WITH ( [DeathCoverType] [nvarchar](10) N'$.DeathCoverType', [DeathCoverAnnualLimit] [nvarchar](50) N'$.DeathCoverAnnualLimit', [DeathCoverSumAssuredAmount] [decimal](18, 2) N'$.DeathCoverSumAssuredAmount', [DeathCoverSumAssuredNoOfTimes] [int] N'$.DeathCoverSumAssuredNoOfTimes', [DeathCoverFCL] [decimal](18, 2) N'$.DeathCoverFCL', [AccidentalDeath] [nvarchar](10) N'$.AccidentalDeath', [AccidentalAnnualLimit] [nvarchar](50) N'$.AccidentalAnnualLimit', [AccidentalSumAssuredAmount] [decimal](18, 2) N'$.AccidentalSumAssuredAmount', [AccidentalSumAssuredNoOfTimes] [int] N'$.AccidentalSumAssuredNoOfTimes', [AccidentalFCL] [decimal](18, 2) N'$.AccidentalFCL', [PTD] [nvarchar](10) N'$.PTD', [PTDAccident] [nvarchar](10) N'$.PTDAccident', [PTDSickness] [nvarchar](10) N'$.PTDSickness', [PTDCoverageLimit] [decimal](18, 2) N'$.PTDCoverageLimit', [PTDMaximumLimit] [decimal](18, 2) N'$.PTDMaximumLimit', [PTDWaitingYears] [int] N'$.PTDWaitingYears', [PPD] [nvarchar](10) N'$.PPD', [PPDAccident] [nvarchar](10) N'$.PPDAccident', [PPDSickness] [nvarchar](10) N'$.PPDSickness', [PPDCoverageLimit] [decimal](18, 2) N'$.PPDCoverageLimit', [PPDMaximumLimit] [decimal](18, 2) N'$.PPDMaximumLimit', [PPDWaitingYears] [int] N'$.PPDWaitingYears', [TTD] [nvarchar](10) N'$.TTD', [TTDAccident] [nvarchar](10) N'$.TTDAccident', [TTDSickness] [nvarchar](10) N'$.TTDSickness', [TTDCoverageLimit] [decimal](18, 2) N'$.TTDCoverageLimit', [TTDMaximumLimit] [decimal](18, 2) N'$.TTDMaximumLimit', [TTDWaitingYears] [int] N'$.TTDWaitingYears', [RepatriationBenefit] [nvarchar](10) N'$.RepatriationBenefit', [RBCoverageLimit] [decimal](18, 2) N'$.RBCoverageLimit', [PassiveWarRisk] [nvarchar](10) N'$.PassiveWarRisk', [PWRCoverageLimit] [decimal](18, 2) N'$.PWRCoverageLimit', [TerminalIllness] [nvarchar](10) N'$.TerminalIllness', [TLCoverageLimit] [decimal](18, 2) N'$.TLCoverageLimit', [TLMaximumLimit] [decimal](18, 2) N'$.TLMaximumLimit', [TLWaitingYears] [int] N'$.TLWaitingYears', [CriticalIllness] [nvarchar](10) N'$.CriticalIllness', [CLCoverageLimit] [decimal](18, 2) N'$.CLCoverageLimit', [CLMaximumLimit] [decimal](18, 2) N'$.CLMaximumLimit', [CLWaitingYears] [int] N'$.CLWaitingYears', [OtherAdditionalCover] [nvarchar](MAX) N'$.OtherAdditionalCover', [WarExclusion] [nvarchar](10) N'$.WarExclusion', [WECoverageLimit] [decimal](18, 2) N'$.WECoverageLimit', [WEMaximumLimit] [decimal](18, 2) N'$.WEMaximumLimit', [WEWaitingYears] [int] N'$.WEWaitingYears', [AtomicBiologicalAndCNE] [nvarchar](10) N'$.AtomicBiologicalAndCNE', [ABACNECoverageLimit] [decimal](18, 2) N'$.ABACNECoverageLimit', [ABACNEMaximumLimit] [decimal](18, 2) N'$.ABACNEMaximumLimit', [ABACNEWaitingYears] [int] N'$.ABACNEWaitingYears', [CriminalActContent] [nvarchar](10) N'$.CriminalActContent', [CACCoverageLimit] [decimal](18, 2) N'$.CACCoverageLimit', [CACNEMaximumLimit] [decimal](18, 2) N'$.CACNEMaximumLimit', [CACNEWaitingYears] [int] N'$.CACNEWaitingYears', [HazardousSportsExclusion] [nvarchar](10) N'$.HazardousSportsExclusion', [HSECoverageLimit] [decimal](18, 2) N'$.HSECoverageLimit', [HSEMaximumLimit] [decimal](18, 2) N'$.HSEMaximumLimit', [HSEWaitingYears] [int] N'$.HSEWaitingYears', [AviationExclusion] [nvarchar](10) N'$.AviationExclusion', [AECoverageLimit] [decimal](18, 2) N'$.AECoverageLimit', [AEMaximumLimit] [decimal](18, 2) N'$.AEMaximumLimit', [AEEWaitingYears] [int] N'$.AEEWaitingYears', [IntentionalSelfInflicted] [nvarchar](10) N'$.IntentionalSelfInflicted', [ISSASCoverageLimit] [decimal](18, 2) N'$.ISSASCoverageLimit', [ISSASMaximumLimit] [decimal](18, 2) N'$.ISSASMaximumLimit', [ISSASWaitingYears] [int] N'$.ISSASWaitingYears', [PandemicEpidemicCondition] [nvarchar](10) N'$.PandemicEpidemicCondition', [PECCoverageLimit] [decimal](18, 2) N'$.PECCoverageLimit', [PECMaximumLimit] [decimal](18, 2) N'$.PECMaximumLimit', [PECWaitingYears] [int] N'$.PECWaitingYears', [Sucide] [nvarchar](10) N'$.Sucide', [SECCoverageLimit] [decimal](18, 2) N'$.SECCoverageLimit', [SEMaximumLimit] [decimal](18, 2) N'$.SEMaximumLimit', [SEWaitingYears] [int] N'$.SEWaitingYears', [HIV_AIDS] [nvarchar](10) N'$.HIV_AIDS', [HIVCoverageLimit] [decimal](18, 2) N'$.HIVCoverageLimit', [HIVMaximumLimit] [decimal](18, 2) N'$.HIVMaximumLimit', [HIVWaitingYears] [int] N'$.HIVWaitingYears', [OtherExclusions] [nvarchar](MAX) N'$.OtherExclusions', [CreatedBy] [bigint] N'$.CreatedBy' ) AS JsonQuotationCoverage;
    
    SELECT *
    INTO   #TempQuotationMaster
    FROM   OPENJSON (@JParamValQuotationDetails, N'$') WITH ( Premium_GrossPremium DECIMAL(18,3) N'$.Premium_GrossPremium', WCId int N'$.WCId', InsuranceCompanyName nvarchar(100) N'$.InsuranceCompanyName', ClientCompanyName nvarchar(100) N'$.ClientCompanyName', ScopeofCoverage nvarchar(100) N'$.ScopeofCoverage', Jurisdiction nvarchar(100) N'$.Jurisdiction', QuotationId bigint N'$.QuotationId', Address nvarchar(100) N'$.Address', City nvarchar(100) N'$.City', KYCDetails nvarchar(100) N'$.KYCDetails', BankName nvarchar(100) N'$.BankName', IFSCCode nvarchar(100) N'$.IFSCCode', Branch nvarchar(100) N'$.Branch', PeriodofInsurance DATETIME N'$.PeriodofInsurance',PeriodofInsuranceEndDate DATETIME N'$.PeriodofInsuranceEndDate', Category nvarchar(100) N'$.Category', TotalEmployees INT N'$.TotalEmployees', TotalDependents INT N'$.TotalDependents', TotalSpousedependents INT N'$.TotalSpousedependents', TotalChilddependents INT N'$.TotalChilddependents', PolicyCurrency Bigint N'$.PolicyCurrency', EligibilityCriteria nvarchar(100) N'$.EligibilityCriteria', SumAssured_SA DECIMAL(18,3) N'$.SumAssured_SA', AgeLimitforEmployees INT N'$.AgeLimitforEmployees', AgeLimitforDependentSpouse INT N'$.AgeLimitforDependentSpouse', AgeLimitforDependentChild INT N'$.AgeLimitforDependentChild', FCL Bigint N'$.FCL', ClientPremium DECIMAL(18,3) N'$.ClientPremium', InsuranceLevy DECIMAL(18,3) N'$.InsuranceLevy', PolicyFee DECIMAL(18,3) N'$.PolicyFee', TotalPremium DECIMAL(18,3) N'$.TotalPremium', BrokerName nvarchar(100) N'$.BrokerName', Brokerage DECIMAL(18,3) N'$.Brokerage', RICount DECIMAL(18,3) N'$.RICount', RI1in_Percentage nvarchar(100) N'$.RI1in_Percentage', RI2in_Percentage nvarchar(100) N'$.RI2in_Percentage', RI3in_Percentage nvarchar(100) N'$.RI3in_Percentage', RIRate nvarchar(100) N'$.RIRate', RIRetension nvarchar(100) N'$.RIRetension', AMIRetension nvarchar(100) N'$.AMIRetension', RIPremium DECIMAL(18,3) N'$.RIPremium', AMILoading DECIMAL(18,3) N'$.AMILoading', TotalEmployeescount INT N'$.TotalEmployeescount', EstimatedAnnualWages DECIMAL(18,3) N'$.EstimatedAnnualWages', AnnualRate nvarchar(100) N'$.AnnualRate', Premium_EAW_Rate nvarchar(100) N'$.Premium_EAW_Rate', Premium_Incl_levy_PolFeeRO DECIMAL(18,3) N'$.Premium_Incl_levy_PolFeeRO', VATonWCpremium DECIMAL(18,3) N'$.VATonWCpremium', TotalPremiumInclVAT DECIMAL(18,3) N'$.TotalPremiumInclVAT', BrokerPercentage nvarchar(100) N'$.BrokerPercentage', BrokerAmount DECIMAL(18,3) N'$.BrokerAmount', Premium_TypeofSumAssured nvarchar(10) N'$.Premium_TypeofSumAssured', Premium_SumAssured DECIMAL(18,3) N'$.Premium_SumAssured', Premium_Salary DECIMAL(18,3) N'$.Premium_Salary', Premium_FCL DECIMAL(18,3) N'$.Premium_FCL', Premium_ClientRate DECIMAL(18,3) N'$.Premium_ClientRate', Premium_VariableSADetails nvarchar(MAX) N'$.Premium_VariableSADetails' ) AS JsonQuotationMaster;
    
	--select * from #TempQuotationMaster
	--select * From #TempQuotationCoverage
	--return;
    SET @ClientCompId=
    (
           SELECT ClientCompanyName
           FROM   #TempQuotationMaster)
    SET @InsCompId=
    (
           SELECT InsuranceCompanyName
           FROM   #TempQuotationMaster)
		  
    IF(@Action='AddUpdateQuotationMaster')
    BEGIN
      --AS ('D'+'/'+ right(ClientCompanyName+'/'+Branch+'/'+convert([nvarchar](16),datepart(year,getdate()))+'/'+'3301/'+'0000'+CONVERT([nvarchar](16),[QuotationId]),(16))) ,
      SET @companyCode=
      (
             SELECT ClientCompCode
             FROM   ClientCompanyMaster
             WHERE  ClientCompanyMasterId=
                    (
                           SELECT ClientCompanyName
                           FROM   #TempQuotationMaster))

      IF NOT EXISTS
      (
             SELECT 1
             FROM   Quotation
             WHERE  ClientCompanyName=@ClientCompId
             AND    InsuranceCompanyName=@InsCompId)
      BEGIN
	  
        INSERT INTO Quotation
                    (
                                InsuranceCompanyName,
                                ClientCompanyName,
                                ClientCompanyCode,
                                ScopeofCoverage,
                                Jurisdiction,
                                Address,
                                City,
                                KYCDetails,
                                BankName,
                                IFSCCode,
                                Branch,
                                PeriodofInsurance,
								PeriodofInsuranceEndDate,
                                Category,
                                TotalEmployees,
                                TotalDependents,
                                TotalSpousedependents,
                                TotalChilddependents,
                                PolicyCurrency,
                                EligibilityCriteria,
                                SumAssured_SA,
                                AgeLimitforEmployees,
                                AgeLimitforDependentSpouse,
                                AgeLimitforDependentChild,
                                FCL,
                                ClientPremium,
                                InsuranceLevy,
                                PolicyFee,
                                TotalPremium,
                                BrokerName,
                                Brokerage,
                                RICount,
								RI1in_Percentage,
                                RI2in_Percentage,
                                RI3in_Percentage,
                                RIRate,
                                RIRetension,
                                AMIRetension,
                                RIPremium,
                                AMILoading,
								WCId,
                                TotalEmployeescount,
                                EstimatedAnnualWages,
                                AnnualRate,
                                Premium_EAW_Rate,
                                Premium_Incl_levy_PolFeeRO,
                                VATonWCpremium,
                                TotalPremiumInclVAT,
                                BrokerPercentage,
                                BrokerAmount,
                                Status,
                                Premium_TypeofSumAssured,
                                Premium_SumAssured,
                                Premium_Salary,
                                Premium_FCL,
                                Premium_ClientRate,
                                Premium_VariableSADetails,
								CreatedAt,
								Premium_GrossPremium
                    )
        SELECT InsuranceCompanyName,
               ClientCompanyName,
               @companyCode,
              isnull(ScopeofCoverage,'Worldwide'),
              isnull(Jurisdiction,'SULTANATE OF OMAN'),
               Address,
               City,
               KYCDetails,
               BankName,
               IFSCCode,
              isnull(Branch,'01') Branch,
               PeriodofInsurance,
			   PeriodofInsuranceEndDate,
               Category,
               TotalEmployees,
               TotalDependents,
               TotalSpousedependents,
               TotalChilddependents,
               PolicyCurrency,
               EligibilityCriteria,
               SumAssured_SA,
               AgeLimitforEmployees,
               AgeLimitforDependentSpouse,
               AgeLimitforDependentChild,
               FCL,
               ClientPremium,
               InsuranceLevy,
               PolicyFee,
               TotalPremium,
               BrokerName,
               Brokerage,
               RICount,
               RI1in_Percentage,
               RI2in_Percentage,
               RI3in_Percentage,
               RIRate,
               RIRetension,
               AMIRetension,
               RIPremium,
               AMILoading,
			   WCId,
               TotalEmployeescount,
               EstimatedAnnualWages,
               AnnualRate,
               Premium_EAW_Rate,
               Premium_Incl_levy_PolFeeRO,
               VATonWCpremium,
               TotalPremiumInclVAT,
               BrokerPercentage,
               BrokerAmount,
               'Pending',
               Premium_TypeofSumAssured,
               Premium_SumAssured,
               Premium_Salary,
               Premium_FCL,
               Premium_ClientRate,
               Premium_VariableSADetails,
			   GETDATE(),
			   Premium_GrossPremium
        FROM   #TempQuotationMaster
        set @ReturnRIid = @@IDENTITY
		
        SET @WLDno=
        (
               SELECT 'D/004/'+Branch+'/'+'2402/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid) as DraftNo
               FROM   Quotation
               WHERE  QuotationId=@ReturnRIid)
			   --print 1
        SET @dno=
        (
               SELECT 'D/004/'+Branch+'/'+@Year+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid) WLDraftNo
               FROM   Quotation
               WHERE  QuotationId=@ReturnRIid)
			   
        UPDATE Quotation
        SET    DraftNo=@dno,
               WLDraftNo=@WLDno
        WHERE  QuotationId=@ReturnRIid
        INSERT INTO QuotationCoverageDetails
                    (
                                QuotationID,
                                DeathCoverType,
                                DeathCoverAnnualLimit,
                                DeathCoverSumAssuredAmount,
                                DeathCoverSumAssuredNoOfTimes,
                                DeathCoverFCL,
                                AccidentalDeath,
                                AccidentalAnnualLimit,
                                AccidentalSumAssuredAmount,
                                AccidentalSumAssuredNoOfTimes,
                                AccidentalFCL,
                                PTD,
                                PTDAccident,
                                PTDSickness,
                                PTDCoverageLimit,
                                PTDMaximumLimit,
                                PTDWaitingYears,
                                PPD,
                                PPDAccident,
                                PPDSickness,
                                PPDCoverageLimit,
                                PPDMaximumLimit,
                                PPDWaitingYears,
                                TTD,
                                TTDAccident,
                                TTDSickness,
                                TTDCoverageLimit,
                                TTDMaximumLimit,
                                TTDWaitingYears,
                                RepatriationBenefit,
                                RBCoverageLimit,
                                PassiveWarRisk,
                                PWRCoverageLimit,
                                TerminalIllness,
                                TLCoverageLimit,
                                TLMaximumLimit,
                                TLWaitingYears,
                                CriticalIllness,
                                CLCoverageLimit,
                                CLMaximumLimit,
                                CLWaitingYears,
                                OtherAdditionalCover,
                                WarExclusion,
                                WECoverageLimit,
                                WEMaximumLimit,
                                WEWaitingYears,
                                AtomicBiologicalAndCNE,
                                ABACNECoverageLimit,
                                ABACNEMaximumLimit,
                                ABACNEWaitingYears,
                                CriminalActContent,
                                CACCoverageLimit,
                                CACNEMaximumLimit,
                                CACNEWaitingYears,
                                HazardousSportsExclusion,
                                HSECoverageLimit,
                                HSEMaximumLimit,
                                HSEWaitingYears,
                                AviationExclusion,
                                AECoverageLimit,
                                AEMaximumLimit,
                                AEEWaitingYears,
                                IntentionalSelfInflicted,
                                ISSASCoverageLimit,
                                ISSASMaximumLimit,
                                ISSASWaitingYears,
                                PandemicEpidemicCondition,
                                PECCoverageLimit,
                                PECMaximumLimit,
                                PECWaitingYears,
                                Sucide,
                                SECCoverageLimit,
                                SEMaximumLimit,
                                SEWaitingYears,
                                HIV_AIDS,
                                HIVCoverageLimit,
                                HIVMaximumLimit,
                                HIVWaitingYears,
                                OtherExclusions,
                                CreatedBy,
                                CreatedAt
                    )
        SELECT @ReturnRIid AS QuotationID,
               DeathCoverType,
               DeathCoverAnnualLimit,
               DeathCoverSumAssuredAmount,
               DeathCoverSumAssuredNoOfTimes,
               DeathCoverFCL,
               ISNULL(AccidentalDeath,'N'),
               AccidentalAnnualLimit,
               AccidentalSumAssuredAmount,
               AccidentalSumAssuredNoOfTimes,
               AccidentalFCL,
               ISNULL(PTD,'N'),
               ISNULL(PTDAccident,'N'),
               ISNULL(PTDSickness,'N'),
               PTDCoverageLimit,
               PTDMaximumLimit,
               PTDWaitingYears,
               ISNULL(PPD,'N'),
               ISNULL(PPDAccident,'N'),
               ISNULL(PPDSickness,'N'),
               PPDCoverageLimit,
               PPDMaximumLimit,
               PPDWaitingYears,
               ISNULL(TTD,'N'),
               ISNULL(TTDAccident,'N'),
               ISNULL(TTDSickness,'N'),
               TTDCoverageLimit,
               TTDMaximumLimit,
               TTDWaitingYears,
               ISNULL(RepatriationBenefit,'N'),
               RBCoverageLimit,
               ISNULL(PassiveWarRisk,'N'),
               PWRCoverageLimit,
               ISNULL(TerminalIllness,'N'),
               TLCoverageLimit,
               TLMaximumLimit,
               TLWaitingYears,
               ISNULL(CriticalIllness,'N'),
               CLCoverageLimit,
               CLMaximumLimit,
               CLWaitingYears,
               OtherAdditionalCover,
               ISNULL(WarExclusion,'N'),
               WECoverageLimit,
               WEMaximumLimit,
               WEWaitingYears,
               ISNULL(AtomicBiologicalAndCNE,'N'),
               ABACNECoverageLimit,
               ABACNEMaximumLimit,
               ABACNEWaitingYears,
               ISNULL(CriminalActContent,'N'),
               CACCoverageLimit,
               CACNEMaximumLimit,
               CACNEWaitingYears,
               ISNULL(HazardousSportsExclusion,'N'),
               HSECoverageLimit,
               HSEMaximumLimit,
               HSEWaitingYears,
               ISNULL(AviationExclusion,'N'),
               AECoverageLimit,
               AEMaximumLimit,
               AEEWaitingYears,
               ISNULL(IntentionalSelfInflicted,'N'),
               ISSASCoverageLimit,
               ISSASMaximumLimit,
               ISSASWaitingYears,
               ISNULL(PandemicEpidemicCondition,'N'),
               PECCoverageLimit,
               PECMaximumLimit,
               PECWaitingYears,
               ISNULL(Sucide,'N'),
               SECCoverageLimit,
               SEMaximumLimit,
               SEWaitingYears,
               ISNULL(HIV_AIDS,'N'),
               HIVCoverageLimit,
               HIVMaximumLimit,
               HIVWaitingYears,
               OtherExclusions,
               CreatedBy,
               Getdate()
        FROM   #TempQuotationCoverage
        SELECT DraftNo,
               WLDraftNo,
               'Quotation Drafted Successfully.!' AS Status
        FROM   Quotation
        WHERE  QuotationId=@ReturnRIid
      END
      ELSE
      BEGIN
        SELECT DraftNo,
               WLDraftNo,
               'Quotation Already Drafted for this Client.!' AS Status
        FROM   Quotation
        WHERE  InsuranceCompanyName=@InsCompId
        AND    ClientCompanyName=@ClientCompId
      END
    END
    IF(@Action='Update')
    BEGIN
      SELECT @ReturnRIid=QuotationId
      FROM   #TempQuotationMaster
	  
      SET @WLDno=
      (
             SELECT 'P/004/'+Branch+'/'+@Year+'/'+'2402/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
             FROM   Quotation
             WHERE  QuotationId=@ReturnRIid)
      SET @dno=
      (
             SELECT 'P/004/'+Branch+'/'+@Year+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
             FROM   Quotation
             WHERE  QuotationId=@ReturnRIid)
      --update Quotation set DraftNo=@dno where QuotationId=@ReturnRIid
	  
      UPDATE Q
      SET        Q.Status='Approved',
                 UpdatedAt=Getdate(),
                 PolicyNo=@dno,
                 WLPolicyNo=@WLDno,
                 InsuranceCompanyName=TRI.InsuranceCompanyName,
                 ClientCompanyName=TRI.ClientCompanyName,
                 Address=TRI.Address,
                 City=TRI.City,
                 KYCDetails=TRI.KYCDetails,
                 BankName=TRI.BankName,
                 IFSCCode=TRI.IFSCCode,
                 Branch=TRI.Branch,
                 PeriodofInsurance=TRI.PeriodofInsurance,
				 PeriodofInsuranceEndDate=TRI.PeriodofInsuranceEndDate,
                 Category=TRI.Category,
                 TotalEmployees=TRI.TotalEmployees,
                 TotalDependents=TRI.TotalDependents,
                 TotalSpousedependents=TRI.TotalSpousedependents,
                 TotalChilddependents=TRI.TotalChilddependents,
                 PolicyCurrency=TRI.PolicyCurrency,
                 EligibilityCriteria=TRI.EligibilityCriteria,
                 SumAssured_SA=TRI.SumAssured_SA,
                 AgeLimitforEmployees=TRI.AgeLimitforEmployees,
                 AgeLimitforDependentSpouse=TRI.AgeLimitforDependentSpouse,
                 AgeLimitforDependentChild=TRI.AgeLimitforDependentChild,
                 FCL=TRI.FCL,
                 ClientPremium=TRI.ClientPremium,
                 InsuranceLevy=TRI.InsuranceLevy,
                 PolicyFee=TRI.PolicyFee,
                 TotalPremium=TRI.TotalPremium,
                 BrokerName=TRI.BrokerName,
                 Brokerage=TRI.Brokerage,
                 RICount=TRI.RICount,
                 RI1in_Percentage=TRI.RI1in_Percentage,
                 RI2in_Percentage=TRI.RI2in_Percentage,
                 RI3in_Percentage=TRI.RI3in_Percentage,
                 RIRate=TRI.RIRate,
                 RIRetension=TRI.RIRetension,
                 AMIRetension=TRI.AMIRetension,
                 RIPremium=TRI.RIPremium,
                 AMILoading=TRI.AMILoading,
                 TotalEmployeescount=TRI.TotalEmployeescount,
                 EstimatedAnnualWages=TRI.EstimatedAnnualWages,
                 AnnualRate=TRI.AnnualRate,
                 Premium_EAW_Rate=TRI.Premium_EAW_Rate,
                 Premium_Incl_levy_PolFeeRO=TRI.Premium_Incl_levy_PolFeeRO,
                 VATonWCpremium=TRI.VATonWCpremium,
                 TotalPremiumInclVAT=TRI.TotalPremiumInclVAT,
                 BrokerPercentage=TRI.BrokerPercentage,
                 BrokerAmount=TRI.BrokerAmount,
                 Premium_TypeofSumAssured=TRI.Premium_TypeofSumAssured,
                 Premium_SumAssured=TRI.Premium_SumAssured,
                 Premium_Salary=TRI.Premium_Salary,
                 Premium_FCL=TRI.Premium_FCL,
                 Premium_ClientRate=TRI.Premium_ClientRate,
                 Premium_VariableSADetails=TRI.Premium_VariableSADetails,
                 WCId=TRI.WCId
				 
      FROM       Quotation Q
      INNER JOIN #TempQuotationMaster TRI
      ON         Q.QuotationId=TRI.QuotationId
	
	  UPDATE QCD
      SET 
		QCD.DeathCoverType=TQC.DeathCoverType,
		QCD.DeathCoverAnnualLimit=TQC.DeathCoverAnnualLimit,
		QCD.DeathCoverSumAssuredAmount=TQC.DeathCoverSumAssuredAmount,
		QCD.DeathCoverSumAssuredNoOfTimes=TQC.DeathCoverSumAssuredNoOfTimes,
		QCD.DeathCoverFCL=TQC.DeathCoverFCL,
		QCD.AccidentalDeath=ISNULL(TQC.AccidentalDeath,'N'),
		QCD.AccidentalAnnualLimit=TQC.AccidentalAnnualLimit,
		QCD.AccidentalSumAssuredAmount=TQC.AccidentalSumAssuredAmount,
		QCD.AccidentalSumAssuredNoOfTimes=TQC.AccidentalSumAssuredNoOfTimes,
		QCD.AccidentalFCL=TQC.AccidentalFCL,
		QCD.PTD=ISNULL(TQC.PTD,'N'),
		QCD.PTDAccident=ISNULL(TQC.PTDAccident,'N'),
		QCD.PTDSickness=ISNULL(TQC.PTDSickness,'N'),
		QCD.PTDCoverageLimit=TQC.PTDCoverageLimit,
		QCD.PTDMaximumLimit=TQC.PTDMaximumLimit,
		QCD.PTDWaitingYears=TQC.PTDWaitingYears,
		QCD.PPD=ISNULL(TQC.PPD,'N'),
		QCD.PPDAccident=ISNULL(TQC.PPDAccident,'N'),
		QCD.PPDSickness=ISNULL(TQC.PPDSickness,'N'),
		QCD.PPDCoverageLimit=TQC.PPDCoverageLimit,
		QCD.PPDMaximumLimit=TQC.PPDMaximumLimit,
		QCD.PPDWaitingYears=TQC.PPDWaitingYears,
		QCD.TTD=ISNULL(TQC.TTD,'N'),
		QCD.TTDAccident=ISNULL(TQC.TTDAccident,'N'),
		QCD.TTDSickness=ISNULL(TQC.TTDSickness,'N'),
		QCD.TTDCoverageLimit=TQC.TTDCoverageLimit,
		QCD.TTDMaximumLimit=TQC.TTDMaximumLimit,
		QCD.TTDWaitingYears=TQC.TTDWaitingYears,
		QCD.RepatriationBenefit=ISNULL(TQC.RepatriationBenefit,'N'),
		QCD.RBCoverageLimit=TQC.RBCoverageLimit,
		QCD.PassiveWarRisk=ISNULL(TQC.PassiveWarRisk,'N'),
		QCD.PWRCoverageLimit=TQC.PWRCoverageLimit,
		QCD.TerminalIllness=ISNULL(TQC.TerminalIllness,'N'),
		QCD.TLCoverageLimit=TQC.TLCoverageLimit,
		QCD.TLMaximumLimit=TQC.TLMaximumLimit,
		QCD.TLWaitingYears=TQC.TLWaitingYears,
		QCD.CriticalIllness=ISNULL(TQC.CriticalIllness,'N'),
		QCD.CLCoverageLimit=TQC.CLCoverageLimit,
		QCD.CLMaximumLimit=TQC.CLMaximumLimit,
		QCD.CLWaitingYears=TQC.CLWaitingYears,
		QCD.OtherAdditionalCover=TQC.OtherAdditionalCover,
		QCD.WarExclusion=ISNULL(TQC.WarExclusion,'N'),
		QCD.WECoverageLimit=TQC.WECoverageLimit,
		QCD.WEMaximumLimit=TQC.WEMaximumLimit,
		QCD.WEWaitingYears=TQC.WEWaitingYears,
		QCD.AtomicBiologicalAndCNE=ISNULL(TQC.AtomicBiologicalAndCNE,'N'),
		QCD.ABACNECoverageLimit=TQC.ABACNECoverageLimit,
		QCD.ABACNEMaximumLimit=TQC.ABACNEMaximumLimit,
		QCD.ABACNEWaitingYears=TQC.ABACNEWaitingYears,
		QCD.CriminalActContent=ISNULL(TQC.CriminalActContent,'N'),
		QCD.CACCoverageLimit=TQC.CACCoverageLimit,
		QCD.CACNEMaximumLimit=TQC.CACNEMaximumLimit,
		QCD.CACNEWaitingYears=TQC.CACNEWaitingYears,
		QCD.HazardousSportsExclusion=ISNULL(TQC.HazardousSportsExclusion,'N'),
		QCD.HSECoverageLimit=TQC.HSECoverageLimit,
		QCD.HSEMaximumLimit=TQC.HSEMaximumLimit,
		QCD.HSEWaitingYears=TQC.HSEWaitingYears,
		QCD.AviationExclusion=ISNULL(TQC.AviationExclusion,'N'),
		QCD.AECoverageLimit=TQC.AECoverageLimit,
		QCD.AEMaximumLimit=TQC.AEMaximumLimit,
		QCD.AEEWaitingYears=TQC.AEEWaitingYears,
		QCD.IntentionalSelfInflicted=ISNULL(TQC.IntentionalSelfInflicted,'N'),
		QCD.ISSASCoverageLimit=TQC.ISSASCoverageLimit,
		QCD.ISSASMaximumLimit=TQC.ISSASMaximumLimit,
		QCD.ISSASWaitingYears=TQC.ISSASWaitingYears,
		QCD.PandemicEpidemicCondition=ISNULL(TQC.PandemicEpidemicCondition,'N'),
		QCD.PECCoverageLimit=TQC.PECCoverageLimit,
		QCD.PECMaximumLimit=TQC.PECMaximumLimit,
		QCD.PECWaitingYears=TQC.PECWaitingYears,
		QCD.Sucide=ISNULL(TQC.Sucide,'N'),
		QCD.SECCoverageLimit=TQC.SECCoverageLimit,
		QCD.SEMaximumLimit=TQC.SEMaximumLimit,
		QCD.SEWaitingYears=TQC.SEWaitingYears,
		QCD.HIV_AIDS=ISNULL(TQC.HIV_AIDS,'N'),
		QCD.HIVCoverageLimit=TQC.HIVCoverageLimit,
		QCD.HIVMaximumLimit=TQC.HIVMaximumLimit,
		QCD.HIVWaitingYears=TQC.HIVWaitingYears,
		QCD.OtherExclusions=TQC.OtherExclusions
			    FROM       QuotationCoverageDetails QCD
      INNER JOIN #TempQuotationCoverage TQC
      ON         QCD.QuotationId=@ReturnRIid

	   SELECT QuotationId, PolicyNo,
               WLPolicyNo,
               'Quotation Converted to Policy Successfully.!' AS Status
        FROM   Quotation
        WHERE  QuotationId=@ReturnRIid
    END
  END

  GO
/****** Object:  StoredProcedure [dbo].[pGetUWDashboard]    Script Date: 10/12/2021 2:33:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Proc [dbo].[pGetUWDashboard](
@UserName nvarchar(20),
@StartDate date,
@EndDate date
)
as begin
declare @StartDateYearly datetime,@EndDateYearly datetime
set @StartDateYearly=DATEADD(yy, DATEDIFF(yy, 0,@StartDate), 0)
set @EndDateYearly=DATEADD(yy, DATEDIFF(yy, 0, @EndDate) + 1, -1)

DECLARE @DATE datetime, @StartDateMonth DATETIME,@EndDateMonth DATETIME
SET @DATE=@StartDate
set @StartDateMonth= @DATE-DAY(@DATE)+1 
set @EndDateMonth= EOMONTH(@EndDate) 


declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2),@TotalNoPolQuotationDrafted bigint,
@TotNoPolIssued bigint,@TotalNoPolRejected bigint,

@TotalPremiumEarned decimal(18,2),
@TotalPremiumRejected decimal(18,2),
@TotalPremiumPending decimal(18,2)

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly)
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Pending')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Rejected')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Approved')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end


set @TotalNoPoliciesMonth=(select count(*) from Quotation where PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesLostMonth =(select count(*) from Quotation where status='Rejected' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesUPMonth =(select count(*) from Quotation where status='Pending' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesRenewedMonth =(select count(*) from Quotation where status='Approved' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(Premium_GrossPremium) from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly)
set @TotalNoPolUnderProcessYearPremium =(select sum(Premium_GrossPremium) from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Pending')
set @TotNoPolLostYearPremium =(select sum(Premium_GrossPremium) from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Rejected')
set @TotalNoPolRenewedYearPremium =(select sum(Premium_GrossPremium) from Quotation where PeriodofInsurance between @StartDateYearly and @EndDateYearly and Status='Approved')


if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end


set @TotalNoPoliciesMonthPremium=(select sum(Premium_GrossPremium) from Quotation where PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesLostMonthPremium =(select sum(Premium_GrossPremium) from Quotation where status='Rejected' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesUPMonthPremium =(select sum(Premium_GrossPremium) from Quotation where status='Pending' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)
set @TotalNoPoliciesRenewedMonthPremium =(select sum(Premium_GrossPremium) from Quotation where status='Approved' and PeriodofInsurance between @StartDateMonth and @EndDateMonth)


if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end


set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from Quotation )--where PolicyToDate between @StartDateYearly and @EndDateYearly)
set @TotalNoPolQuotationDrafted =(select count(*) as TotalUnderProcessYear from Quotation where Status='Pending')
set @TotNoPolIssued =(select count(*) as TotalLostYear from Quotation where Status='Approved')
set @TotalNoPolRejected =(select count(*) as TotalRenewedYear from Quotation where Status='Rejected')
--set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


set @TotalPremiumEarned=(select sum(Premium_GrossPremium) from Quotation where Status='Approved')
set @TotalPremiumRejected=(select sum(Premium_GrossPremium) from Quotation where Status='Rejected')
set @TotalPremiumPending=(select sum(Premium_GrossPremium) from Quotation where Status='Pending')

select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolUnderProcessYear,0)         as TNPUnderProcessYear, 
       isnull(@TotNoPolLostYear          ,0)         as TNPLostYear, 
       isnull(@TotalNoPolRenewedYear     ,0)         as TNPRenewedYear, 
       isnull(@TotalNPYearPercent        ,0)         as PercentageRenewedYear, 
       isnull(@TotalNoPoliciesMonth      ,0)         as TNPMonth, 
       isnull(@TotalNoPoliciesLostMonth  ,0)         as TNPLostMonth, 
       isnull(@TotalNoPoliciesUPMonth    ,0)         as TNPUnderProcessMonth, 
       isnull(@TotalNoPoliciesRenewedMonth ,0)       as TNPRenewedMonth, 
       isnull(@TotalNPMonthPercent       ,0)         as PercentageRenewedMonth, 
       isnull(@TotalNoPoliciesYearPremium,0)         as TNPYearPremium, 
       isnull(@TotalNoPolUnderProcessYearPremium,0)  as TNPUPYearPremium, 
       isnull(@TotNoPolLostYearPremium   ,0)         as TNPLostYearPremium, 
       isnull(@TotalNoPolRenewedYearPremium,0)       as TNPRenewedYearPremium, 
       isnull(@TotalNPYearPercentPremium ,0)         as PercentPremiumRenewedYear, 
       isnull(@TotalNoPoliciesMonthPremium,0)        as TNPMonthPremium, 
       isnull(@TotalNoPoliciesLostMonthPremium,0)    as TNPLostMonthPremium, 
       isnull(@TotalNoPoliciesUPMonthPremium,0)      as TNPUPMonthPremium, 
       isnull(@TotalNoPoliciesRenewedMonthPremium,0) as TNPRenewedMonthPremium, 
       isnull(@TotalNPMonthPercentPremium,0)         as PercentPremiumRenewedMonth,
	   ISNULL(@TotalPremiumEarned,0.00)				 as TotalPremiumEarned,
	   ISNULL(@TotalPremiumRejected,0.00)			 as TotalPremiumRejected,
	   ISNULL(@TotalPremiumPending,0.00)			 as TotalPremiumPending,
	   @UserName									 as UserName,
       isnull(@TotalNoPolQuotationDrafted,0)         as TotalNoPolQuotationDrafted, 
       isnull(@TotNoPolIssued,0)					 as TotNoPolIssued, 
       isnull(@TotalNoPolRejected,0)				 as TotalNoPolRejected

end
GO
/****** Object:  StoredProcedure [dbo].[pGetQuotation]    Script Date: 10/12/2021 2:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[pGetQuotation](
@QuotationId bigint)
as begin
select 
Q.WCId, Q.QuotationId,Q.DraftNo,Q.WLDraftNo,Q.Status,Q.PolicyNo,Q.InsuranceCompanyName,Q.ICMId,Q.ClientCompanyName,Q.ClientCompanyCode,ISNULL(Q.ClientCompanyMasterId,0) AS ClientCompanyMasterId,Q.ScopeofCoverage,
Q.Jurisdiction,Q.Address,Q.City,Q.KYCDetails,Q.BankName,Q.IFSCCode,Q.Branch,isnull(Q.PeriodofInsurance,getdate()) as PeriodofInsurance,Q.Category,Q.TotalEmployees,Q.TotalDependents,
Q.TotalSpousedependents,Q.TotalChilddependents,isnull(Q.PolicyCurrency,0) as PolicyCurrency,Q.EligibilityCriteria,Q.SumAssured_SA,Q.AgeLimitforEmployees,Q.AgeLimitforDependentSpouse,Q.AgeLimitforDependentChild,
Q.FCL,Q.ClientPremium,isnull(Q.InsuranceLevy,0.55) as InsuranceLevy,Q.PolicyFee,Q.TotalPremium,Q.BrokerName,Q.Brokerage,Q.RICount,Q.RI1in_Percentage,Q.RI2in_Percentage,Q.RI3in_Percentage,
Q.RIRate,Q.RIRetension,Q.AMIRetension,Q.RIPremium,Q.AMILoading,Q.TotalEmployeescount,Q.EstimatedAnnualWages,Q.AnnualRate,Q.Premium_EAW_Rate,Q.Premium_Incl_levy_PolFeeRO,Q.VATonWCpremium,
Q.TotalPremiumInclVAT,Q.BrokerPercentage,Q.BrokerAmount,Q.CreatedBy,Q.CreatedAt,Q.UpdatedBy,Q.UpdatedAt,Q.Premium_VariableSADetails,
QCD.QuotationCoverageDetailID,QCD.QuotationID,QCD.DeathCoverType,
QCD.DeathCoverAnnualLimit,QCD.DeathCoverSumAssuredAmount,QCD.DeathCoverSumAssuredNoOfTimes,QCD.DeathCoverFCL,QCD.AccidentalDeath,QCD.AccidentalAnnualLimit,QCD.AccidentalSumAssuredAmount,
QCD.AccidentalSumAssuredNoOfTimes,QCD.AccidentalFCL,QCD.PTD,QCD.PTDAccident,QCD.PTDSickness,QCD.PTDCoverageLimit,QCD.PTDMaximumLimit,QCD.PTDWaitingYears,QCD.PPD,QCD.PPDAccident,
QCD.PPDSickness,QCD.PPDCoverageLimit,QCD.PPDMaximumLimit,QCD.PPDWaitingYears,QCD.TTD,QCD.TTDAccident,QCD.TTDSickness,QCD.TTDCoverageLimit,QCD.TTDMaximumLimit,QCD.TTDWaitingYears,
QCD.RepatriationBenefit,QCD.RBCoverageLimit,QCD.PassiveWarRisk,QCD.PWRCoverageLimit,QCD.TerminalIllness,QCD.TLCoverageLimit,QCD.TLMaximumLimit,QCD.TLWaitingYears,QCD.CriticalIllness,QCD.CLCoverageLimit,
QCD.CLMaximumLimit,QCD.CLWaitingYears,QCD.OtherAdditionalCover,QCD.WarExclusion,QCD.WECoverageLimit,QCD.WEMaximumLimit,QCD.WEWaitingYears,QCD.AtomicBiologicalAndCNE,QCD.ABACNECoverageLimit,
QCD.ABACNEMaximumLimit,QCD.ABACNEWaitingYears,QCD.CriminalActContent,QCD.CACCoverageLimit,QCD.CACNEMaximumLimit,QCD.CACNEWaitingYears,QCD.HazardousSportsExclusion,
QCD.HSECoverageLimit,QCD.HSEMaximumLimit,QCD.HSEWaitingYears,QCD.AviationExclusion,QCD.AECoverageLimit,QCD.AEMaximumLimit,QCD.AEEWaitingYears,QCD.IntentionalSelfInflicted,
QCD.ISSASCoverageLimit,QCD.ISSASMaximumLimit,QCD.ISSASWaitingYears,QCD.PandemicEpidemicCondition,QCD.PECCoverageLimit,QCD.PECMaximumLimit,QCD.PECWaitingYears,QCD.Sucide,QCD.SECCoverageLimit,
QCD.SEMaximumLimit,QCD.SEWaitingYears,QCD.HIV_AIDS,QCD.HIVCoverageLimit,QCD.HIVMaximumLimit,QCD.HIVWaitingYears,QCD.OtherExclusions,QCD.CreatedBy,QCD.CreatedAt,QCD.ModifiedBy,QCD.MofifiedAt


 from Quotation Q
 Inner join QuotationCoverageDetails QCD on QCD.QuotationID=Q.QuotationId
 where q.QuotationId=@QuotationId

 end
go

USE [Totalligent]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathProducerMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathProducerMasterPath]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathMPMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathMPMasterPath]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathICMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathICMasterPath]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathEmpMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathEmpMasterPath]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathDrugMaster]
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathCCMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pUpdateFolderPathCCMasterPath]
GO
/****** Object:  StoredProcedure [dbo].[pRejectQuotation]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pRejectQuotation]
GO
/****** Object:  StoredProcedure [dbo].[pInsertEndorsement]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pInsertEndorsement]
GO
/****** Object:  StoredProcedure [dbo].[pInsertBusinessType]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pInsertBusinessType]
GO
/****** Object:  StoredProcedure [dbo].[pGetSumOfSalary]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetSumOfSalary]
GO
/****** Object:  StoredProcedure [dbo].[pGetRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetRIMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetQuotationReinsurer]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetQuotationReinsurer]
GO
/****** Object:  StoredProcedure [dbo].[pGetQuotation]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetQuotation]
GO
/****** Object:  StoredProcedure [dbo].[pGetProducersCM]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetProducersCM]
GO
/****** Object:  StoredProcedure [dbo].[pGetProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetProducerMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetPolicyIssuance]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetPolicyIssuance]
GO
/****** Object:  StoredProcedure [dbo].[pGetMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetMPMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetICMMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetICMMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetGLWLPolicyNos]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetGLWLPolicyNos]
GO
/****** Object:  StoredProcedure [dbo].[pGetGLWLPDFdata]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetGLWLPDFdata]
GO
/****** Object:  StoredProcedure [dbo].[pGetEndorsement]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetEndorsement]
GO
/****** Object:  StoredProcedure [dbo].[pGetEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetEmpMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetEmpCount]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetEmpCount]
GO
/****** Object:  StoredProcedure [dbo].[pGetDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetDrugMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetDefaultMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetDefaultMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetClientCompanyMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetClientCompanyMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetCCMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetBusinessDesignationTypeMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetBusinessDesignationTypeMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetBenefitsMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetBenefitsMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetBankMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetBankMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteRINameRICodeCity]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteRINameRICodeCity]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteProducerName_Code_City]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteProducerName_Code_City]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteMPMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteICMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteEmpMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteDrugCodeName]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteDrugCodeName]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteCCMaster]
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteBenefitsName]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGetAutocompleteBenefitsName]
GO
/****** Object:  StoredProcedure [dbo].[pGenerateCode]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGenerateCode]
GO
/****** Object:  StoredProcedure [dbo].[pGenerateBusinessEntites]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pGenerateBusinessEntites]
GO
/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLRIMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLQuotationMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLQuotationMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLProducerMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLMPMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLICMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLEmpMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLDrugMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLCCMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDMLBenefitsMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDMLBenefitsMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateRIMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivatePMMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivatePMMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateMPMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateICMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateEmpMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateDrugMaster]
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pDeactivateCCMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertRIMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertProducerMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertMPMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertICMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertEmpMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertDrugMaster]
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertClientMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[pBulkInsertClientMaster]
GO
/****** Object:  StoredProcedure [dbo].[GetBarChartUW]    Script Date: 9/15/2021 1:09:05 AM ******/
DROP PROCEDURE [dbo].[GetBarChartUW]
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
ALTER TABLE [dbo].[ClientCompanyMaster] DROP CONSTRAINT [DF__ClientCom__Creat__44CA3770]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 9/15/2021 1:09:05 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quotation]') AND type in (N'U'))
DROP TABLE [dbo].[Quotation]
GO
/****** Object:  Table [dbo].[ClientCompanyMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientCompanyMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ClientCompanyMaster]
GO
/****** Object:  Table [dbo].[ClientCompanyMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCompanyMaster](
	[ClientCompanyMasterId] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientCompCode]  AS ('CL'+right('0000'+CONVERT([varchar](8),[ClientCompanyMasterId]),(8))) PERSISTED,
	[ClientCompanyName] [nvarchar](100) NULL,
	[InsuranceCompanyId] [bigint] NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](20) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](30) NULL,
	[Currency] [nvarchar](10) NULL,
	[LOB] [bigint] NULL,
	[ProducerType] [bigint] NULL,
	[ProducerName] [bigint] NULL,
	[ProducerCommission] [decimal](18, 3) NULL,
	[RINumber] [bigint] NULL,
	[RIName] [nvarchar](500) NULL,
	[RIRetention] [bigint] NULL,
	[AMIRetention] [decimal](18, 2) NULL,
	[BankID] [int] NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[UploadKYC_01] [nvarchar](255) NULL,
	[UploadKYC_02] [nvarchar](255) NULL,
	[UploadKYC_03] [nvarchar](255) NULL,
	[UploadKYC_04] [nvarchar](255) NULL,
	[UploadKYC_05] [nvarchar](255) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL,
	[KYCUploadPath] [nvarchar](350) NULL,
	[InsertType] [nvarchar](255) NULL,
	[NationlityId] [int] NULL,
	[GrossRate] [decimal](18, 2) NULL,
	[RINetRate] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 9/15/2021 1:09:05 AM ******/
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
	[AMIRetension] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClientCompanyMaster] ON 
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType], [NationlityId], [GrossRate], [RINetRate]) VALUES (1, N'Poliris', 1, N'chennai', N'chenI', N'TN', N'521212', N'sathish', N'8454454554', N'sat@gmail.co.in', N'OMR', 1, 1, 1, CAST(10.000 AS Decimal(18, 3)), NULL, N'[{"RIName":"TestRIName08","RIRetention":"80"}]', NULL, CAST(20.00 AS Decimal(18, 2)), 1, N'12345', N'ISCC000', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-09-13T15:52:19.867' AS DateTime), NULL, NULL, N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\CMMasterKYCFiles\13092021153911_CM_1.zip', N'UI', 3, CAST(0.15 AS Decimal(18, 2)), CAST(0.11 AS Decimal(18, 2)))
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType], [NationlityId], [GrossRate], [RINetRate]) VALUES (2, N'Aecvow', 1, N'chennai', N'chennai', N'Tamilnadu', N'6000352', N'Jeeva', N'975454555', N'sat@gmail.com', N'OMR', 1, 1, 1, CAST(10.000 AS Decimal(18, 3)), NULL, N'[{"RIName":"TestRIName06","RIRetention":"10"},{"RIName":"TestRIName07","RIRetention":"20"},{"RIName":"TestRIName08","RIRetention":"40"}]', NULL, CAST(20.00 AS Decimal(18, 2)), 2, N'12345', N'icici250000', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-09-13T22:38:40.800' AS DateTime), NULL, NULL, N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\CMMasterKYCFiles\13092021223405_CM_2.zip', N'UI', 2, CAST(0.15 AS Decimal(18, 2)), CAST(0.11 AS Decimal(18, 2)))
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType], [NationlityId], [GrossRate], [RINetRate]) VALUES (3, N'cognziant', 1, N'kelambakk', N'kelamb', N'tamilnadur andhar', N'784122', N'Jeeva', N'975454555', N'sat@gmail.com', N'OMR', 1, 1, 1, CAST(10.000 AS Decimal(18, 3)), NULL, N'[{"RIName":"TestRIName06","RIRetention":"10"},{"RIName":"TestRIName07","RIRetention":"20"}]', NULL, CAST(20.00 AS Decimal(18, 2)), 2, N'12345', N'icici250000', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-09-13T22:41:28.873' AS DateTime), NULL, NULL, NULL, N'UI', 5, CAST(0.15 AS Decimal(18, 2)), CAST(0.11 AS Decimal(18, 2)))
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType], [NationlityId], [GrossRate], [RINetRate]) VALUES (4, N'Infosys', 1, N'kelam', N'padur', N'ponmar', N'898999', N'kumara', N'87845542545', N'kumar@gmail.com', N'omr', 1, 1, 1, CAST(10.000 AS Decimal(18, 3)), NULL, N'[{"RIName":"TestRIName06","RIRetention":"10"},{"RIName":"TestRIName07","RIRetention":"20"},{"RIName":"TestRIName08","RIRetention":"40"}]', NULL, CAST(20.00 AS Decimal(18, 2)), 1, N'123456', N'ISCIKKKK', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-09-13T22:45:14.047' AS DateTime), NULL, NULL, N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\CMMasterKYCFiles\13092021224332_CM_4.zip', N'UI', 2, CAST(0.15 AS Decimal(18, 2)), CAST(0.11 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[ClientCompanyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Quotation] ON 
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension]) VALUES (1, N'D/CL00001/04/2021/3301/00001', N'Approved', N'P/CL00001/04/2021/3301/00001', N'10009', NULL, N'1', N'CL00001', NULL, N'Test', N'Testjuset', N'kelambakkam', N'chennai', N'kycdetails', N'ICICIC BANK', N'ICICI003300', N'04', NULL, NULL, 1500000, 254000, 30000, 45000, 0, N'Test Criteria', CAST(100000.000 AS Decimal(18, 3)), 45, 35, 15, 1000, CAST(10000.000 AS Decimal(18, 3)), NULL, CAST(1.000 AS Decimal(18, 3)), CAST(10056.000 AS Decimal(18, 3)), N'Test Broker', CAST(10.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), N'1', N'2', N'3', N'30', N'25', CAST(20000.000 AS Decimal(18, 3)), CAST(100.000 AS Decimal(18, 3)), 100000, CAST(2500000.000 AS Decimal(18, 3)), N'20000', N'2000', CAST(3000.000 AS Decimal(18, 3)), CAST(144.000 AS Decimal(18, 3)), CAST(25.000 AS Decimal(18, 3)), N'5', CAST(10000.000 AS Decimal(18, 3)), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'2021-09-04T06:46:01.400' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/CL00001/04/2021/2402/00001', N'P/CL00001/04/2021/2402/00001', NULL, NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension]) VALUES (5, NULL, N'Pending', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension]) VALUES (7, N'D/CL00001/01/2021/3301/00007', N'Approved', N'P/004/01/2021/3301/00007', N'10', NULL, N'1', N'CL00001', NULL, NULL, NULL, N'Oman', N'Oman', N'Kyc details', N'ICICI', N'IFCCODE', N'01', NULL, NULL, 100000, 100, 200, 300, 0, N'test', CAST(200000.000 AS Decimal(18, 3)), 45, 35, 12, 5, CAST(100000.000 AS Decimal(18, 3)), NULL, CAST(1.000 AS Decimal(18, 3)), CAST(100551.000 AS Decimal(18, 3)), N'test Broker', NULL, CAST(1000.000 AS Decimal(18, 3)), N'1', N'1', N'1', N'1', N'1', CAST(1.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), NULL, CAST(480000.000 AS Decimal(18, 3)), NULL, NULL, CAST(768.000 AS Decimal(18, 3)), NULL, NULL, N'50', CAST(30.000 AS Decimal(18, 3)), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'2021-09-12T19:33:20.287' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/CL00001/01/2021/2402/00007', N'P/004/01/2021/2402/00007', 1, NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension]) VALUES (10004, N'D/004/02/2021/3301/000010004', N'Approved', N'P/004/02/2021/3301/000010004', N'9', NULL, N'1', N'CL00001', NULL, NULL, NULL, N'Oman1', N'Omancity', N'kycdetails', N'ICICI', N'IFSCCODE', N'02', NULL, NULL, 10000, 10000, 250000, 200000, 0, N'20000', CAST(250000.000 AS Decimal(18, 3)), 45, 35, 25, 333, CAST(100000.000 AS Decimal(18, 3)), NULL, CAST(1.000 AS Decimal(18, 3)), CAST(100551.000 AS Decimal(18, 3)), N'Test Broker', CAST(100.000 AS Decimal(18, 3)), CAST(1000.000 AS Decimal(18, 3)), N'100', N'100', N'1000', N'100', N'100', CAST(250000.000 AS Decimal(18, 3)), CAST(30.000 AS Decimal(18, 3)), 4, NULL, NULL, NULL, CAST(12.800 AS Decimal(18, 3)), NULL, NULL, N'100', CAST(25000.000 AS Decimal(18, 3)), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'2021-09-12T19:29:27.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/004/02/2021/2402/000010004', N'P/004/02/2021/2402/000010004', 2, NULL)
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Premium_TypeofSumAssured], [Premium_SumAssured], [Premium_Salary], [Premium_FCL], [Premium_ClientRate], [Premium_VariableSADetails], [WLDraftNo], [WLPolicyNo], [WCId], [AMIRetension]) VALUES (4, N'D/CL00002/01/2021/3301/00004', N'Approved', N'P/CL00002/01/2021/3301/00004', N'9', NULL, N'2', N'CL00002', NULL, N'Test Coverage', N'Jusri', N'chennai', N'chennai', N'KYCDetails', N'ICICI', N'ICICI009933', N'01', NULL, NULL, 150325, 1000, 100, 122, 0, N'test', CAST(200000.000 AS Decimal(18, 3)), 45, 35, 25, NULL, CAST(10000.000 AS Decimal(18, 3)), NULL, CAST(1.000 AS Decimal(18, 3)), CAST(10056.000 AS Decimal(18, 3)), N'Test broker', CAST(9.000 AS Decimal(18, 3)), CAST(10.000 AS Decimal(18, 3)), N'10', N'20', N'30', N'10', N'20', CAST(30000.000 AS Decimal(18, 3)), CAST(200.000 AS Decimal(18, 3)), 10000, CAST(10000.000 AS Decimal(18, 3)), N'1000', N'10000', CAST(1000.000 AS Decimal(18, 3)), CAST(200.000 AS Decimal(18, 3)), CAST(200.000 AS Decimal(18, 3)), N'200', CAST(200000.000 AS Decimal(18, 3)), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'2021-09-05T21:47:25.030' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'D/CL00002/01/2021/2402/00004', N'P/CL00002/01/2021/2402/00004', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Quotation] OFF
GO
ALTER TABLE [dbo].[ClientCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
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
/****** Object:  StoredProcedure [dbo].[GetBarChartUW]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[GetBarChartUW](
@UserName nvarchar(50)
)
as 
begin

--select * from (select c.Calenderid, c.MonthName,DraftNo,IsNull(Status,'Pending') as Status from
--TB_Quotation M 

--right join TB_Calender C on C.MonthName=DATENAME(month, AddedOn) and year(getdate())=year(AddedOn) ) t
--pivot
--(Count (DraftNo) for Status in([Approved],[Rejected],[Pending])) as pivot_final_table order by CalenderId
declare @tt table(
CalenderId bigint,
MonthName nvarchar(25),
TotalPremiumEarned decimal(18,2),
TotalPremiumRejected decimal(18,2),
TotalPremiumPending decimal(18,2)
)
insert into @tt(CalenderId,MonthName,TotalPremiumEarned,TotalPremiumRejected,TotalPremiumPending)
select * from (select c.Calenderid, c.MonthName,GBTotalPremium,IsNull(Status,'Pending') as Status from
TB_Quotation M 

right join TB_Calender C on C.MonthName=DATENAME(month, AddedOn) and year(getdate())=year(AddedOn) ) t
pivot
(sum (GBTotalPremium) for Status in([Pending],[Approved],[Rejected])) as pivot_final_table order by CalenderId
select CalenderId,MonthName,isnull(TotalPremiumEarned,0.00) as TotalPremiumEarned,isnull(TotalPremiumRejected,0.00) as TotalPremiumRejected,isnull(TotalPremiumPending,0.00) as TotalPremiumPending

from @tt
--delete from @tt
end
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertClientMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkInsertClientMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  

 SELECT * into #TempPMMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
		ClientCompanyName nvarchar (100) N'$.ClientCompanyName', 
		InsuranceCompanyId bigint  N'$.InsuranceCompanyId', 
		InsuranceCompanyName nvarchar(50) N'$.InsuranceCompanyName', 
		Address nvarchar (100) N'$.Address', 
		City nvarchar (100) N'$.City', 
		State nvarchar (100) N'$.State', 
		Zipcode nvarchar (100) N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (100) N'$.MobileNumber', 
		EmailId nvarchar (100) N'$.EmailId', 
		Currency nvarchar (100) N'$.Currency', 
		LOB bigint  N'$.LOBName', 
		ProducerType bigint  N'$.ProducerType', 
		ProducerName bigint  N'$.ProducerName', 
		ProducerCommission decimal  N'$.ProducerCommission', 
		RINumber bigint  N'$.RINumber', 
		RIName nvarchar (100) N'$.RIName', 
		RIRetention bigint  N'$.RIRetention', 
		AMIRetention bigint  N'$.AMIRetention', 
		BankName nvarchar(50)  N'$.BankName', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (100) N'$.AccountNumber' ,
		IFSCCode nvarchar (100) N'$.IFSCCode'

 ) AS JsonRIMaster;  
  

 INSERT INTO ClientCompanyMaster (  
  ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,ProducerCommission,
RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber, IFSCCode,Status,InsertType ,CreatedBy )  
 --select * From #TempPMMaster  T
 Select   
    ClientCompanyName,ICM.ICMId,T.Address,T.City,T.State,T.Zipcode,T.ContactPerson,T.MobileNumber,T.EmailId,T.Currency,T.LOB,T.ProducerType,T.ProducerName,T.ProducerCommission,
T.RINumber,T.RIName,T.RIRetention,T.AMIRetention,BM.BankID,T.AccountNumber, T.IFSCCode,'A' ,'Bulk',@CreatedBy
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 INNER JOIN InsuranceCompanyMaster ICM ON ICM.InsurancecompanyName=T.InsurancecompanyName
 
     declare @output int
	 set @output=SCOPE_IDENTITY()
	 if(@output>0)
 begin
  Set @Message ='Inserted Successfully'
  end
  else
  begin
  Set @Message ='Client Company is not registered successfully'
  end
END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [dbo].[pBulkInsertDrugMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  
  
  
    SELECT * into #TempDrugMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
     
  DrugName nvarchar(1000) N'$.DrugName',  
  DrugCode nvarchar(1000) N'$.DrugCode'
   
  
 ) AS JsonDrugMaster;  
  
  
 INSERT INTO DrugMaster (  
  DrugName,DrugCode,
   InsertType,Status,CreatedBy  
   )  
 Select   
   DrugName,DrugCode, 'Bulk','A' Status,@CreatedBy
 From #TempDrugMaster  T
 
     
 
  Set @Message ='Inserted Successfully'

END  
GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkInsertEmpMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  

 SELECT * into #TempPMMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
		EmployeeName nvarchar (100) N'$.EmployeeName', 
		EmployeeUniqueNumber nvarchar (100) N'$.EmployeeUniqueNumber', 
		ClientName nvarchar (100) N'$.ClientName', 
		Relation nvarchar (100) N'$.Relation', 
		Nationality nvarchar (100) N'$.Nationality', 
		Category nvarchar (100) N'$.Category', 
		DOB datetime  N'$.DOB', 
		Age int  N'$.Age', 
		Salary decimal(18,2)  N'$.Salary', 
		EAW decimal (18,2)  N'$.EAW', 
		SumAssured decimal  N'$.SumAssured', 
		EffectiveDate datetime  N'$.EffectiveDate', 
		Remarks nvarchar (400) N'$.Remarks', 
		EntryType nvarchar (100) N'$.EntryType', 
		BankName nvarchar (100) N'$.BankName', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode',
		Status nvarchar(100)  N'$.Status',
		SpouseAge int N'$.SpouseAge',
		ChildAge int N'$.ChildAge',
		SpouseCategory nvarchar(100) N'$.SpouseCategory',
		ChildCategory nvarchar(100) N'$.ChildCategory',
		SpouseDOB datetime N'$.SpouseDOB',
		ChildDOB datetime N'$.ChildDOB',
		SpouseEffectiveDate datetime N'$.SpouseEffectiveDate',
		ChildEffectiveDate datetime N'$.ChildEffectiveDate',
		SpouseNationality nvarchar(100) N'$.SpouseNationality',
		ChildNationality nvarchar(100) N'$.ChildNationality',
		SpouseRemarks nvarchar(100) N'$.SpouseRemarks',
		ChildRemarks nvarchar(100) N'$.ChildRemarks',
		SpouseSalary decimal N'$.SpouseSalary',
		ChildSalary decimal N'$.ChildSalary',
		SpouseStatus nvarchar(100) N'$.SpouseStatus',
		ChildStatus nvarchar(100) N'$.ChildStatus',
		SpouseSumAssured decimal N'$.SpouseSumAssured',
		ChildSumAssured decimal N'$.ChildSumAssured'


 ) AS JsonRIMaster;  
  

 INSERT INTO EmployeeMaster(  
  EmployeeName,EmployeeUniqueNumber,ClientName,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,AccountNumber,
IFSCCode,Status,InsertType,
SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,SpouseSalary,
ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured)  
 Select   
    T.EmployeeName,T.EmployeeUniqueNumber,CCM.ClientCompanyMasterId,T.Relation,T.Nationality,T.Category,T.DOB,T.Age,T.Salary,T.EAW,T.SumAssured,T.EffectiveDate,T.Remarks,T.EntryType,BM.BankID,
	T.AccountNumber,T.IFSCCode,'A' ,'Bulk',T.SpouseAge,T.ChildAge,T.SpouseCategory,T.ChildCategory,T.SpouseDOB,T.ChildDOB,T.SpouseEffectiveDate,T.ChildEffectiveDate,T.SpouseNationality,
	T.ChildNationality,T.SpouseRemarks,T.ChildRemarks,T.SpouseSalary,T.ChildSalary,T.SpouseStatus,T.ChildStatus,T.SpouseSumAssured,T.ChildSumAssured From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 INNER JOIN ClientCompanyMaster CCM on CCM.ClientCompanyName=T.ClientName
  
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkInsertICMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  

 SELECT * into #TempPMMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
		InsurancecompanyName nvarchar (200) N'$.InsurancecompanyName', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode nvarchar (40) N'$.Zipcode', 
		
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		BankID int  N'$.BankID', 
		BankName nvarchar (60)  N'$.BankName', 
		
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode'



 ) AS JsonRIMaster;  
  
  

  --Declare @ID bigint, @CodePrefix Nvarchar(200), @RowCount int

  --Select @ID= ID,@CodePrefix=CodePrefix From CodeMaster Where CodeType='ProducerMaster'

  --Select @RowCount = Count(ProducerName) From #TempPMMaster

  --Update CodeMaster set ID = (ID + @RowCount)  Where CodeType='PMMaster'
  
  --Alter table #TempPMMaster ADD PMCode Nvarchar(200)

  --;With Code as (
    
  --Select @CodePrefix+ CONVERT(VARCHAR(50),(@ID+ROW_NUMBER() OVER(Order by ProducerName))) as RowCode,PMCode  From #TempPMMaster
  --)
  --Update Code set  PMCode=RowCode

  


 INSERT INTO InsuranceCompanyMaster(  
  InsurancecompanyName,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,Status,InsertType
  )  
  Select   
    InsurancecompanyName,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BM.BankID,AccountNumber,IFSCCode,'A','Bulk' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkInsertMPMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  

 SELECT * into #TempPMMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
		MedicalProvider nvarchar (200) N'$.MedicalProvider', 
		Name nvarchar (200) N'$.Name', 
		MedicalProviderCode varchar (10) N'$.MedicalProviderCode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode nvarchar (40) N'$.Zipcode', 
		Location nvarchar (30) N'$.Location', 
		Category nvarchar (30) N'$.Category', 
		BankName nvarchar (30) N'$.BankName', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode'


 ) AS JsonRIMaster;  
  
  

  --Declare @ID bigint, @CodePrefix Nvarchar(200), @RowCount int

  --Select @ID= ID,@CodePrefix=CodePrefix From CodeMaster Where CodeType='ProducerMaster'

  --Select @RowCount = Count(ProducerName) From #TempPMMaster

  --Update CodeMaster set ID = (ID + @RowCount)  Where CodeType='PMMaster'
  
  --Alter table #TempPMMaster ADD PMCode Nvarchar(200)

  --;With Code as (
    
  --Select @CodePrefix+ CONVERT(VARCHAR(50),(@ID+ROW_NUMBER() OVER(Order by ProducerName))) as RowCode,PMCode  From #TempPMMaster
  --)
  --Update Code set  PMCode=RowCode

  


 INSERT INTO MedicalProviderMaster(  
  MedicalProvider,Name,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,Status,InsertType  )  
 Select   
     MedicalProvider,Name,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BM.BankID,AccountNumber,IFSCCode,'A','Bulk' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkInsertProducerMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  

 SELECT * into #TempPMMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
		BusinessTypeName nvarchar(1000) N'$.BusinessTypeName',   
		ProducerName nvarchar(1000) N'$.ProducerName',  
		ContactPerson nvarchar(1000) N'$.ContactPerson',  
		MobileNumber nvarchar(1000) N'$.MobileNumber',  
		EmailId nvarchar(1000) N'$.EmailId',  
		Address nvarchar(1000) N'$.Address',  
		City nvarchar(1000) N'$.City',  
		State nvarchar(1000) N'$.State',  
		Zipcode nvarchar(1000) N'$.Zipcode',  
		BankName nvarchar(500) N'$.BankName',  
		AccountNumber nvarchar(1000) N'$.AccountNumber',  
		IFSCCode nvarchar(1000) N'$.IFSCCode'
 ) AS JsonRIMaster;  
  
  

  Declare @ID bigint, @CodePrefix Nvarchar(200), @RowCount int

  Select @ID= ID,@CodePrefix=CodePrefix From CodeMaster Where CodeType='ProducerMaster'

  Select @RowCount = Count(ProducerName) From #TempPMMaster

  Update CodeMaster set ID = (ID + @RowCount)  Where CodeType='PMMaster'
  
  Alter table #TempPMMaster ADD PMCode Nvarchar(200)

  ;With Code as (
    
  Select @CodePrefix+ CONVERT(VARCHAR(50),(@ID+ROW_NUMBER() OVER(Order by ProducerName))) as RowCode,PMCode  From #TempPMMaster
  )
  Update Code set  PMCode=RowCode

  


 INSERT INTO ProducerMaster (  
   ProducerName,ProducerCode,ContactPerson,MobileNumber,EmailId,  
   Address,City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,IFSCCode,  
   InsertType,Status,CreatedBy,CreatedAt  
   )  
 Select   
   ProducerName,PMCode,ContactPerson,MobileNumber,EmailId,  
   Address,City,State,Zipcode,BD.BusinessDesignationTypeMasterID,BM.BankID,AccountNumber,IFSCCode,  
   'Bulk','A' Status,@CreatedBy,Getdate()  
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 INNER JOIN BusinessDesignationTypeMaster BD ON BD.TypeName=T.BusinessTypeName
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [dbo].[pBulkInsertRIMaster]  
(  
 @Action Nvarchar(200),  
 @JParamVal Nvarchar(Max),  
 @CreatedBy bigint,
 @Message Nvarchar(1000) OUT   
)  
As  
BEGIN  
  
  
    SELECT * into #TempRIMaster  
 FROM OPENJSON (@JParamVal, N'$')  
 WITH (  
     
  ReInsurerName nvarchar(1000) N'$.ReInsurerName',  
  ContactPerson nvarchar(1000) N'$.ContactPerson',  
  MobileNumber nvarchar(1000) N'$.MobileNumber',  
  EmailId nvarchar(1000) N'$.EmailId',  
  Address nvarchar(1000) N'$.Address',  
  City nvarchar(1000) N'$.City',  
  State nvarchar(1000) N'$.State',  
  Zipcode nvarchar(1000) N'$.Zipcode',  
  BankName Nvarchar(1000)N'$.BankName',  
  AccountNumber nvarchar(1000) N'$.AccountNumber',  
  IFSCCode nvarchar(1000) N'$.IFSCCode' 
   
  
 ) AS JsonRIMaster;  
  
  
  Declare @ID bigint, @CodePrefix Nvarchar(200), @RowCount int

  Select @ID= ID,@CodePrefix=CodePrefix From CodeMaster Where CodeType='RIMaster'

  Select @RowCount = Count(ReInsurerName) From #TempRIMaster

  Update CodeMaster set ID = (ID + @RowCount)  Where CodeType='RIMaster'
  
  Alter table #TempRIMaster ADD RICode Nvarchar(200)

  ;With RICode as (
    
  Select @CodePrefix+ CONVERT(VARCHAR(50),(@ID+ROW_NUMBER() OVER(Order by ReInsurerName))) as RowCode,RICode  From #TempRIMaster 
 

  )
  Update RICode set  RICode=RowCode
  
 INSERT INTO ReInsurerMaster (  
   ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,EmailId,  
   Address,City,State,Zipcode,BankID,AccountNumber,IFSCCode,  
   InsertType,Status,CreatedBy,CreatedAt  
   )  
 Select   
   ReInsurerName,RICode,ContactPerson,MobileNumber,EmailId,  
   Address,City,State,Zipcode,BM.BankID,AccountNumber,IFSCCode,  
   'Bulk','A' Status,@CreatedBy,Getdate()  
 From #TempRIMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
     
 
  Set @Message ='Inserted Successfully'

END  
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pDeactivateCCMaster] 
(
	@ClientCompanyMasterId bigint
)
AS
BEGIN 

UPDATE ClientCompanyMaster SET  STATUS ='D' WHERE ClientCompanyMasterId =@ClientCompanyMasterId

END
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDeactivateDrugMaster] 
(
	@DrugId int
)
AS
BEGIN 

UPDATE DrugMaster SET  STATUS ='D' WHERE DrugId =@DrugId 

END
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pDeactivateEmpMaster] 
(
	@EmpId bigint
	
)
AS
BEGIN 

UPDATE EmployeeMaster SET  STATUS ='D' WHERE EmployeeId =@EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDeactivateICMaster] 
(
	@ICMId bigint
	
)
AS
BEGIN 

UPDATE InsuranceCompanyMaster SET  STATUS ='D' WHERE ICMId =@ICMId

END
GO
/****** Object:  StoredProcedure [dbo].[pDeactivateMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDeactivateMPMaster] 
(
	@MPId bigint
)
AS
BEGIN 

UPDATE MedicalProviderMaster SET  STATUS ='D' WHERE MedicalProviderId =@MPId

END
GO
/****** Object:  StoredProcedure [dbo].[pDeactivatePMMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pDeactivatePMMaster] 
(
	@ProducerMasterID bigint
)
AS
BEGIN 

UPDATE ProducerMaster SET  STATUS ='D' WHERE ProducerMasterID =@ProducerMasterID

END

GO
/****** Object:  StoredProcedure [dbo].[pDeactivateRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDeactivateRIMaster] 
(
	@ReInsurerMasterId bigint
)
AS
BEGIN 

UPDATE ReInsurerMaster SET  STATUS ='D' WHERE ReInsurerMasterId =@ReInsurerMasterId

END
GO
/****** Object:  StoredProcedure [dbo].[pDMLBenefitsMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLBenefitsMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid int OUTPUT
)
As
BEGIN


    SELECT * into #TempBenefitsMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    BenefitsId int N'$.BenefitsId', 
        BenefitsName nvarchar (200) N'$.BenefitsName', 
        BenefitsCode nvarchar (200) N'$.BenefitsCode'
		
	) AS JsonBenefitsMaster;
	INSERT INTO BenefitsMaster(
			BenefitsName,InsertType
			)
			
	Select 
			BenefitsName,'UI'
	From #TempBenefitsMaster
	Select @ReturnRIid = @@IDENTITY  
	end
GO
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLCCMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN


    SELECT * into #TempCCMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    ClientCompanyMasterId BIGINT N'$.ClientCompanyMasterId', 
        ClientCompanyName nvarchar (200) N'$.ClientCompanyName', 
		InsuranceCompanyId bigint  N'$.InsuranceCompanyId', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode nvarchar (40) N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		Currency nvarchar (20) N'$.Currency', 
		LOB bigint  N'$.LOBName', 
		ProducerType bigint  N'$.ProducerType', 
		ProducerName bigint  N'$.ProducerName', 
		ProducerCommission decimal (18,3) N'$.ProducerCommission', 
		RINetRate decimal (18,3) N'$.RINetRate', 
		GrossRate decimal (18,3) N'$.GrossRate', 
		RINumber bigint  N'$.RINumber', 
		RIName nvarchar (max) N'$.RIName', 
		RIRetention bigint  N'$.RIRetention', 
		AMIRetention bigint  N'$.AMIRetention', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode', 
		UploadKYC_01 nvarchar (510) N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar (510) N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar (510) N'$.UploadKYC_03', 
		Status nvarchar (20) N'$.Status',
		NationalityId nvarchar (50) N'$.NationalityId'

	) AS JsonCCMaster;

 IF(@Action='Create')
 BEGIN
 
	INSERT INTO ClientCompanyMaster(
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,Status,InsertType,NationlityId,RINetRate,GrossRate
			)
	Select 
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,20,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,'A','UI' as InsertType	,NationalityId,RINetRate,GrossRate
	From #TempCCMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  Select @ReturnRIid=ClientCompanyMasterId From #TempCCMaster
  UPDATE CC Set  
            ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			UpdatedBy='Admin',UpdatedAt=GETdate(),
			NationlityId=TRI.NationalityId,
			RINetRate=TRI.RINetRate,GrossRate=TRI.GrossRate
  FROM ClientCompanyMaster CC
  INNER JOIN #TempCCMaster TRI ON CC.ClientCompanyMasterId=TRI.ClientCompanyMasterId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLDrugMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid int OUTPUT
)
As
BEGIN


    SELECT * into #TempDrugMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    DrugId int N'$.DrugId', 
        DrugName nvarchar (200) N'$.DrugName', 
        DrugCode nvarchar (200) N'$.DrugCode'
		
	) AS JsonDrugMaster;

 IF(@Action='Create')
 BEGIN
 
	INSERT INTO DrugMaster(
			DrugName,DrugCode,InsertType
			)
			
	Select 
			DrugName,DrugCode,'UI' as InsertType	
	From #TempDrugMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  Select @ReturnRIid=DrugId From #TempDrugMaster
  UPDATE CC Set  
          DrugName=TRI.DrugName,DrugCode=TRI.DrugCode,
			
			UpdatedBy='Admin',UpdatedAt=GETdate()
  FROM DrugMaster CC
  INNER JOIN #TempDrugMaster TRI ON CC.DrugId=TRI.DrugId

  


 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLEmpMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN


    SELECT * into #TempEmpMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
        EmployeeId bigint  N'$.EmployeeId', 
		EmployeeName nvarchar(100)  N'$.EmployeeName', 
		EmployeeUniqueNumber nvarchar (100) N'$.EmployeeUniqueNumber', 
		ClientName nvarchar (100) N'$.ClientName', 
		
		Relation nvarchar (100) N'$.Relation', 
		Nationality nvarchar (100) N'$.Nationality', 
		Category nvarchar (100) N'$.Category', 
		EmployeeGender nvarchar (100) N'$.EmployeeGender', 
		DOB datetime  N'$.DOB', 
		Age int  N'$.Age', 
		Salary decimal  N'$.Salary', 
		EAW decimal  N'$.EAW', 
		SumAssured decimal  N'$.SumAssured', 
		EffectiveDate datetime  N'$.EffectiveDate', 
		Remarks nvarchar(100)  N'$.Remarks', 
		EntryType nvarchar (100) N'$.EntryType', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar(100)  N'$.IFSCCode', 
		UploadKYC_01 nvarchar(100)  N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar(100)  N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar (510) N'$.UploadKYC_03', 
		UploadKYC_04 nvarchar(100)  N'$.UploadKYC_04', 
		UploadKYC_05 nvarchar (510) N'$.UploadKYC_05', 
		Status nvarchar(100)  N'$.Status',
		SpouseAge int N'$.SpouseAge',
		ChildAge int N'$.ChildAge',
		SpouseCategory nvarchar(100) N'$.SpouseCategory',
		ChildCategory nvarchar(100) N'$.ChildCategory',
		SpouseDOB datetime N'$.SpouseDOB',
		ChildDOB datetime N'$.ChildDOB',
		SpouseEffectiveDate datetime N'$.SpouseEffectiveDate',
		ChildEffectiveDate datetime N'$.ChildEffectiveDate',
		SpouseNationality nvarchar(100) N'$.SpouseNationality',
		ChildNationality nvarchar(100) N'$.ChildNationality',
		SpouseRemarks nvarchar(100) N'$.SpouseRemarks',
		ChildRemarks nvarchar(100) N'$.ChildRemarks',
		SpouseSalary decimal N'$.SpouseSalary',
		ChildSalary decimal N'$.ChildSalary',
		SpouseStatus nvarchar(100) N'$.SpouseStatus',
		ChildStatus nvarchar(100) N'$.ChildStatus',
		SpouseSumAssured decimal N'$.SpouseSumAssured',
		ChildSumAssured decimal N'$.ChildSumAssured'


	) AS JsonEmpMaster;

 IF(@Action='Create')
 BEGIN

	INSERT INTO EmployeeMaster(
			EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,Status,CreatedAt,InsertType,
SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,SpouseSalary,
ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured,ClientName)
	Select 
						EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,'A'	,GETDATE(),'UI' as InsertType,
SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,SpouseSalary,
ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured,ClientName
	From #TempEmpMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  
  Select @ReturnRIid=EmployeeId From #TempEmpMaster
  UPDATE CC Set  
            EmployeeName=TRI.EmployeeName,Relation=TRI.Relation,Category=TRI.Category,
			Age=TRI.Age,Salary=TRI.Salary,Gender=TRI.EmployeeGender,ClientName=TRI.ClientName,
			ModifyBy=1,ModifyAt=GETdate()
  FROM EmployeeMaster CC
  INNER JOIN #TempEmpMaster TRI ON CC.EmployeeId=TRI.EmployeeId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLICMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN


    SELECT * into #TempICMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    ICMId int  N'$.ICMId', 
		InsurancecompanyName nvarchar(200)  N'$.InsurancecompanyName', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode bigint  N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (100) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode', 
		UploadKYC_01 nvarchar (510) N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar(200)  N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar (510) N'$.UploadKYC_03', 
		UploadKYC_04 nvarchar(200)  N'$.UploadKYC_04', 
		UploadKYC_05 nvarchar (200) N'$.UploadKYC_05'
	) AS JsonCCMaster;

 IF(@Action='Create')
 BEGIN

	INSERT INTO InsuranceCompanyMaster(
InsurancecompanyName,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,
UploadKYC_05,Status,InsertType
			)
	Select 
			InsurancecompanyName,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,
			UploadKYC_04,UploadKYC_05,'A'	,'UI' as InsertType
			From #TempICMaster
			Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  Select @ReturnRIid=ICMId From #TempICMaster
  UPDATE CC Set  
          InsurancecompanyName=TRI.InsurancecompanyName,  ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			UpdatedBy='Admin',UpdatedAt=GETdate()
  FROM InsuranceCompanyMaster CC
  INNER JOIN #TempICMaster TRI ON CC.ICMId=TRI.ICMId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLMPMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN


    SELECT * into #TempMPMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    MedicalProviderId bigint  N'$.MedicalProviderId', 
		MedicalProvider nvarchar (100)  N'$.MedicalProvider', 
		Name nvarchar (100) N'$.Name', 
		MedicalProviderCode nvarchar (100) N'$.MedicalProviderCode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (100) N'$.MobileNumber', 
		EmailId nvarchar (100)  N'$.EmailId', 
		Address nvarchar (100)  N'$.Address', 
		City nvarchar (100)  N'$.City', 
		State nvarchar (100)  N'$.State', 
		Zipcode nvarchar (100)  N'$.Zipcode', 
		Location nvarchar (100)  N'$.Location', 
		Category nvarchar (100)  N'$.Category', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (100)  N'$.AccountNumber', 
		IFSCCode nvarchar (510) N'$.IFSCCode', 
		UploadKYC_01 nvarchar (100) N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar (100) N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar(100)  N'$.UploadKYC_03', 
		UploadKYC_04 nvarchar (510) N'$.UploadKYC_04', 
		UploadKYC_05 nvarchar(100)  N'$.UploadKYC_05', 
		Status nvarchar (510) N'$.Status'


	) AS JsonCCMaster;

 IF(@Action='Create')
 BEGIN
INSERT INTO MedicalProviderMaster(
MedicalProvider,Name,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,
UploadKYC_04,UploadKYC_05,Status,InsertType)
Select 
			MedicalProvider,Name,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,
UploadKYC_04,UploadKYC_05,'A'	,'UI' as InsertType
	From #TempMPMaster
	Select @ReturnRIid = @@IDENTITY  
 END

  IF(@Action='Update')
 BEGIN
  Select @ReturnRIid=ReInsurerMasterId From #TempMPMaster
  UPDATE CC Set  

            MedicalProvider=TRI.MedicalProvider,Name=TRI.Name,EmailId=TRI.EmailId,
			BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			Modifiedby='Admin',ModifiedAt=GETdate()
  FROM MedicalProviderMaster CC
  INNER JOIN #TempMPMaster TRI ON CC.MedicalProviderId=TRI.MedicalProviderId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDMLProducerMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ProducerMasterID bigint OUTPUT
 
)
As
BEGIN


    SELECT * into #TempProducerMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    ProducerMasterID bigint N'$.ProducerMasterID', 		
		ProducerName nvarchar(1000) N'$.ProducerName',
		ContactPerson nvarchar(1000) N'$.ContactPerson',
		MobileNumber nvarchar(1000) N'$.MobileNumber',
		EmailId nvarchar(1000) N'$.EmailId',
		[Address] nvarchar(1000) N'$.Address',
		City nvarchar(1000) N'$.City',
		[State] nvarchar(1000) N'$.State',
		Zipcode nvarchar(1000) N'$.Zipcode',
		BusinessDesignationTypeMasterID bigint N'$.BusinessDesignationTypeMasterID', 
		BankID int N'$.BankID',
		AccountNumber nvarchar(1000) N'$.AccountNumber',
		IFSCCode nvarchar(1000) N'$.IFSCCode',
		KYCUploadPath nvarchar(1000) N'$.KYCUploadPath',
		CreatedBy bigint N'$.CreatedBy',
		NationalityId INT N'$.NationalityId',
		
		[Status] nvarchar(1000) N'$.Status'		
	) AS JsonRIMaster;



 IF(@Action='Create')
 BEGIN
   
		--Declare @Code Nvarchar(50)  
		--EXEC pGenerateCode 'ProducerMaster',@Code OUTPUT

			INSERT INTO ProducerMaster (
								ProducerName,ContactPerson,MobileNumber,EmailId,Address,
								City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,
								IFSCCode,KYCUploadPath,InsertType,Status,CreatedBy,CreatedAt,NationlityId			
								)
			SELECT 			
				ProducerName,ContactPerson,MobileNumber,EmailId,[Address],
				City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,
				IFSCCode,KYCUploadPath,'UI' as InsertType,[Status],CreatedBy,Getdate()CreatedAt,NationalityId
			FROM #TempProducerMaster

		SELECT @ProducerMasterID = @@IDENTITY  
 END

  IF(@Action='Update')
 BEGIN

 SELECT @ProducerMasterID=ProducerMasterID FROM #TempProducerMaster
  
  UPDATE RI Set  
	ProducerName =TRI.ProducerName,ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
	[Address]=TRI.[Address],City=TRI.[City],[State]=TRI.State,Zipcode=TRI.Zipcode,BusinessDesignationTypeMasterID=TRI.BusinessDesignationTypeMasterID,
	BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,IFSCCode=TRI.IFSCCode,KYCUploadPath=TRI.KYCUploadPath,
	[Status]=TRI.[Status],UpdatedAt=TRI.CreatedBy,UpdatedBy=GETdate(),NationlityId=TRI.NationalityId
  FROM ProducerMaster RI
  INNER JOIN #TempProducerMaster TRI ON RI.ProducerMasterID=TRI.ProducerMasterID

  	
 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLQuotationMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDMLQuotationMaster] ( 
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
      @ReturnRIid   bigint
    SELECT *
    INTO   #TempQuotationCoverage
    FROM   OPENJSON (@JParamValCoverageDetails, N'$') WITH ( [DeathCoverType] [nvarchar](10) N'$.DeathCoverType', [DeathCoverAnnualLimit] [nvarchar](50) N'$.DeathCoverAnnualLimit', [DeathCoverSumAssuredAmount] [decimal](18, 2) N'$.DeathCoverSumAssuredAmount', [DeathCoverSumAssuredNoOfTimes] [int] N'$.DeathCoverSumAssuredNoOfTimes', [DeathCoverFCL] [decimal](18, 2) N'$.DeathCoverFCL', [AccidentalDeath] [nvarchar](10) N'$.AccidentalDeath', [AccidentalAnnualLimit] [nvarchar](50) N'$.AccidentalAnnualLimit', [AccidentalSumAssuredAmount] [decimal](18, 2) N'$.AccidentalSumAssuredAmount', [AccidentalSumAssuredNoOfTimes] [int] N'$.AccidentalSumAssuredNoOfTimes', [AccidentalFCL] [decimal](18, 2) N'$.AccidentalFCL', [PTD] [nvarchar](10) N'$.PTD', [PTDAccident] [nvarchar](10) N'$.PTDAccident', [PTDSickness] [nvarchar](10) N'$.PTDSickness', [PTDCoverageLimit] [decimal](18, 2) N'$.PTDCoverageLimit', [PTDMaximumLimit] [decimal](18, 2) N'$.PTDMaximumLimit', [PTDWaitingYears] [int] N'$.PTDWaitingYears', [PPD] [nvarchar](10) N'$.PPD', [PPDAccident] [nvarchar](10) N'$.PPDAccident', [PPDSickness] [nvarchar](10) N'$.PPDSickness', [PPDCoverageLimit] [decimal](18, 2) N'$.PPDCoverageLimit', [PPDMaximumLimit] [decimal](18, 2) N'$.PPDMaximumLimit', [PPDWaitingYears] [int] N'$.PPDWaitingYears', [TTD] [nvarchar](10) N'$.TTD', [TTDAccident] [nvarchar](10) N'$.TTDAccident', [TTDSickness] [nvarchar](10) N'$.TTDSickness', [TTDCoverageLimit] [decimal](18, 2) N'$.TTDCoverageLimit', [TTDMaximumLimit] [decimal](18, 2) N'$.TTDMaximumLimit', [TTDWaitingYears] [int] N'$.TTDWaitingYears', [RepatriationBenefit] [nvarchar](10) N'$.RepatriationBenefit', [RBCoverageLimit] [decimal](18, 2) N'$.RBCoverageLimit', [PassiveWarRisk] [nvarchar](10) N'$.PassiveWarRisk', [PWRCoverageLimit] [decimal](18, 2) N'$.PWRCoverageLimit', [TerminalIllness] [nvarchar](10) N'$.TerminalIllness', [TLCoverageLimit] [decimal](18, 2) N'$.TLCoverageLimit', [TLMaximumLimit] [decimal](18, 2) N'$.TLMaximumLimit', [TLWaitingYears] [int] N'$.TLWaitingYears', [CriticalIllness] [nvarchar](10) N'$.CriticalIllness', [CLCoverageLimit] [decimal](18, 2) N'$.CLCoverageLimit', [CLMaximumLimit] [decimal](18, 2) N'$.CLMaximumLimit', [CLWaitingYears] [int] N'$.CLWaitingYears', [OtherAdditionalCover] [nvarchar](MAX) N'$.OtherAdditionalCover', [WarExclusion] [nvarchar](10) N'$.WarExclusion', [WECoverageLimit] [decimal](18, 2) N'$.WECoverageLimit', [WEMaximumLimit] [decimal](18, 2) N'$.WEMaximumLimit', [WEWaitingYears] [int] N'$.WEWaitingYears', [AtomicBiologicalAndCNE] [nvarchar](10) N'$.AtomicBiologicalAndCNE', [ABACNECoverageLimit] [decimal](18, 2) N'$.ABACNECoverageLimit', [ABACNEMaximumLimit] [decimal](18, 2) N'$.ABACNEMaximumLimit', [ABACNEWaitingYears] [int] N'$.ABACNEWaitingYears', [CriminalActContent] [nvarchar](10) N'$.CriminalActContent', [CACCoverageLimit] [decimal](18, 2) N'$.CACCoverageLimit', [CACNEMaximumLimit] [decimal](18, 2) N'$.CACNEMaximumLimit', [CACNEWaitingYears] [int] N'$.CACNEWaitingYears', [HazardousSportsExclusion] [nvarchar](10) N'$.HazardousSportsExclusion', [HSECoverageLimit] [decimal](18, 2) N'$.HSECoverageLimit', [HSEMaximumLimit] [decimal](18, 2) N'$.HSEMaximumLimit', [HSEWaitingYears] [int] N'$.HSEWaitingYears', [AviationExclusion] [nvarchar](10) N'$.AviationExclusion', [AECoverageLimit] [decimal](18, 2) N'$.AECoverageLimit', [AEMaximumLimit] [decimal](18, 2) N'$.AEMaximumLimit', [AEEWaitingYears] [int] N'$.AEEWaitingYears', [IntentionalSelfInflicted] [nvarchar](10) N'$.IntentionalSelfInflicted', [ISSASCoverageLimit] [decimal](18, 2) N'$.ISSASCoverageLimit', [ISSASMaximumLimit] [decimal](18, 2) N'$.ISSASMaximumLimit', [ISSASWaitingYears] [int] N'$.ISSASWaitingYears', [PandemicEpidemicCondition] [nvarchar](10) N'$.PandemicEpidemicCondition', [PECCoverageLimit] [decimal](18, 2) N'$.PECCoverageLimit', [PECMaximumLimit] [decimal](18, 2) N'$.PECMaximumLimit', [PECWaitingYears] [int] N'$.PECWaitingYears', [Sucide] [nvarchar](10) N'$.Sucide', [SECCoverageLimit] [decimal](18, 2) N'$.SECCoverageLimit', [SEMaximumLimit] [decimal](18, 2) N'$.SEMaximumLimit', [SEWaitingYears] [int] N'$.SEWaitingYears', [HIV_AIDS] [nvarchar](10) N'$.HIV_AIDS', [HIVCoverageLimit] [decimal](18, 2) N'$.HIVCoverageLimit', [HIVMaximumLimit] [decimal](18, 2) N'$.HIVMaximumLimit', [HIVWaitingYears] [int] N'$.HIVWaitingYears', [OtherExclusions] [nvarchar](MAX) N'$.OtherExclusions', [CreatedBy] [bigint] N'$.CreatedBy' ) AS JsonQuotationCoverage;
    
    SELECT *
    INTO   #TempQuotationMaster
    FROM   OPENJSON (@JParamValQuotationDetails, N'$') WITH ( WCId int N'$.WCId', InsuranceCompanyName nvarchar(100) N'$.InsuranceCompanyName', ClientCompanyName nvarchar(100) N'$.ClientCompanyName', ScopeofCoverage nvarchar(100) N'$.ScopeofCoverage', Jurisdiction nvarchar(100) N'$.Jurisdiction', QuotationId bigint N'$.QuotationId', Address nvarchar(100) N'$.Address', City nvarchar(100) N'$.City', KYCDetails nvarchar(100) N'$.KYCDetails', BankName nvarchar(100) N'$.BankName', IFSCCode nvarchar(100) N'$.IFSCCode', Branch nvarchar(100) N'$.Branch', PeriodofInsurance DATETIME N'$.PeriodofInsurance', Category nvarchar(100) N'$.Category', TotalEmployees INT N'$.TotalEmployees', TotalDependents INT N'$.TotalDependents', TotalSpousedependents INT N'$.TotalSpousedependents', TotalChilddependents INT N'$.TotalChilddependents', PolicyCurrency Bigint N'$.PolicyCurrency', EligibilityCriteria nvarchar(100) N'$.EligibilityCriteria', SumAssured_SA DECIMAL(18,3) N'$.SumAssured_SA', AgeLimitforEmployees INT N'$.AgeLimitforEmployees', AgeLimitforDependentSpouse INT N'$.AgeLimitforDependentSpouse', AgeLimitforDependentChild INT N'$.AgeLimitforDependentChild', FCL Bigint N'$.FCL', ClientPremium DECIMAL(18,3) N'$.ClientPremium', InsuranceLevy DECIMAL(18,3) N'$.InsuranceLevy', PolicyFee DECIMAL(18,3) N'$.PolicyFee', TotalPremium DECIMAL(18,3) N'$.TotalPremium', BrokerName nvarchar(100) N'$.BrokerName', Brokerage DECIMAL(18,3) N'$.Brokerage', RICount DECIMAL(18,3) N'$.RICount', RI1in_Percentage nvarchar(100) N'$.RI1in_Percentage', RI2in_Percentage nvarchar(100) N'$.RI2in_Percentage', RI3in_Percentage nvarchar(100) N'$.RI3in_Percentage', RIRate nvarchar(100) N'$.RIRate', RIRetension nvarchar(100) N'$.RIRetension', AMIRetension nvarchar(100) N'$.AMIRetension', RIPremium DECIMAL(18,3) N'$.RIPremium', AMILoading DECIMAL(18,3) N'$.AMILoading', TotalEmployeescount INT N'$.TotalEmployeescount', EstimatedAnnualWages DECIMAL(18,3) N'$.EstimatedAnnualWages', AnnualRate nvarchar(100) N'$.AnnualRate', Premium_EAW_Rate nvarchar(100) N'$.Premium_EAW_Rate', Premium_Incl_levy_PolFeeRO DECIMAL(18,3) N'$.Premium_Incl_levy_PolFeeRO', VATonWCpremium DECIMAL(18,3) N'$.VATonWCpremium', TotalPremiumInclVAT DECIMAL(18,3) N'$.TotalPremiumInclVAT', BrokerPercentage nvarchar(100) N'$.BrokerPercentage', BrokerAmount DECIMAL(18,3) N'$.BrokerAmount', Premium_TypeofSumAssured nvarchar(10) N'$.Premium_TypeofSumAssured', Premium_SumAssured DECIMAL(18,3) N'$.Premium_SumAssured', Premium_Salary DECIMAL(18,3) N'$.Premium_Salary', Premium_FCL DECIMAL(18,3) N'$.Premium_FCL', Premium_ClientRate DECIMAL(18,3) N'$.Premium_ClientRate', Premium_VariableSADetails nvarchar(MAX) N'$.Premium_VariableSADetails' ) AS JsonQuotationMaster;
    
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
                                Premium_VariableSADetails
                    )
        SELECT InsuranceCompanyName,
               ClientCompanyName,
               @companyCode,
               ScopeofCoverage,
               Jurisdiction,
               Address,
               City,
               KYCDetails,
               BankName,
               IFSCCode,
               Branch,
               PeriodofInsurance,
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
               Premium_VariableSADetails
        FROM   #TempQuotationMaster
        SELECT @ReturnRIid = @@IDENTITY
        SET @WLDno=
        (
               SELECT 'D/004/'+Branch+'/'+CONVERT(nvarchar(15) ,Datepart(YEAR,Getdate()))+'/'+'2402/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
               FROM   Quotation
               WHERE  QuotationId=@ReturnRIid)
        SET @dno=
        (
               SELECT 'D/004/'+Branch+'/'+CONVERT(nvarchar(15) ,Datepart(YEAR,Getdate()))+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
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
             SELECT 'P/004/'+Branch+'/'+CONVERT(nvarchar(15) ,Datepart(YEAR,Getdate()))+'/'+'2402/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
             FROM   Quotation
             WHERE  QuotationId=@ReturnRIid)
      SET @dno=
      (
             SELECT 'P/004/'+Branch+'/'+CONVERT(nvarchar(15) ,Datepart(YEAR,Getdate()))+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid)
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
                 ScopeofCoverage=TRI.ScopeofCoverage,
                 Jurisdiction=TRI.Jurisdiction,
                 Address=TRI.Address,
                 City=TRI.City,
                 KYCDetails=TRI.KYCDetails,
                 BankName=TRI.BankName,
                 IFSCCode=TRI.IFSCCode,
                 Branch=TRI.Branch,
                 PeriodofInsurance=TRI.PeriodofInsurance,
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
/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLRIMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
 
)
As
BEGIN


    SELECT * into #TempRIMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    ReInsurerMasterId bigint N'$.ReInsurerMasterId', 
		ReInsurerName nvarchar(1000) N'$.ReInsurerName',
		ContactPerson nvarchar(1000) N'$.ContactPerson',
		MobileNumber nvarchar(1000) N'$.MobileNumber',
		EmailId nvarchar(1000) N'$.EmailId',
		Address nvarchar(1000) N'$.Address',
		City nvarchar(1000) N'$.City',
		State nvarchar(1000) N'$.State',
		Zipcode nvarchar(1000) N'$.Zipcode',
		BankID int N'$.BankID',
		AccountNumber nvarchar(1000) N'$.AccountNumber',
		IFSCCode nvarchar(1000) N'$.IFSCCode',
		KYCUploadPath nvarchar(1000) N'$.KYCUploadPath',
		CreatedBy bigint N'$.CreatedBy'
	) AS JsonRIMaster;



 IF(@Action='Create')
 BEGIN
  
 
Declare @Code Nvarchar(50)
  
--EXEC pGenerateCode 'RIMaster',@Code OUTPUT

	INSERT INTO ReInsurerMaster (
			ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,EmailId,
			Address,City,State,Zipcode,BankID,AccountNumber,IFSCCode,KYCUploadPath,
			InsertType,Status,CreatedBy,CreatedAt
			)
	Select 
			ReInsurerName,@Code ReInsurerCode,ContactPerson,MobileNumber,EmailId,
			Address,City,State,Zipcode,BankID,AccountNumber,IFSCCode,KYCUploadPath,
			'UI','A' Status,CreatedBy,Getdate()
	From #TempRIMaster

		Select @ReturnRIid = @@IDENTITY  
 END

  IF(@Action='Update')
 BEGIN

 Select @ReturnRIid=ReInsurerMasterId From #TempRIMaster
  
  UPDATE RI Set  
  ReInsurerName = TRI.ReInsurerName,ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			ModifyBy=TRI.CreatedBy,ModifyAt=GETdate()
  FROM ReInsurerMaster RI
  INNER JOIN #TempRIMaster TRI ON RI.ReInsurerMasterId=TRI.ReInsurerMasterId

  	
 END
END

GO
/****** Object:  StoredProcedure [dbo].[pGenerateBusinessEntites]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [pGenerateBusinessEntites] 'InsuranceCompanyMaster'
--select name+',' from sys.columns where object_id=(select object_id from sys.tables where object_id='1426104121')
CREATE procedure [dbo].[pGenerateBusinessEntites](
@TableName varchar(100)
)
as
begin
--declare @TableName sysname = 'TableName'
declare @Result varchar(max) = 'public class ' + @TableName + '
{'

select @Result = @Result + '
    public ' + ColumnType + NullableSign + ' ' + ColumnName + ' { get; set; }
'
from
(
    select 
        replace(col.name, ' ', '_') ColumnName,
        column_id ColumnId,
        case typ.name 
            when 'bigint' then 'long'
            when 'binary' then 'byte[]'
            when 'bit' then 'bool'
            when 'char' then 'string'
            when 'date' then 'DateTime'
            when 'datetime' then 'DateTime'
            when 'datetime2' then 'DateTime'
            when 'datetimeoffset' then 'DateTimeOffset'
            when 'decimal' then 'decimal'
            when 'float' then 'double'
            when 'image' then 'byte[]'
            when 'int' then 'int'
            when 'money' then 'decimal'
            when 'nchar' then 'string'
            when 'ntext' then 'string'
            when 'numeric' then 'decimal'
            when 'nvarchar' then 'string'
            when 'real' then 'float'
            when 'smalldatetime' then 'DateTime'
            when 'smallint' then 'short'
            when 'smallmoney' then 'decimal'
            when 'text' then 'string'
            when 'time' then 'TimeSpan'
            when 'timestamp' then 'long'
            when 'tinyint' then 'byte'
            when 'uniqueidentifier' then 'Guid'
            when 'varbinary' then 'byte[]'
            when 'varchar' then 'string'
            else 'UNKNOWN_' + typ.name
        end ColumnType,
        case 
            when col.is_nullable = 1 and typ.name in ('bigint', 'bit', 'date', 'datetime', 'datetime2', 'datetimeoffset', 'decimal', 'float', 'int', 'money', 'numeric', 'real', 'smalldatetime', 'smallint', 'smallmoney', 'time', 'tinyint', 'uniqueidentifier') 
            then '?' 
            else '' 
        end NullableSign
    from sys.columns col
        join sys.types typ on
            col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id
    where object_id = object_id(@TableName)
) t
order by ColumnId

set @Result = @Result  + '
}'

print @Result
end
GO
/****** Object:  StoredProcedure [dbo].[pGenerateCode]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[pGenerateCode]--RIMaster'
(  
   @CodeType nvarchar(255)   ,
   @Code NVARCHAR(255)   OUTPUT

)  AS  

BEGIN

Update CodeMaster set ID = ID+1  Where CodeType =@CodeType
 
Select @Code = CodePrefix +Convert(nvarchar(50),ID)
From CodeMaster Where CodeType = @CodeType

--Select @Code

 
END  
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteBenefitsName]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteBenefitsName]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='BenefitsName')
	BEGIN
	  Select BenefitsName,BenefitsCode From BenefitsMaster 
	  where BenefitsName like @prefixText+'%'
	END

	IF(@Action='BenefitsCode')
	BEGIN
	  Select BenefitsName,BenefitsCode From BenefitsMaster 
	  where BenefitsCode like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteCCMaster]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='CCName')
	BEGIN
	  Select ClientCompanyName,ClientCompCode From ClientCompanyMaster 
	  where ClientCompanyName like @prefixText+'%'
	END

	IF(@Action='CCode')
	BEGIN
	  Select ClientCompanyName,ClientCompCode From ClientCompanyMaster 
	  where ClientCompCode like @prefixText+'%'
	END

	IF(@Action='City')
	BEGIN
	  Select Distinct City From ClientCompanyMaster 
	  where City like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteDrugCodeName]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteDrugCodeName]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='DrugName')
	BEGIN
	  Select DrugName,DrugCode From DrugMaster 
	  where DrugName like @prefixText+'%'
	END

	IF(@Action='DrugCode')
	BEGIN
		  Select DrugName,DrugCode From DrugMaster 
	  where DrugCode like @prefixText+'%'
	END

	

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteEmpMaster]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN


	IF(@Action='EName')
	BEGIN
	  Select EmployeeName,EmployeeUniqueNumber From EmployeeMaster 
	  where EmployeeName like @prefixText+'%'
	END

	IF(@Action='EmpId')
	BEGIN
	   Select EmployeeName,EmployeeUniqueNumber From EmployeeMaster 
	  where EmployeeUniqueNumber like @prefixText+'%'
	END

	IF(@Action='City')
	BEGIN
	 Select EmployeeName,EmployeeUniqueNumber From EmployeeMaster 
	  where EmployeeName like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteICMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteICMaster]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='ICName')
	BEGIN
	  Select InsurancecompanyName,InsCompCode From InsuranceCompanyMaster 
	  where InsurancecompanyName like @prefixText+'%'
	END

	IF(@Action='ICCode')
	BEGIN
	  Select InsurancecompanyName,InsCompCode From InsuranceCompanyMaster 
	  where InsCompCode like @prefixText+'%'
	END

	IF(@Action='City')
	BEGIN
	  Select Distinct City From InsuranceCompanyMaster 
	  where City like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteMPMaster]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS

BEGIN

	IF(@Action='MedicalProvider')
	BEGIN
	  Select MedicalProvider,Name From MedicalProviderMaster 
	  where MedicalProvider like @prefixText+'%'
	END

	IF(@Action='Name')
	BEGIN
	  Select MedicalProvider,Name From MedicalProviderMaster 
	  where Name like @prefixText+'%'
	END

	IF(@Action='ContactPerson')
	BEGIN
	  Select Distinct ContactPerson From MedicalProviderMaster 
	  where ContactPerson like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteProducerName_Code_City]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteProducerName_Code_City]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='PMName')
	BEGIN
	  SELECT ProducerName,ProducerCode FROM [ProducerMaster] 
	  WHERE ProducerName like @prefixText+'%'
	END

	IF(@Action='PMCode')
	BEGIN
	  SELECT ProducerName,ProducerCode FROM [ProducerMaster] 
	  WHERE ProducerCode like @prefixText+'%'
	END

	IF(@Action='PMCity')
	BEGIN
	  SELECT DISTINCT City FROM [ProducerMaster] 
	  WHERE City like @prefixText+'%'
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteRINameRICodeCity]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pGetAutocompleteRINameRICodeCity]
(
 @prefixText Nvarchar(200),
 @Action Nvarchar(100)
)
AS
BEGIN

	IF(@Action='RIName')
	BEGIN
	  Select ReInsurerName,ReInsurerCode From [ReInsurerMaster] 
	  where ReInsurerName like @prefixText+'%'
	END

	IF(@Action='RICode')
	BEGIN
	  Select ReInsurerName,ReInsurerCode From [ReInsurerMaster] 
	  where ReInsurerCode like @prefixText+'%'
	END

	IF(@Action='City')
	BEGIN
	  Select Distinct City From [ReInsurerMaster] 
	  where City like @prefixText+'%'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetBankMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetBankMaster]
AS
BEGIN 

 SELECT BankID,BankName,BankCode
 FROM BankMaster 
 WHERE [Status]='A'

END
GO
/****** Object:  StoredProcedure [dbo].[pGetBenefitsMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetBenefitsMaster] 
(
 @BenefitsName NVARCHAR(200),
 @BenefitsCode NVARCHAR(200)
)
AS
BEGIN 

		IF(ISNULL(@BenefitsName,'')!='' AND ISNULL(@BenefitsCode,'')!='')
	BEGIN

		select BenefitsId, BenefitsName,BenefitsCode From benefitsmaster where BenefitsName=@BenefitsName and BenefitsCode=@BenefitsCode

	END
	ELSE IF(ISNULL(@BenefitsName,'')!='')
	BEGIN
	
	select BenefitsId, BenefitsName,BenefitsCode From benefitsmaster where BenefitsName=@BenefitsName --OR BenefitsCode=@BenefitsCode

	END
	ELSE IF(ISNULL(@BenefitsCode,'')!='')
	BEGIN
	
	select BenefitsId, BenefitsName,BenefitsCode From benefitsmaster where BenefitsCode=@BenefitsCode

	END
END



GO
/****** Object:  StoredProcedure [dbo].[pGetBusinessDesignationTypeMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[pGetBusinessDesignationTypeMaster]
AS
BEGIN 

Select BusinessDesignationTypeMasterID,	TypeName From BusinessDesignationTypeMaster Where  Status='A'

END

GO
/****** Object:  StoredProcedure [dbo].[pGetCCMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetCCMaster] 
(
 @CCName NVARCHAR(200),
 @CCCode NVARCHAR(200),
 @CCCity NVARCHAR(200)
)
AS
BEGIN 


	IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='' AND ISNULL(@CCCity,'')!='')
	BEGIN

		SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
	
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode AND City=@CCCity

	END
	ELSE IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='')
	BEGIN
	SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode --AND City=@CCity


	END
	ELSE
	BEGIN 
 
			SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetClientCompanyMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[pGetClientCompanyMaster]
as
begin
select ClientCompanyMasterId,ClientCompCode,ClientCompanyName from ClientCompanyMaster


--declare @p3 dbo.UDT_Quotation
--insert into @p3 values(0,N'',N'Bajaj Allianz Life Insurance Company',N'Cognizant',N'Broker',N'Modern Gulf Insurance Services',10,4,N'BAND - A',NULL,N'on',N'Dubai~kuwait~England~America',N'on~on~on~on',20000,N'',10000,N'',10000,10000,N'Worldwide',N'Specific Country',N'on',12000,66,200,12266,N'IPHospitalizationClassLimit',20000,N'IPICUCoronaryTreatementLimit',20000,N'IPVariousTherapiesLimit',20000,N'IPOrganTransplantationServicesLimit',20000,N'IPAmbulanceServicesLimit',20000,N'IPCompanionRoomBoardExpensesLimit',20000,2002,2000,2000,N'Benefits',N'Limit Per Person',1,N'Co-Pay',0,N'Co-Pay',0,N'OPPhysiotheraphyLimit',19999,N'OPDaycareTreatmentLimit',10000,N'OPOutPatientSurgeryLimit',20000,N'OPWorkRelatedInjuriesLimit',20000,N'OPAccidentalDamageNaturalTeethLimit',20000,N'OPNewBornBabyCoverageLimit',20000,N'OPNursingAtHomeLimit',20000,N'Homeopathy~Ayurveda~Chiropractic',N'Pool Limit Per Policy',0,N'Limit Per Person',1,N'England~America',N'Covered in Full',N'Clinic',N'Within the Resident Country',N'kuwait',N'Worldwide',N'Free Access',N'England~America',N'Benefits',N'Descriptions',N'Exclusions')

--exec SP_CreateQuotation @QuotationId=0,@UserName=N'Admin',@UDT_QuotationGenerator=@p3
end
GO
/****** Object:  StoredProcedure [dbo].[pGetDefaultMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetDefaultMaster]
AS
BEGIN 

select distinct ICMId,InsurancecompanyName from InsuranceCompanyMaster
select distinct LOBId,LOBName from LOB
select distinct ProducerMasterID,ProducerName from ProducerMaster
select distinct ReInsurerMasterId,ReInsurerName from ReInsurerMaster
select distinct ClientCompanyMasterId,ClientCompanyName From ClientCompanyMaster where ClientCompanyName is not null
select distinct BusinessDesignationTypeMasterID,TypeName from BusinessDesignationTypeMaster
select distinct BranchCode,BranchCode+'-'+BranchName as BranchName from BranchMaster
select distinct NationalityId,Name from Nationality



END

GO
/****** Object:  StoredProcedure [dbo].[pGetDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pGetDrugMaster] 
(
 @DrugName NVARCHAR(200),
 @DrugCode NVARCHAR(200)
)
AS
BEGIN 

	Select DrugId,DrugCode,DrugName from DrugMaster where DrugCode=@DrugCode or DrugName=@DrugName

END


GO
/****** Object:  StoredProcedure [dbo].[pGetEmpCount]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[pGetEmpCount](@CompanyName nvarchar(5)

)
as
begin
select COUNT(EmployeeId) as EmpCount  from EmployeeMaster where ClientName=@CompanyName 
end

GO
/****** Object:  StoredProcedure [dbo].[pGetEmpMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetEmpMaster] 
(
 @EmpName NVARCHAR(200),
 @EmpId NVARCHAR(200),
 @ClientName NVARCHAR(200)
)
AS
BEGIN  
	IF(ISNULL(@EmpName,'')!='' AND ISNULL(@EmpId,'')!='' AND ISNULL(@ClientName,'')!='')
	BEGIN

		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,ClientName,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		,SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,
SpouseSalary,ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured
		
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName

	END
	ELSE IF(ISNULL(@EmpName,'')!='' AND ISNULL(@EmpId,'')!='')
	BEGIN
	
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,ClientName, Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		,SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,
SpouseSalary,ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId --AND ClientName=@ClientName


	END
	ELSE
	BEGIN 
 
			
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,ClientName,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		,SpouseAge,ChildAge,SpouseCategory,ChildCategory,SpouseDOB,ChildDOB,SpouseEffectiveDate,ChildEffectiveDate,SpouseNationality,ChildNationality,SpouseRemarks,ChildRemarks,
SpouseSalary,ChildSalary,SpouseStatus,ChildStatus,SpouseSumAssured,ChildSumAssured
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName --AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetEndorsement]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pGetEndorsement]

as
begin

	SELECT EndorsementId,QuotationId,
		TicketNumber,ClientName,MailReceivedDate,GLPolicyNumber,WCPolicyNumber,
		PolicyPeriod,ErrorDescription,EndorsementType,GLPremium,WCPremium,MedicalPolicyNo,
		MedicalPremium,CreatedAt,CreatedBy 
	FROM Endorsement ORDER BY CreatedAt DESC
end
GO
/****** Object:  StoredProcedure [dbo].[pGetGLWLPDFdata]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetGLWLPDFdata]
(
 @EndorsementId bigint,
 @PdfType NvarChar(25)
)
AS 
BEGIN

	IF (@PdfType ='GL')
	Begin
	print 1
		SELECT 
		  'ClssOfInsurance' as ClssOfInsurance ,'TT123' as EndorsementNo ,
		   Q.PolicyNo ,ClientName,PolicyPeriod,
		   GL.GLEndorsementId,GL.EmployeeName,GL.DOB,GL.SumAssured,GL.EffectiveDate ,TE.ClientName
		FROM [Endorsement]  TE
		INNER JOIN Quotation Q ON TE.QuotationId=Q.QuotationId
		INNER JOIN GLEndorsement GL ON TE.EndorsementId = GL.EndorsementId
		WHERE TE.EndorsementId=@EndorsementId

	END
	ELSE
	BEGIN
		SELECT 
		  'ClssOfInsurance' as ClssOfInsurance ,'TT123' as EndorsementNo ,
		   Q.PolicyNo ,ClientName,PolicyPeriod,
		   WL.WLEndorsementId as GLEndorsementId,WL.EmployeeName,WL.DOB,WL.EAWRo as SumAssured,WL.EffectiveDate ,TE.ClientName
		FROM [Endorsement]  TE
		INNER JOIN Quotation Q ON TE.QuotationId=Q.QuotationId
		INNER JOIN WLEndorsement WL ON TE.EndorsementId = WL.EndorsementId
		WHERE TE.EndorsementId=@EndorsementId

	END
END
GO
/****** Object:  StoredProcedure [dbo].[pGetGLWLPolicyNos]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pGetGLWLPolicyNos]
(
@CompanyName nvarchar(100)
)
as

begin
Select top 1 isnull(PolicyNo,'') as GLPolicyNumber,	isnull(WLPolicyNo,'') as WCPolicyNumber,
CONVERT(nvarchar(10), Q.CreatedAt, 103)+' To '+CONVERT(nvarchar(10), dateadd(year,1,Q.CreatedAt), 103) as
PolicyPeriod	 from Quotation Q
Inner join ClientCompanyMaster CCM on CCM.ClientCompanyMasterId=Q.ClientCompanyName
where CCM.ClientCompanyName=@CompanyName and Q.Status='Approved'
end





		
GO
/****** Object:  StoredProcedure [dbo].[pGetICMMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetICMMaster] 
(
 @ICName NVARCHAR(200),
 @ICCode NVARCHAR(200),
 @ICCity NVARCHAR(200)
)
AS
BEGIN 

	IF(ISNULL(@ICName,'')!='' AND ISNULL(@ICCode,'')!='' AND ISNULL(@ICCity,'')!='')
	BEGIN
	
		SELECT ICMId,InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BI.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName AND  InsCompCode=@ICCode AND City=@ICCity

	END
	ELSE IF(ISNULL(@ICName,'')!='' AND ISNULL(@ICCode,'')!='')
	BEGIN
	print 3
	SELECT ICMId,InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BI.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName AND  InsCompCode=@ICCode --AND City=@CCity
		
	END
	ELSE
	BEGIN 
 
			SELECT ICMId,InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BI.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName 
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetMPMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetMPMaster] 
(
 @MPName NVARCHAR(200),
 @MPProvider NVARCHAR(200),
 @ContactPerson NVARCHAR(200)
)
AS
BEGIN 
--MEDICALPROVIDERMASTER
	IF(ISNULL(@MPName,'')!='' AND ISNULL(@MPProvider,'')!='' AND ISNULL(@ContactPerson,'')!='')
	BEGIN
	

		SELECT MedicalProviderId,MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName AND  MedicalProvider=@MPProvider AND ContactPerson=@ContactPerson

	END
	ELSE IF(ISNULL(@MPName,'')!='' AND ISNULL(@MPProvider,'')!='')
	BEGIN
	
		SELECT MedicalProviderId,MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName AND  MedicalProvider=@MPProvider --AND ContactPerson=@ContactPerson


	END
	ELSE
	BEGIN 
 print 1

				SELECT MedicalProviderId,MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName or  MedicalProvider=@MPProvider --AND ContactPerson=@ContactPerson
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetPolicyIssuance]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[pGetPolicyIssuance](
@DraftNo nvarchar(20)
)
as begin
if(@DraftNo='') set @DraftNo=null 
select QuotationId, DraftNo,WLDraftNo,ISNULL(PolicyNo,'Yet to Generate') as PolicyNo,ICM.InsuranceCompanyName,CM.ClientCompanyName,Q.Status from 
Quotation Q
Inner join InsuranceCompanyMaster ICM on ICM.ICMId=Q.InsuranceCompanyName
inner join ClientCompanyMaster CM on CM.ClientCompanyMasterId=Q.ClientCompanyName
 where (@DraftNo IS NULL OR DraftNo = @DraftNo)
order by Q.QuotationId 
end
GO
/****** Object:  StoredProcedure [dbo].[pGetProducerMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetProducerMaster] 
(
 @PMName NVARCHAR(200),
 @PMCode NVARCHAR(200),
 @PMCity NVARCHAR(200)
)
AS
BEGIN 

	IF(ISNULL(@PMName,'')!='' AND ISNULL(@PMCode,'')!='' AND ISNULL(@PMCity,'')!='')
	BEGIN
	  	SELECT 
			ProducerMasterID,ProducerName,ProducerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,PM.BankID,BI.BankName,AccountNumber,IFSCCode,
			SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName,PM.NationlityId AS NationalityId
		FROM ProducerMaster PM
		INNER JOIN BankMaster BI ON BI.BankID=PM.BankID
		INNER JOIN BusinessDesignationTypeMaster BDTM ON BDTM.BusinessDesignationTypeMasterID=PM.BusinessDesignationTypeMasterID
		WHERE  ProducerName=@PMName AND  ProducerCode=@PMCode AND City=@PMCity AND PM.[Status]='A'

	END
	ELSE IF(ISNULL(@PMName,'')!='' AND ISNULL(@PMCode,'')!='')
	BEGIN

	 	SELECT 
			ProducerMasterID,ProducerName,ProducerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,PM.BankID,BI.BankName,AccountNumber,IFSCCode,
			SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName,PM.NationlityId AS NationalityId
		FROM ProducerMaster PM
		INNER JOIN BankMaster BI ON BI.BankID=PM.BankID
		INNER JOIN BusinessDesignationTypeMaster BDTM ON BDTM.BusinessDesignationTypeMasterID=PM.BusinessDesignationTypeMasterID
		WHERE  ProducerName= @PMName AND  ProducerCode=@PMCode AND PM.[Status]='A'

	END
	ELSE
	BEGIN 
 
	SELECT 
			ProducerMasterID,ProducerName,ProducerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,PM.BankID,BI.BankName,AccountNumber,IFSCCode,
			SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName,PM.NationlityId AS NationalityId
		FROM ProducerMaster PM
		INNER JOIN BankMaster BI ON BI.BankID=PM.BankID
		INNER JOIN BusinessDesignationTypeMaster BDTM ON BDTM.BusinessDesignationTypeMasterID=PM.BusinessDesignationTypeMasterID
		WHERE  ProducerName like @PMName+'%' AND PM.[Status]='A'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetProducersCM]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[pGetProducersCM]
(
@BusinessType nvarchar(40)
)
as
begin

select PM.ProducerMasterID,PM.ProducerName FROM ProducerMaster PM where BusinessDesignationTypeMasterID=@BusinessType

end
GO
/****** Object:  StoredProcedure [dbo].[pGetQuotation]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pGetQuotation](
@QuotationId bigint)
as begin
select 
Q.WCId, Q.QuotationId,Q.DraftNo,Q.WLDraftNo,Q.Status,Q.PolicyNo,Q.InsuranceCompanyName,Q.ICMId,Q.ClientCompanyName,Q.ClientCompanyCode,ISNULL(Q.ClientCompanyMasterId,0) AS ClientCompanyMasterId,Q.ScopeofCoverage,
Q.Jurisdiction,Q.Address,Q.City,Q.KYCDetails,Q.BankName,Q.IFSCCode,Q.Branch,isnull(Q.PeriodofInsurance,getdate()) as PeriodofInsurance,Q.Category,Q.TotalEmployees,Q.TotalDependents,
Q.TotalSpousedependents,Q.TotalChilddependents,isnull(Q.PolicyCurrency,0) as PolicyCurrency,Q.EligibilityCriteria,Q.SumAssured_SA,Q.AgeLimitforEmployees,Q.AgeLimitforDependentSpouse,Q.AgeLimitforDependentChild,
Q.FCL,Q.ClientPremium,isnull(Q.InsuranceLevy,0.55) as InsuranceLevy,Q.PolicyFee,Q.TotalPremium,Q.BrokerName,Q.Brokerage,Q.RICount,Q.RI1in_Percentage,Q.RI2in_Percentage,Q.RI3in_Percentage,
Q.RIRate,Q.RIRetension,Q.AMIRetension,Q.RIPremium,Q.AMILoading,Q.TotalEmployeescount,Q.EstimatedAnnualWages,Q.AnnualRate,Q.Premium_EAW_Rate,Q.Premium_Incl_levy_PolFeeRO,Q.VATonWCpremium,
Q.TotalPremiumInclVAT,Q.BrokerPercentage,Q.BrokerAmount,Q.CreatedBy,Q.CreatedAt,Q.UpdatedBy,Q.UpdatedAt,QCD.QuotationCoverageDetailID,QCD.QuotationID,QCD.DeathCoverType,
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
GO
/****** Object:  StoredProcedure [dbo].[pGetQuotationReinsurer]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[pGetQuotationReinsurer](@InsuranceCompanyName nvarchar(50),
@ClientCompanyName                                              nvarchar(50))
AS
  BEGIN
    DECLARE @Premium_SumAssured DECIMAL(18,2)
    SET @Premium_SumAssured=500000
    SELECT DISTINCT @Premium_SumAssured AS Premium_SumAssured ,
                    GrossRate           AS Premium_GrossRate,
                    PM.ProducerName		AS Premium_BrokerName,
                    ProducerCommission	AS Premium_BrokerCommssion
    FROM            ClientCompanyMaster CM
    INNER JOIN      ProducerMaster Pm
    ON              cm.ProducerName=PM.ProducerMasterID
    WHERE           CM.InsuranceCompanyId=@InsuranceCompanyName
    AND             CM.ClientCompanyName=@ClientCompanyName
    DECLARE @JParamVal nvarchar(MAX)
    SET @JParamVal=
    (
                    SELECT DISTINCT RINAME
                    FROM            ClientCompanyMaster CM
                    WHERE           CM.InsuranceCompanyId=@InsuranceCompanyName
                    AND             CM.ClientCompanyName=@ClientCompanyName)
    SELECT *
    INTO   #TempCCMaster
    FROM   OPENJSON (@JParamVal, N'$') WITH ( RIName nvarchar (MAX) N'$.RIName', RIRetention DECIMAL(18,2) ) AS JsonCCMaster;
    
    SELECT     tt.RIName                                                                        AS Premium_RIName,
               RINetRate                                                                        AS Premium_RInetrate,
               (@Premium_SumAssured/100)* CM.RINetRate                                          AS Premium_RIPremium ,
               tt.RIRetention                                                                   AS Premium_RIRetention,
               CM.AMIRetention                                                                  AS Premium_InsurerRetention,
               ((@Premium_SumAssured/100)* CM.RINetRate)*((tt.RIRetention/100))                 AS Premium_RIRetentionPremium,
               ((@Premium_SumAssured/100)* CM.RINetRate)*((cm.AMIRetention))/100                AS Premium_InsurerRetentionPremium,
               (@Premium_SumAssured/100)*CM.GrossRate-((@Premium_SumAssured* CM.RINetRate)/100) AS Premium_InsurerLoadingPremium,
               --(@Premium_SumAssured/100)*CM.GrossRate AS Premium_NetPremium,
               1.67 AS Premium_InsurerLoading
               --as NetPremium
    FROM       #TempCCMaster tt
    INNER JOIN ClientCompanyMaster CM
    ON         CM.InsuranceCompanyId=@InsuranceCompanyName
    AND        CM.ClientCompanyName=@ClientCompanyName
  END
GO
/****** Object:  StoredProcedure [dbo].[pGetRIMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pGetRIMaster] 
(
 @RIName NVARCHAR(200),
 @RICode NVARCHAR(200),
 @RICity NVARCHAR(200)
)
AS
BEGIN 

	IF(ISNULL(@RIName,'')!='' AND ISNULL(@RICode,'')!='' AND ISNULL(@RICity,'')!='')
	BEGIN

		SELECT 
			ReInsurerMasterId,ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,AccountNumber,IFSCCode,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			RI.[Status]
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName AND  ReInsurerCode=@RICode AND City=@RICity AND RI.[Status]='A'

	END
	ELSE IF(ISNULL(@RIName,'')!='' AND ISNULL(@RICode,'')!='')
	BEGIN

		SELECT 
			ReInsurerMasterId,ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,AccountNumber,IFSCCode,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			RI.[Status]
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName AND  ReInsurerCode=@RICode  AND RI.[Status]='A'

	END
	ELSE
	BEGIN 
 
		SELECT 
			ReInsurerMasterId,ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,AccountNumber,IFSCCode,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,
			RI.[Status]
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName AND RI.[Status]='A'
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetSumOfSalary]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pGetSumOfSalary](@CompanyName nvarchar(5)

)
as
begin
select sum(Salary) as Salary  from EmployeeMaster where ClientName=@CompanyName group by Salary
end

GO
/****** Object:  StoredProcedure [dbo].[pInsertBusinessType]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pInsertBusinessType]
(
 @BusinessType Nvarchar(50),
 @BusinessTypeId bigint OUTPUT
)
As
BEGIN
If not exists(select 1 from BusinessDesignationTypeMaster where TypeName=@BusinessType)
begin
Insert into BusinessDesignationTypeMaster(TypeName,TypeCode,Status,CreatedBy,CreatedAt)
select @BusinessType,@BusinessType,'A',1,getdate()
Select @BusinessTypeId = @@IDENTITY  
end
else
begin
select @BusinessTypeId=0
end
END


GO
/****** Object:  StoredProcedure [dbo].[pInsertEndorsement]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pInsertEndorsement] (

	@UDT_Endorsement dbo.UDT_Endorsement readonly,
	@UDTGLEndorsement dbo.UDT_GLEndorsement readonly,
	@UDTWLEndorsement dbo.UDT_WLEndorsement readonly,
	@UserName nvarchar(100)) 

AS 
  BEGIN 
  declare @EndorsementId bigint
 
 Declare @QuotationId bigint
  Select @QuotationId=QuotationId From Quotation where PolicyNo IN (	SELECT  Distinct
		PolicyNo=GLPolicyNumber

	FROM @UDT_Endorsement)

	INSERT INTO Endorsement(
						TicketNumber,ClientName,MailReceivedDate,GLPolicyNumber,WCPolicyNumber,PolicyPeriod,
						ErrorDescription,EndorsementType,GLPremium,WCPremium,MedicalPolicyNo,MedicalPremium,
						CreatedAt,CreatedBy,GLpostedFileDocPath,QuotationId
						   )
	SELECT 
		TicketNumber,ClientName,MailReceivedDate,GLPolicyNumber,WCPolicyNumber,
		PolicyPeriod,ErrorDescription,EndorsementType,GLPremium,WCPremium,
		MedicalPolicyNo,MedicalPremium,GETDATE(),@UserName,GLpostedFileDocPath , @QuotationId
	FROM @UDT_Endorsement
	set @EndorsementId=SCOPE_IDENTITY()

	INSERT INTO GLEndorsement(EndorsementId,EmployeeName,DOB,SumAssured,EffectiveDate,CreatedAt,CreatedBy)
	SELECT @EndorsementId,EmployeeName,DOB,SumAssured,EffectiveDate,GETDATE(),@UserName FROM @UDTGLEndorsement


	INSERT INTO WLEndorsement(EndorsementId,EmployeeName,DOB,EAWRo,EffectiveDate,CreatedAt,CreatedBy)
	SELECT @EndorsementId,EmployeeName,DOB,EAWRo,EffectiveDate,GETDATE(),@UserName FROM @UDTWLEndorsement

	SELECT EndorsementId,
		TicketNumber,ClientName,MailReceivedDate,GLPolicyNumber,WCPolicyNumber,
		PolicyPeriod,ErrorDescription,EndorsementType,GLPremium,WCPremium,MedicalPolicyNo,
		MedicalPremium,CreatedAt,CreatedBy 
	FROM Endorsement ORDER BY CreatedAt DESC
  
END 

 
GO
/****** Object:  StoredProcedure [dbo].[pRejectQuotation]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pRejectQuotation]
(
 @Action Nvarchar(200),
 @QId Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
 
)
As
BEGIN

update Quotation set Status='Rejected',PolicyNo='' where QuotationId=@QId

  	Select @ReturnRIid=@@ROWCOUNT

END

GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathCCMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pUpdateFolderPathCCMasterPath]
(
	@ClientCompanyMasterId BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update ClientCompanyMaster set KYCUploadPath =@KYCzipPath WHERE ClientCompanyMasterId=@ClientCompanyMasterId
END
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathDrugMaster]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pUpdateFolderPathDrugMaster]
(
	@DrugID BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update DrugMaster set KYCUploadPath =@KYCzipPath WHERE drugid=@DrugID


 
END
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathEmpMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pUpdateFolderPathEmpMasterPath]
(
	@EmployeeId BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update EMPLOYEEMASTER set KYCUploadPath =@KYCzipPath WHERE EmployeeId=@EmployeeId
END
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathICMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pUpdateFolderPathICMasterPath]
(
	@ICMId BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update InsuranceCompanyMaster set KYCUploadPath =@KYCzipPath WHERE ICMId=@ICMId
END
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathMPMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pUpdateFolderPathMPMasterPath]
(
	@MedicalProviderId BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update MedicalProviderMaster set KYCUploadPath =@KYCzipPath WHERE MedicalProviderId=@MedicalProviderId
END
GO
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathProducerMasterPath]    Script Date: 9/15/2021 1:09:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pUpdateFolderPathProducerMasterPath]
(
	@ProducerMasterID BIGINT,
	@KYCzipPath NVARCHAR(1000)
)
AS
BEGIN
 Update ProducerMaster set KYCUploadPath =@KYCzipPath WHERE ProducerMasterID=@ProducerMasterID
END

GO

USE [Totalligent]
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_EmployeeMaster]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_EmployeeMaster] AS TABLE(
	[EmployeeId] [bigint] NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeUniqueNumber] [nvarchar](50) NULL,
	[Relation] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Age] [int] NULL,
	[Salary] [decimal](18, 2) NULL,
	[EAW] [decimal](18, 2) NULL,
	[SumAssured] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[Remarks] [nvarchar](200) NULL,
	[EntryType] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_Endorsement]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_Endorsement] AS TABLE(
	[TicketNumber] [bigint] NULL,
	[ClientName] [nvarchar](500) NULL,
	[MailReceivedDate] [datetime] NULL,
	[GLPolicyNumber] [nvarchar](200) NULL,
	[WCPolicyNumber] [nvarchar](200) NULL,
	[PolicyPeriod] [nvarchar](50) NULL,
	[ErrorDescription] [nvarchar](100) NULL,
	[EndorsementType] [nvarchar](30) NULL,
	[GLPremium] [decimal](18, 2) NULL,
	[WCPremium] [decimal](18, 2) NULL,
	[MedicalPolicyNo] [nvarchar](100) NULL,
	[MedicalPremium] [decimal](18, 2) NULL,
	[GLpostedFileDocPath] [nvarchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_GLEndorsement]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_GLEndorsement] AS TABLE(
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[SumAssured] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_InsCompanyRegister]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_InsCompanyRegister] AS TABLE(
	[CompanyName] [nvarchar](150) NULL,
	[PolicyNumber] [nvarchar](50) NOT NULL,
	[CompanyAddress] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateName] [nvarchar](100) NULL,
	[ZipCode] [bigint] NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNumber] [bigint] NULL,
	[EmailId] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[Broker] [nvarchar](75) NULL,
	[Reinsurer] [nvarchar](150) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_ProducerMaster]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_ProducerMaster] AS TABLE(
	[MasterType] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[EmailId] [nvarchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_Quotation]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_Quotation] AS TABLE(
	[QuotationId] [bigint] NULL,
	[DraftNo] [nvarchar](100) NULL,
	[CIInsuranceCompanyName] [nvarchar](100) NULL,
	[CIClientCompanyName] [nvarchar](100) NULL,
	[CIProducerType] [nvarchar](100) NULL,
	[CIProducerName] [nvarchar](100) NULL,
	[CISelectCommission] [decimal](18, 2) NULL,
	[CINoOfPlanCategories] [int] NULL,
	[GBMedicalProviderNetwork] [nvarchar](100) NULL,
	[GBMedicalNetworkHospitals] [nvarchar](180) NULL,
	[GBScopeOfCover] [nvarchar](100) NULL,
	[GBAreaOfCoverage] [nvarchar](100) NULL,
	[GBPersonCovered] [nvarchar](100) NULL,
	[GBAnnualBenefitsLimit] [decimal](18, 2) NULL,
	[GBIsPerClaimLimitIP] [nvarchar](10) NULL,
	[GBPerClaimLimitIP] [decimal](18, 2) NULL,
	[GBIsPerClaimLimitOP] [nvarchar](10) NULL,
	[GBPerClaimLimitOP] [decimal](18, 2) NULL,
	[GBPreExisting_ChronicLimit] [decimal](18, 2) NULL,
	[GBGeoThreateningEmergencyTreatment] [nvarchar](100) NULL,
	[GBGeoElectiveTreatement] [nvarchar](100) NULL,
	[GBGeoOutsideResidentCountry] [nvarchar](100) NULL,
	[GBPremium] [decimal](18, 2) NULL,
	[GBInsuranceLevy] [decimal](18, 2) NULL,
	[GBPolicyFee] [decimal](18, 2) NULL,
	[GBTotalPremium] [decimal](18, 2) NULL,
	[IPHospitalizationClass] [nvarchar](100) NULL,
	[IPHospitalizationClassLimit] [decimal](18, 2) NULL,
	[IPICUCoronaryTreatement] [nvarchar](50) NULL,
	[IPICUCoronaryTreatementLimit] [decimal](18, 2) NULL,
	[IPVariousTherapies] [nvarchar](50) NULL,
	[IPVariousTherapiesLimit] [decimal](18, 2) NULL,
	[IPOrganTransplantationServices] [nvarchar](50) NULL,
	[IPOrganTransplantationServicesLimit] [decimal](18, 2) NULL,
	[IPAmbulanceServices] [nvarchar](50) NULL,
	[IPAmbulanceServicesLimit] [decimal](18, 2) NULL,
	[IPCompanionRoomBoardExpenses] [nvarchar](50) NULL,
	[IPCompanionRoomBoardExpensesLimit] [decimal](18, 2) NULL,
	[IPHospitalCashBenefitsCashPerDay] [decimal](18, 2) NULL,
	[IPHospitalCashBenefitsCashTotal] [decimal](18, 2) NULL,
	[IPRepatriationCostTraansport] [decimal](18, 2) NULL,
	[IPAddBenefits] [nvarchar](100) NULL,
	[OPPhysicianConsultationDeductible] [nvarchar](50) NULL,
	[OPPhysicianConsultationDeductibleLimit] [decimal](18, 2) NULL,
	[OPDiagnostics] [nvarchar](50) NULL,
	[OPDiagnosticsLimit] [decimal](18, 2) NULL,
	[OPPharmaceuticals] [nvarchar](50) NULL,
	[OPPharmaceuticalsLimit] [decimal](18, 2) NULL,
	[OPPhysiotheraphy] [nvarchar](50) NULL,
	[OPPhysiotheraphyLimit] [decimal](18, 2) NULL,
	[OPDaycareTreatment] [nvarchar](50) NULL,
	[OPDaycareTreatmentLimit] [decimal](18, 2) NULL,
	[OPOutPatientSurgery] [nvarchar](50) NULL,
	[OPOutPatientSurgeryLimit] [decimal](18, 2) NULL,
	[OPWorkRelatedInjuries] [nvarchar](50) NULL,
	[OPWorkRelatedInjuriesLimit] [decimal](18, 2) NULL,
	[OPAccidentalDamageNaturalTeeth] [nvarchar](50) NULL,
	[OPAccidentalDamageNaturalTeethLimit] [decimal](18, 2) NULL,
	[OPNewBornBabyCoverage] [nvarchar](50) NULL,
	[OPNewBornBabyCoverageLimit] [decimal](18, 2) NULL,
	[OPNursingAtHome] [nvarchar](50) NULL,
	[OPNursingAtHomeLimit] [decimal](18, 2) NULL,
	[OPAlternativeMedicine] [nvarchar](80) NULL,
	[OPAlternativeMedicineCoverage] [nvarchar](50) NULL,
	[OPAlternativeMedicineCoverageLimit] [decimal](18, 2) NULL,
	[OPAlternativeMedicineDeductible] [nvarchar](50) NULL,
	[OPAlternativeMedicineDeductibleLimit] [decimal](18, 2) NULL,
	[OPFreeAccessOutsideOMAN] [nvarchar](100) NULL,
	[EBFreeAccessTPANetwork] [nvarchar](100) NULL,
	[EBFreeAccessTPANetworkLimit] [nvarchar](100) NULL,
	[EBReimbursementNonNetworkMedicalProviders] [nvarchar](100) NULL,
	[EBReimbursementNonNetworkMedicalProvidersLimit] [nvarchar](100) NULL,
	[EBEmergencyTreatment] [nvarchar](100) NULL,
	[EBEmergencyTreatmentLimit] [nvarchar](100) NULL,
	[EBEmergencyTreatmentCountry] [nvarchar](100) NULL,
	[ABBenefits] [nvarchar](500) NULL,
	[ABDescription] [nvarchar](500) NULL,
	[ABExclusions] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_RegisterClient]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_RegisterClient] AS TABLE(
	[ClientName] [nvarchar](150) NULL,
	[PolicyNumber] [nvarchar](50) NOT NULL,
	[CompanyAddress] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateName] [nvarchar](100) NULL,
	[ZipCode] [bigint] NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNumber] [bigint] NULL,
	[EmailId] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[Broker] [nvarchar](75) NULL,
	[Reinsurer] [nvarchar](150) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_WLEndorsement]    Script Date: 19-08-2021 17:56:08 ******/
CREATE TYPE [dbo].[UDT_WLEndorsement] AS TABLE(
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[EAWRo] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL
)
GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 19-08-2021 17:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankMaster](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](500) NULL,
	[BankCode] [nvarchar](50) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyAt] [datetime] NULL,
 CONSTRAINT [PK_BankMaster] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenefitsMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenefitsMaster](
	[BenefitsId] [int] IDENTITY(1,1) NOT NULL,
	[BenefitsName] [nvarchar](50) NOT NULL,
	[BenefitsCode]  AS ('BM'+right('0000'+CONVERT([varchar](8),[BenefitsId]),(8))) PERSISTED,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL,
	[InsertType] [nvarchar](15) NULL,
	[Status] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchMaster](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](40) NULL,
	[BranchName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessDesignationTypeMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessDesignationTypeMaster](
	[BusinessDesignationTypeMasterID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](255) NULL,
	[TypeCode] [nvarchar](50) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCompanyMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
	[RIName] [nvarchar](50) NULL,
	[RIRetention] [bigint] NULL,
	[AMIRetention] [bigint] NULL,
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
	[InsertType] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeMaster](
	[CodeMasterID] [int] IDENTITY(1,1) NOT NULL,
	[CodeType] [nvarchar](255) NULL,
	[ID] [bigint] NULL,
	[CodePrefix] [nvarchar](255) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugMaster](
	[DrugId] [int] IDENTITY(1,1) NOT NULL,
	[DrugCode] [nvarchar](50) NOT NULL,
	[DrugName] [nvarchar](100) NULL,
	[KYCUploadPath] [nvarchar](350) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL,
	[InsertType] [nvarchar](15) NULL,
	[Status] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeUniqueNumber] [nvarchar](50) NULL,
	[ClientName] [nvarchar](50) NULL,
	[Relation] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Age] [int] NULL,
	[Salary] [decimal](18, 2) NULL,
	[EAW] [decimal](18, 2) NULL,
	[SumAssured] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[Remarks] [nvarchar](200) NULL,
	[EntryType] [nvarchar](50) NULL,
	[BankID] [int] NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[UploadKYC_01] [nvarchar](255) NULL,
	[UploadKYC_02] [nvarchar](255) NULL,
	[UploadKYC_03] [nvarchar](255) NULL,
	[UploadKYC_04] [nvarchar](255) NULL,
	[UploadKYC_05] [nvarchar](255) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyAt] [datetime] NULL,
	[KYCUploadPath] [nvarchar](350) NULL,
	[InsertType] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompanyMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompanyMaster](
	[ICMId] [bigint] IDENTITY(1,1) NOT NULL,
	[InsurancecompanyName] [nvarchar](100) NULL,
	[InsCompCode]  AS ('IN'+right('0000'+CONVERT([varchar](8),[ICMId]),(8))) PERSISTED,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](20) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](30) NULL,
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
PRIMARY KEY CLUSTERED 
(
	[ICMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOB]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOB](
	[LOBId] [bigint] IDENTITY(1,1) NOT NULL,
	[LOBName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LOBId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalProviderMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalProviderMaster](
	[MedicalProviderId] [bigint] IDENTITY(1,1) NOT NULL,
	[MedicalProvider] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[MedicalProviderCode]  AS ('MP'+right('0000'+CONVERT([varchar](8),[MedicalProviderId]),(8))) PERSISTED,
	[ContactPerson] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](30) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](20) NULL,
	[Location] [nvarchar](15) NULL,
	[Category] [nvarchar](15) NULL,
	[BankID] [int] NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[UploadKYC_01] [nvarchar](255) NULL,
	[UploadKYC_02] [nvarchar](255) NULL,
	[UploadKYC_03] [nvarchar](255) NULL,
	[UploadKYC_04] [nvarchar](255) NULL,
	[UploadKYC_05] [nvarchar](255) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](25) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](25) NULL,
	[UpdatedAt] [datetime] NULL,
	[KYCUploadPath] [nvarchar](350) NULL,
	[InsertType] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerMaster](
	[ProducerMasterID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProducerName] [nvarchar](500) NULL,
	[ProducerCode] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[EmailId] [nvarchar](255) NULL,
	[Address] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](20) NULL,
	[BusinessDesignationTypeMasterID] [int] NULL,
	[BankID] [int] NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[KYCUploadPath] [nvarchar](255) NULL,
	[InsertType] [nvarchar](255) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 19-08-2021 17:56:09 ******/
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
	[AMIRetension] [nvarchar](100) NULL,
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
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationCoverageDetails]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  Table [dbo].[ReInsurerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReInsurerMaster](
	[ReInsurerMasterId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReInsurerName] [nvarchar](500) NULL,
	[ReInsurerCode] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[EmailId] [nvarchar](255) NULL,
	[Address] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[BankID] [int] NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[UploadKYC_01] [nvarchar](255) NULL,
	[UploadKYC_02] [nvarchar](255) NULL,
	[UploadKYC_03] [nvarchar](255) NULL,
	[UploadKYC_04] [nvarchar](255) NULL,
	[UploadKYC_05] [nvarchar](255) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyAt] [datetime] NULL,
	[KYCUploadPath] [nvarchar](500) NULL,
 CONSTRAINT [PK_ReInsurerMaster] PRIMARY KEY CLUSTERED 
(
	[ReInsurerMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_AgentMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AgentMaster](
	[AgentId] [bigint] IDENTITY(1,1) NOT NULL,
	[AgentName] [nvarchar](40) NULL,
	[AgentCode]  AS ('AG'+right('0000'+CONVERT([varchar](8),[AgentId]),(8))) PERSISTED,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[ContactPerson] [nvarchar](40) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](40) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_BrokerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BrokerMaster](
	[BrokerId] [bigint] IDENTITY(1,1) NOT NULL,
	[BrokerCode]  AS ('BR'+right('0000'+CONVERT([varchar](8),[BrokerId]),(8))) PERSISTED,
	[BrokerName] [nvarchar](40) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[ContactPerson] [nvarchar](40) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](40) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Calender]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Calender](
	[CalenderId] [bigint] IDENTITY(1,1) NOT NULL,
	[MonthName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CalenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CategoryMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CategoryMaster](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](40) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[ContactPerson] [nvarchar](40) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[AddedBy] [nvarchar](40) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DiagnosticsMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DiagnosticsMaster](
	[DiagnosticsId] [int] IDENTITY(1,1) NOT NULL,
	[DiagnosticsCode] [nvarchar](50) NOT NULL,
	[DiagnosticsName] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Endorsement]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Endorsement](
	[EndorsementId] [bigint] IDENTITY(1,1) NOT NULL,
	[TicketNumber] [bigint] NULL,
	[ClientName] [nvarchar](500) NULL,
	[MailReceivedDate] [datetime] NULL,
	[GLPolicyNumber] [nvarchar](200) NULL,
	[WCPolicyNumber] [nvarchar](200) NULL,
	[PolicyPeriod] [nvarchar](50) NULL,
	[ErrorDescription] [nvarchar](100) NULL,
	[EndorsementType] [nvarchar](30) NULL,
	[GLPremium] [decimal](18, 2) NULL,
	[WCPremium] [decimal](18, 2) NULL,
	[MedicalPolicyNo] [nvarchar](100) NULL,
	[MedicalPremium] [decimal](18, 2) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[GLpostedFileDocPath] [nvarchar](200) NULL,
	[QuotationId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[EndorsementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GLEndorsement]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GLEndorsement](
	[GLEndorsementId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[SumAssured] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[EndorsementId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLEndorsementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_LabMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LabMaster](
	[LabId] [int] IDENTITY(1,1) NOT NULL,
	[LabCode]  AS ('LB'+right('0000'+CONVERT([varchar](8),[LabId]),(8))) PERSISTED,
	[LabName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Zipcode] [bigint] NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](30) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Login]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Login](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [nvarchar](25) NULL,
	[Password] [nvarchar](25) NULL,
	[CreatedAt] [datetime] NULL,
	[IsPasswordChanged] [nvarchar](5) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](25) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ProducerMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MasterType] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[EmailId] [nvarchar](100) NULL,
	[AddedOn] [datetime] NULL,
	[AddedBy] [nvarchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[EntryType] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RegisterClient]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RegisterClient](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[PolicyNumber] [nvarchar](50) NOT NULL,
	[ClientName] [nvarchar](150) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CompanyAddress] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateName] [nvarchar](100) NULL,
	[ZipCode] [bigint] NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNumber] [bigint] NULL,
	[EmailId] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[Broker] [nvarchar](75) NULL,
	[Reinsurer] [nvarchar](150) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RegisterCompany]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RegisterCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateName] [nvarchar](100) NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNumber] [bigint] NULL,
	[EmailId] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RegisterInsCompany]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RegisterInsCompany](
	[InsCompanyId] [int] IDENTITY(1,1) NOT NULL,
	[PolicyNumber] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CompanyAddress] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateName] [nvarchar](100) NULL,
	[ZipCode] [bigint] NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNumber] [bigint] NULL,
	[EmailId] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[Broker] [nvarchar](75) NULL,
	[Reinsurer] [nvarchar](150) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ReInsurerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ReInsurerMaster](
	[ReInsurerId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReInsurerName] [nvarchar](40) NULL,
	[ReInsurerCode] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](20) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[ContactPerson] [nvarchar](40) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[EmailId] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[AddedBy] [nvarchar](40) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Role]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Tickets]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[RaisedBy] [nvarchar](75) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[Flag] [int] NULL,
	[UpdatedBy] [nvarchar](25) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_UserTypeMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UserTypeMaster](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_WLEndorsement]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_WLEndorsement](
	[WLEndorsementId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[EAWRo] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[EndorsementId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[WLEndorsementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UDTWLEndorsement]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UDTWLEndorsement](
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[EAWRo] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BankMaster] ON 
GO
INSERT [dbo].[BankMaster] ([BankID], [BankName], [BankCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (1, N'AxisBank', N'AB001', N'A', 1, CAST(N'2021-07-02T22:50:04.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BankMaster] ([BankID], [BankName], [BankCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (2, N'HDFC', N'HD001', N'A', 1, CAST(N'2021-07-02T22:50:30.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BankMaster] ([BankID], [BankName], [BankCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (3, N'Kotak', N'KO001', N'A', 1, CAST(N'2021-07-02T22:50:53.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BankMaster] ([BankID], [BankName], [BankCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (4, N'State Bank of India', N'SBI001', N'A', 1, CAST(N'2021-07-02T22:51:12.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BankMaster] ([BankID], [BankName], [BankCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (5, N'ICICI', N'IC0001', N'A', 1, CAST(N'2021-07-02T22:52:18.877' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BankMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[BenefitsMaster] ON 
GO
INSERT [dbo].[BenefitsMaster] ([BenefitsId], [BenefitsName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (6, N'test', NULL, CAST(N'2021-07-31T16:06:29.207' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[BenefitsMaster] ([BenefitsId], [BenefitsName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (7, N'TESTEEE', NULL, CAST(N'2021-07-31T16:09:08.517' AS DateTime), NULL, NULL, N'UI', NULL)
GO
INSERT [dbo].[BenefitsMaster] ([BenefitsId], [BenefitsName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (8, N'testbenefits', NULL, CAST(N'2021-07-31T16:12:03.277' AS DateTime), NULL, NULL, N'UI', NULL)
GO
INSERT [dbo].[BenefitsMaster] ([BenefitsId], [BenefitsName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (9, N'testsws', NULL, CAST(N'2021-07-31T16:15:20.850' AS DateTime), NULL, NULL, N'UI', NULL)
GO
INSERT [dbo].[BenefitsMaster] ([BenefitsId], [BenefitsName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (10, N'name benefits', NULL, CAST(N'2021-07-31T16:18:47.763' AS DateTime), NULL, NULL, N'UI', NULL)
GO
SET IDENTITY_INSERT [dbo].[BenefitsMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[BranchMaster] ON 
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (1, N'01', N'Head Office')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (2, N'02', N'Salalah Branch Office')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (3, N'03', N'Sohar Branch Office')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (4, N'04', N'Nizwa Branch Office')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (5, N'05', N'Seeb Branch Office')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (6, N'06', N'SQU Branch')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (7, N'07', N'MGM Kiosok')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (8, N'11', N'Ruwi Rex Road Branch')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (9, N'14', N'Amarat Branch')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (10, N'15', N'Barka Branch')
GO
INSERT [dbo].[BranchMaster] ([BranchId], [BranchCode], [BranchName]) VALUES (11, N'16', N'Sales Hub')
GO
SET IDENTITY_INSERT [dbo].[BranchMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[BusinessDesignationTypeMaster] ON 
GO
INSERT [dbo].[BusinessDesignationTypeMaster] ([BusinessDesignationTypeMasterID], [TypeName], [TypeCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (1, N'Broker', N'BTM001', N'A', 1, CAST(N'2021-07-03T06:29:46.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BusinessDesignationTypeMaster] ([BusinessDesignationTypeMasterID], [TypeName], [TypeCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (2, N'Agent', N'BTM002', N'A', 1, CAST(N'2021-07-03T06:29:46.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BusinessDesignationTypeMaster] ([BusinessDesignationTypeMasterID], [TypeName], [TypeCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (3, N'Direct Sales', N'BTM003', N'A', 1, CAST(N'2021-07-03T06:29:46.540' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BusinessDesignationTypeMaster] ([BusinessDesignationTypeMasterID], [TypeName], [TypeCode], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (4, N'Branches', N'BTM004', N'A', 1, CAST(N'2021-07-03T06:29:46.540' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BusinessDesignationTypeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientCompanyMaster] ON 
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (1, N'Funture', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', 1, 1, NULL, NULL, NULL, N'2', 10, 20, 1, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:23:55.160' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (2, N'LICddd', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', 1, 2, NULL, NULL, NULL, N'10002', 2, 5, 4, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:25:50.767' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (3, N'Funture Generali India LIC', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', 1, 1, NULL, NULL, NULL, N'1', 100, 3, 2, N'100000', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:28:05.663' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (4, N'Cognizant', 1, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', 1, 1, NULL, NULL, NULL, N'1', 2, 3, 1, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:30:27.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (5, N'Hexaware', 4, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', 1, 1, NULL, CAST(1.000 AS Decimal(18, 3)), NULL, N'2', 2, 3, 3, N'987456321', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'D', NULL, CAST(N'2021-07-27T17:42:54.890' AS DateTime), N'Admin', CAST(N'2021-08-07T10:56:15.550' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (6, NULL, NULL, N'3/356 Bajanai Kovil st kelambakkam', N'sathangkuppam', N'tamilnadu', NULL, N'sathish', N'9455454545', N'sat@gmail.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'123456', N'ICICI00000', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:56:51.240' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (7, N'Cognizant', NULL, N'Gandhr St 1', N'Madurai', N'Tamilname', N'625004', N'Test1', N'9840359280', N'iciic@gmail.com', N'OMR', 1, 1, 1, CAST(10.000 AS Decimal(18, 3)), NULL, N'625004', 1000, 2000, 5, N'2.13E+11', N'IFSC012124', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T03:59:14.517' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (8, N'TCS', NULL, N'Gandhr St 2', N'Madurai', N'Tamilname', N'625005', N'Test2', N'9840359281', N'hdfc@gmail.com', N'OMR', 1, 2, 2, CAST(11.000 AS Decimal(18, 3)), NULL, N'625005', 1000, 2000, 2, N'2.13E+11', N'IFSC012125', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T03:59:14.517' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
SET IDENTITY_INSERT [dbo].[ClientCompanyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[DrugMaster] ON 
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (1, N'testcode', N'test', NULL, NULL, CAST(N'2021-07-31T16:49:03.473' AS DateTime), NULL, NULL, N'UI', NULL)
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (2, N'name code', N'drug master name', NULL, NULL, CAST(N'2021-07-31T16:50:40.593' AS DateTime), NULL, NULL, N'UI', NULL)
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (3, N'CodeDrug1', N'TestDrugName1', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (4, N'CodeDrug2', N'TestDrugName2', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'D')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (5, N'Code test', N'TestTEST', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), N'Admin', CAST(N'2021-07-31T17:06:12.110' AS DateTime), N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (6, N'CodeDrug4', N'TestDrugName4', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (7, N'CodeDrug5', N'TestDrugName5', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (8, N'CodeDrug6', N'TestDrugName6', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (9, N'CodeDrug7', N'TestDrugName7', NULL, N'1', CAST(N'2021-07-31T16:56:29.093' AS DateTime), NULL, NULL, N'Bulk', N'A')
GO
INSERT [dbo].[DrugMaster] ([DrugId], [DrugCode], [DrugName], [KYCUploadPath], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [InsertType], [Status]) VALUES (10, N'CodeDrug', N'TestDrugName1', NULL, NULL, CAST(N'2021-07-31T17:05:19.420' AS DateTime), NULL, NULL, N'UI', NULL)
GO
SET IDENTITY_INSERT [dbo].[DrugMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeMaster] ON 
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath], [InsertType]) VALUES (1, N'S', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'1989-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'R', NULL, 1, N'123', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath], [InsertType]) VALUES (2, N'M', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'2011-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'R', NULL, 1, N'123', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T21:33:45.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath], [InsertType]) VALUES (3, N'Sundhar Pitchai', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'1989-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'REMARKS', NULL, 1, N'123', N'ICICI', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T21:38:23.850' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuranceCompanyMaster] ON 
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (1, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:32:48.103' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (2, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 1, N'9', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:36:11.230' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (3, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:37:21.490' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (4, N'Generali India LIC', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:38:37.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (5, N'LIC', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'100000', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:54:12.263' AS DateTime), N'Admin', CAST(N'2021-07-26T22:59:47.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (6, N'CompanyName', N'chennai', N'chenai', N'tamilnadu', N'455455', N'sathish', N'964554545', N'sat@gmail.com', 2, N'123', N'iicici', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-30T22:54:50.473' AS DateTime), N'Admin', CAST(N'2021-08-07T12:15:55.520' AS DateTime), N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\ICMasterKYCFiles\30072021223946_IC_6.zip', NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (7, N'CompanyName', N'chennai', N'chenai', N'tamilnadu', N'455455', N'sathish', N'964554545', N'sat@gmail.com', 2, N'123', N'iicici', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-30T22:55:36.493' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (8, N'InsCompany', N'chewnnai', N'chennai', N'tanilnadu', N'745451', N'Sathish', N'9840359280', N'sathish@gmail.com', 1, N'12365857785', N'ICICICIIC02222', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-30T22:59:37.547' AS DateTime), NULL, NULL, N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\ICMasterKYCFiles\30072021225823_IC_8.zip', NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (9, N'ICICI', N'Gandhr St 1', N'Madurai', N'Tamilname', N'625004', N'Test1', N'9840359280', N'iciic@gmail.com', 5, N'2.13E+11', N'IFSC012124', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T01:10:28.730' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (10, N'HDFC', N'Gandhr St 2', N'Madurai', N'Tamilname', N'625005', N'Test2', N'9840359281', N'hdfc@gmail.com', 2, N'2.13E+11', N'IFSC012125', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T01:10:28.730' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
SET IDENTITY_INSERT [dbo].[InsuranceCompanyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[LOB] ON 
GO
INSERT [dbo].[LOB] ([LOBId], [LOBName]) VALUES (1, N'TestLOB')
GO
SET IDENTITY_INSERT [dbo].[LOB] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalProviderMaster] ON 
GO
INSERT [dbo].[MedicalProviderMaster] ([MedicalProviderId], [MedicalProvider], [Name], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [Location], [Category], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (1, N'Clinic', N'TestName2', N'Cli1', N'9840359281', N'hdfc@gmail.com', N'Gandhr St 2', N'Madurai', N'Tamilname', N'625005', N'Kanchipuram', N'BAND B', 2, N'2.13E+11', N'IFSC012125', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T02:16:14.917' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
INSERT [dbo].[MedicalProviderMaster] ([MedicalProviderId], [MedicalProvider], [Name], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [Location], [Category], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [KYCUploadPath], [InsertType]) VALUES (2, N'Hospital', N'TestName1', N'Hos1', N'9840359280', N'iciic@gmail.com', N'Gandhr St 1', N'Madurai', N'Tamilname', N'625004', N'Chennai', N'BAND A', 5, N'2.13E+11', N'IFSC012124', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-31T02:16:14.917' AS DateTime), NULL, NULL, NULL, N'Bulk')
GO
SET IDENTITY_INSERT [dbo].[MedicalProviderMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProducerMaster] ON 
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'ProducerName', NULL, N'Sathish Kumar N', N'98403569280', N'sathishhn2005@gmail.com', N'chennai', N'chenai', N'tn', N'icici34343434', 1, 1, N'75858', N'icici34343434', N'C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\Totalligent.UI\KYC_Files\ProducerMasterKYCFiles\30072021232829_PM_1.zip', N'UI', N'A', N'1', CAST(N'2021-07-30T23:38:12.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'TestBroker', NULL, N'TestBroker', N'8882154689', N'r@gmail.com', N'Gandhi Street', N'Madurai', N'Tamilname', N'625004', 3, 2, N'213213213213', N'IFSC012124', NULL, N'Bulk', N'A', N'1', CAST(N'2021-07-30T23:59:56.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'TestBroker', NULL, N'TestBroker', N'8882154689', N'r@gmail.com', N'Gandhi Street', N'Madurai', N'Tamilname', N'625004', 1, 2, N'213213213213', N'IFSC012124', NULL, N'Bulk', N'A', N'1', CAST(N'2021-07-30T23:59:56.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'TestBroker', NULL, N'TestBroker', N'8882154689', N'r@gmail.com', N'Gandhi Street', N'Madurai', N'Tamilname', N'625004', 3, 2, N'213213213213', N'IFSC012124', NULL, N'Bulk', N'A', N'1', CAST(N'2021-07-30T23:59:56.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'TestBroker', NULL, N'TestBroker', N'8882154689', N'r@gmail.com', N'Gandhi Street', N'Madurai', N'Tamilname', N'625004', 1, 5, N'213213213213', N'IFSC012124', NULL, N'Bulk', N'A', N'1', CAST(N'2021-07-30T23:59:56.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterID], [ProducerName], [ProducerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BusinessDesignationTypeMasterID], [BankID], [AccountNumber], [IFSCCode], [KYCUploadPath], [InsertType], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'TestBroker', NULL, N'TestBroker', N'8882154689', N'rajamanir@gmail.com', N'Gandhi Street', N'Madurai', N'Tamilname', N'IFSC012124', 4, 2, N'213213213213', N'IFSC012124', NULL, N'Bulk', N'A', N'1', CAST(N'2021-07-30T23:59:56.383' AS DateTime), N'Aug  7 2021 12:17PM', CAST(N'1900-01-02T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProducerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Quotation] ON 
GO
INSERT [dbo].[Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [InsuranceCompanyName], [ICMId], [ClientCompanyName], [ClientCompanyCode], [ClientCompanyMasterId], [ScopeofCoverage], [Jurisdiction], [Address], [City], [KYCDetails], [BankName], [IFSCCode], [Branch], [PeriodofInsurance], [Category], [TotalEmployees], [TotalDependents], [TotalSpousedependents], [TotalChilddependents], [PolicyCurrency], [EligibilityCriteria], [SumAssured_SA], [AgeLimitforEmployees], [AgeLimitforDependentSpouse], [AgeLimitforDependentChild], [FCL], [ClientPremium], [InsuranceLevy], [PolicyFee], [TotalPremium], [BrokerName], [Brokerage], [RICount], [RI1in_Percentage], [RI2in_Percentage], [RI3in_Percentage], [RIRate], [RIRetension], [AMIRetension], [RIPremium], [AMILoading], [TotalEmployeescount], [EstimatedAnnualWages], [AnnualRate], [Premium_EAW_Rate], [Premium_Incl_levy_PolFeeRO], [VATonWCpremium], [TotalPremiumInclVAT], [BrokerPercentage], [BrokerAmount], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'D/CL00001/07/2021/3301/00001', N'Pending', N'', N'1', NULL, N'1', N'CL00001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'07', NULL, NULL, 1000, 3, 10, 2, NULL, N'Test', CAST(10000.000 AS Decimal(18, 3)), 35, 30, 20, 10000, CAST(5000.000 AS Decimal(18, 3)), NULL, CAST(1.000 AS Decimal(18, 3)), CAST(5028.500 AS Decimal(18, 3)), N'Murali', CAST(10.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), N'1', N'1', N'1', N'100', N'1', N'1', CAST(20.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), 10, CAST(2000.000 AS Decimal(18, 3)), N'12000', N'120005', CAST(1522.000 AS Decimal(18, 3)), CAST(555.000 AS Decimal(18, 3)), CAST(555.000 AS Decimal(18, 3)), N'10', CAST(12000.000 AS Decimal(18, 3)), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Quotation] OFF
GO
SET IDENTITY_INSERT [dbo].[QuotationCoverageDetails] ON 
GO
INSERT [dbo].[QuotationCoverageDetails] ([QuotationCoverageDetailID], [QuotationID], [DeathCoverType], [DeathCoverAnnualLimit], [DeathCoverSumAssuredAmount], [DeathCoverSumAssuredNoOfTimes], [DeathCoverFCL], [AccidentalDeath], [AccidentalAnnualLimit], [AccidentalSumAssuredAmount], [AccidentalSumAssuredNoOfTimes], [AccidentalFCL], [PTD], [PTDAccident], [PTDSickness], [PTDCoverageLimit], [PTDMaximumLimit], [PTDWaitingYears], [PPD], [PPDAccident], [PPDSickness], [PPDCoverageLimit], [PPDMaximumLimit], [PPDWaitingYears], [TTD], [TTDAccident], [TTDSickness], [TTDCoverageLimit], [TTDMaximumLimit], [TTDWaitingYears], [RepatriationBenefit], [RBCoverageLimit], [PassiveWarRisk], [PWRCoverageLimit], [TerminalIllness], [TLCoverageLimit], [TLMaximumLimit], [TLWaitingYears], [CriticalIllness], [CLCoverageLimit], [CLMaximumLimit], [CLWaitingYears], [OtherAdditionalCover], [WarExclusion], [WECoverageLimit], [WEMaximumLimit], [WEWaitingYears], [AtomicBiologicalAndCNE], [ABACNECoverageLimit], [ABACNEMaximumLimit], [ABACNEWaitingYears], [CriminalActContent], [CACCoverageLimit], [CACNEMaximumLimit], [CACNEWaitingYears], [HazardousSportsExclusion], [HSECoverageLimit], [HSEMaximumLimit], [HSEWaitingYears], [AviationExclusion], [AECoverageLimit], [AEMaximumLimit], [AEEWaitingYears], [IntentionalSelfInflicted], [ISSASCoverageLimit], [ISSASMaximumLimit], [ISSASWaitingYears], [PandemicEpidemicCondition], [PECCoverageLimit], [PECMaximumLimit], [PECWaitingYears], [Sucide], [SECCoverageLimit], [SEMaximumLimit], [SEWaitingYears], [HIV_AIDS], [HIVCoverageLimit], [HIVMaximumLimit], [HIVWaitingYears], [OtherExclusions], [CreatedBy], [CreatedAt], [ModifiedBy], [MofifiedAt]) VALUES (1, 1, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'N', NULL, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', N'N', N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, N'N', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2021-08-19T16:41:36.543' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[QuotationCoverageDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ReInsurerMaster] ON 
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (1, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-08T16:46:12.800' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (2, N'Test Broker', N'002', N'CP01', N'12345678911', N'rajam@gmail.com', N'test', N'Madureai', N'TamilNadu', N'1234564545', 1, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T04:41:10.273' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (3, N'test', N'003', N'CP03', N'97845785584', N'rajamani@gmail.com', N'RajaStreet', N'Chennai', N'TamilNadu', N'62351', 2, N'654321', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T04:42:58.557' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10002, N'RI04', N'001', N'CP04', N'12354654654', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T22:09:56.613' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10003, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T05:59:19.113' AS DateTime), 1, CAST(N'2021-08-17T20:12:59.000' AS DateTime), NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10004, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 4, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T21:59:07.800' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10005, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 4, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T22:01:14.377' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10006, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T22:11:21.310' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt], [KYCUploadPath]) VALUES (10007, N'testname', N'001', N'testperson', N'9840359280', N'sathishhn2005@gmail.com', N'chennai', N'chennai', N'Tamilnadu', N'600025', 2, N'123456789', N'1212121212', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-12T17:19:32.250' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ReInsurerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_AgentMaster] ON 
GO
INSERT [dbo].[TB_AgentMaster] ([AgentId], [AgentName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'AON Majan', N'Siruseri', N'Chennai', N'600021', N'Mr.Sharma', N'9578544470', N'prasadkec@yahoo.com', CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL, CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL)
GO
INSERT [dbo].[TB_AgentMaster] ([AgentId], [AgentName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Modern Gulf Insurance Services', N'Taramani', N'Chennai', N'600021', N'Mr.Arun', N'9578544471', N'arun@yahoo.com', CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL, CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL)
GO
INSERT [dbo].[TB_AgentMaster] ([AgentId], [AgentName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'Nizwa Window', N'Anna Salai', N'Chennai', N'600214', N'Mr.Tharun', N'9574455471', N'tharun@yahoo.com', CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL, CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL)
GO
INSERT [dbo].[TB_AgentMaster] ([AgentId], [AgentName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'United Finance Company', N'Guindy', N'Chennai', N'602214', N'Mr.nithin', N'9574454455', N'Nithi@yahoo.com', CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL, CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL)
GO
INSERT [dbo].[TB_AgentMaster] ([AgentId], [AgentName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'FASTERZ', N'Anna Salai', N'Chennai', N'602215', N'Mr.Aadhithya', N'9574454457', N'Aathi@yahooo.com', CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL, CAST(N'2020-06-23T11:15:42.293' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_AgentMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_BrokerMaster] ON 
GO
INSERT [dbo].[TB_BrokerMaster] ([BrokerId], [BrokerName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Risk Management Serives', N'Siruseri', N'India', N'600021', N'Mr.Sharma', N'9578544470', N'prasadkec@yahoo.com', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_BrokerMaster] ([BrokerId], [BrokerName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Howden Insurance', N'Taramani', N'India', N'600021', N'Mr.Arun', N'9578544471', N'arun@yahoo.com', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_BrokerMaster] ([BrokerId], [BrokerName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'ACE Broker', N'Anna Salai', N'India', N'600214', N'Mr.Tharun', N'9574455471', N'tharun@yahoo.com', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_BrokerMaster] ([BrokerId], [BrokerName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'DOT International', N'Guindy', N'India', N'602214', N'Mr.nithin', N'9574454455', N'Nithi@yahoo.com', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_BrokerMaster] ([BrokerId], [BrokerName], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'Oman Insurance Service Bureau', N'Anna Salai', N'India', N'602215', N'Mr.Aadhithya', N'9574454457', N'Aathi@yahooo.com', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin', CAST(N'2020-06-22T17:01:46.547' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[TB_BrokerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Calender] ON 
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (1, N'January')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (2, N'February')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (3, N'March')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (4, N'April')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (5, N'May')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (6, N'June')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (7, N'July')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (8, N'August')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (9, N'September')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (10, N'October')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (11, N'November')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (12, N'December')
GO
SET IDENTITY_INSERT [dbo].[TB_Calender] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_CategoryMaster] ON 
GO
INSERT [dbo].[TB_CategoryMaster] ([CategoryId], [Description], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Band A', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_CategoryMaster] ([CategoryId], [Description], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Band B', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.307' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.307' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_CategoryMaster] ([CategoryId], [Description], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Band C', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.307' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.307' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[TB_CategoryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Endorsement] ON 
GO
INSERT [dbo].[TB_Endorsement] ([EndorsementId], [TicketNumber], [ClientName], [MailReceivedDate], [GLPolicyNumber], [WCPolicyNumber], [PolicyPeriod], [ErrorDescription], [EndorsementType], [GLPremium], [WCPremium], [MedicalPolicyNo], [MedicalPremium], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [GLpostedFileDocPath], [QuotationId]) VALUES (1, 100, N'Cognizant', CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'P/004/01/20/3301/1', N'P/004/01/20/3301/1', N'23/02/2021 To 23/02/2022', N'Credit Limit Error', N'Add', CAST(250000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), N'', CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-02-26T22:17:30.227' AS DateTime), N'Admin', NULL, NULL, N'C:\Users\ThisPc\Documents\GitHub\TotalligentTPA\Totalligent.UI\GLEndorsementDocument\20210226221730_archive.zip', 1)
GO
SET IDENTITY_INSERT [dbo].[TB_Endorsement] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_GLEndorsement] ON 
GO
INSERT [dbo].[TB_GLEndorsement] ([GLEndorsementId], [EmployeeName], [DOB], [SumAssured], [EffectiveDate], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [EndorsementId]) VALUES (1, N'kumar', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-26T22:17:30.230' AS DateTime), N'Admin', NULL, NULL, 1)
GO
INSERT [dbo].[TB_GLEndorsement] ([GLEndorsementId], [EmployeeName], [DOB], [SumAssured], [EffectiveDate], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [EndorsementId]) VALUES (2, N'Kumar01', NULL, CAST(2500.00 AS Decimal(18, 2)), NULL, CAST(N'2021-02-26T22:17:30.230' AS DateTime), N'Admin', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[TB_GLEndorsement] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Login] ON 
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1, 1, N'sa', N'sa', CAST(N'2020-03-15T12:18:07.723' AS DateTime), N'Y', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (2, 2, N'arunTotalligent', N'sathish', CAST(N'2020-03-15T12:27:55.920' AS DateTime), N'Y', NULL, N'Admin', CAST(N'2020-06-15T14:21:21.640' AS DateTime))
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (3, 3, N'Jeevarathanam', N'satishmca', CAST(N'2020-03-15T12:44:56.140' AS DateTime), N'Y', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (4, 2, N'MathuKumar K', N'TWF0aA==', CAST(N'2020-03-16T08:28:32.020' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (5, 2, N'Raja', N'UmFqYQ==', CAST(N'2020-03-16T08:49:37.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1004, 1, N'Totlli287049', N'VG90bGxpMjg=', CAST(N'2020-04-17T11:39:38.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1005, 1, N'Admin', N'Satishmca@1', NULL, N'Y', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1007, 2, N'Aniruth', N'QW5pcg==', CAST(N'2020-06-16T17:21:54.440' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1008, 3, N'Ilaiyaraja', N'Satishmca@1', CAST(N'2020-06-16T17:38:54.530' AS DateTime), N'Y', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1009, 2, N'sathish', N'c2F0aA==', CAST(N'2020-06-20T18:40:20.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1010, 1, N'Ba85585', N'QmE4NTU4NQ==', CAST(N'2020-12-28T15:01:28.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1011, 1, N'A00125', N'QTAwMTI1', CAST(N'2020-12-28T15:49:36.033' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1020, 1, N'AG00001', N'c2F0aGlza', CAST(N'2021-01-08T12:34:42.300' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1022, 0, N'CL00001', N'amVldmFfc', CAST(N'2021-01-08T16:04:07.870' AS DateTime), NULL, N'Admin', NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1021, 1, N'BA00001', N'aWxheWFyY', CAST(N'2021-01-08T12:52:28.770' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1023, 0, N'CL00003', N'c2F0aGlza', CAST(N'2021-01-08T16:48:17.233' AS DateTime), NULL, N'Admin', NULL, NULL)
GO
INSERT [dbo].[TB_Login] ([LoginId], [RoleId], [UserName], [Password], [CreatedAt], [IsPasswordChanged], [AddedBy], [UpdatedBy], [UpdatedAt]) VALUES (1024, 1, N'Totlli438079', N'VG90bGxpN', CAST(N'2021-06-27T17:15:07.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_ProducerMaster] ON 
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (1, N'Broker', N'Modern Gulf Insurance Services', N'BA00001', N'bXVyYWxpQ', N'murali@totalligent.com', CAST(N'2021-01-08T16:40:56.827' AS DateTime), N'sa', NULL, NULL, N'Data Entry')
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (2, N'Agent', N'AON Majan', N'AG00001', N'aWxheWFyY', N'ilayaraja@totalligent.com', CAST(N'2021-01-08T16:41:28.877' AS DateTime), N'sa', NULL, NULL, N'Data Entry')
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (3, N'Agent', N'AON Majan', N'AG00003', N'sa', N'ilayaraja@totalligent.com', CAST(N'2021-01-08T16:42:24.140' AS DateTime), N'sa', NULL, NULL, N'Bulk Upload')
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (4, N'Agent', N'FASTERZ', N'AG00004', N'sa', N'jeeva_sph@gmail.com', CAST(N'2021-01-08T16:42:24.140' AS DateTime), N'sa', NULL, NULL, N'Bulk Upload')
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (5, N'Branches', N'Nizwa Window', N'BR00001', N'sa', N'sathishhn2005@gmail.com', CAST(N'2021-01-08T16:42:24.140' AS DateTime), N'sa', NULL, NULL, N'Bulk Upload')
GO
INSERT [dbo].[TB_ProducerMaster] ([Id], [MasterType], [Name], [UserName], [Password], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy], [EntryType]) VALUES (6, N'DirectSales', N'United Finance Company', N'SA00001', N'sa', N'satishjpr89@gmail.com', CAST(N'2021-01-08T16:42:24.140' AS DateTime), N'sa', NULL, NULL, N'Bulk Upload')
GO
SET IDENTITY_INSERT [dbo].[TB_ProducerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterClient] ON 
GO
INSERT [dbo].[TB_RegisterClient] ([ClientId], [PolicyNumber], [ClientName], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (1, N'D/01/3101/20/D/01/3101/20/00001', N'Totalligent Pvt Ltd', NULL, N'Chennai', N'chennai', N'tamilnadu', 603103, N'jeevarathanam', 9840359280, N'sathishhn2005@gmail.com', N'INR', N'BrokerTest', N'ReInsurer', CAST(N'2020-03-15T13:14:35.107' AS DateTime), NULL)
GO
INSERT [dbo].[TB_RegisterClient] ([ClientId], [PolicyNumber], [ClientName], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (2, N'D/01/3101/20/D/01/3101/20/00002', N'Totalligent Pvt Ltd', NULL, N'Chennai', N'chennai', N'tamilnadu', 603103, N'jeevarathanam', 9840359280, N'sathishhn2005@gmail.com', N'INR', N'Broker Test 1', N'Re Insurer TEST 1', CAST(N'2020-04-17T21:04:48.370' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterClient] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterCompany] ON 
GO
INSERT [dbo].[TB_RegisterCompany] ([CompanyId], [CompanyName], [Address], [City], [StateName], [ContactPerson], [MobileNumber], [EmailId], [Currency], [CreatedAt], [CreatedBy]) VALUES (1, N'TPAAudit', N'TPA Address', N'chennai', N'TN', N'9578577701', 9578577701, N'sathishhn2005@gmail.com', N'DHR', CAST(N'2020-03-15T12:18:07.663' AS DateTime), N'Developer')
GO
INSERT [dbo].[TB_RegisterCompany] ([CompanyId], [CompanyName], [Address], [City], [StateName], [ContactPerson], [MobileNumber], [EmailId], [Currency], [CreatedAt], [CreatedBy]) VALUES (2, N'Totalligent Pvt Ltd', N'Chennai', N'chennai', N'tamilnadu', N'Sundhar', 9840359280, N'sathishhn2005@gmail.com', N'OMR', CAST(N'2020-04-17T11:39:38.527' AS DateTime), N'Developer')
GO
INSERT [dbo].[TB_RegisterCompany] ([CompanyId], [CompanyName], [Address], [City], [StateName], [ContactPerson], [MobileNumber], [EmailId], [Currency], [CreatedAt], [CreatedBy]) VALUES (3, N'SATHISH', N'SATHISH', N'CHENNAI', N'CHENNAI', N'PERSONT EST', 987406455555, N'sathishhn2005@gmail.com', N'INR', CAST(N'2021-06-27T17:14:58.317' AS DateTime), N'Developer')
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterInsCompany] ON 
GO
INSERT [dbo].[TB_RegisterInsCompany] ([InsCompanyId], [PolicyNumber], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (1, N'00001', N'Cognizant Technology Solutions', N'Siruseri', N'Chennai', N'TamilNadu', 603103, N'Murali Prasad S', 9578577701, N'murali@gmail.com', N'DHR', N'Broker Test 1', N'Re Insurer TEST 1', CAST(N'2020-03-15T12:23:03.883' AS DateTime), NULL)
GO
INSERT [dbo].[TB_RegisterInsCompany] ([InsCompanyId], [PolicyNumber], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (2, N'00002', N'Cognizant Technology Solutions', N'Siruseri', N'Chennai', N'TamilNadu', 603103, N'Murali Prasad S', 9578577701, N'murali@gmail.com', N'DHR', N'Broker Test 1', N'Re Insurer TEST 1', CAST(N'2020-03-15T12:23:13.810' AS DateTime), NULL)
GO
INSERT [dbo].[TB_RegisterInsCompany] ([InsCompanyId], [PolicyNumber], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (3, N'00003', N'Cognizant Technology Solutions', N'Siruseri', N'Chennai', N'TamilNadu', 603103, N'Murali Prasad S', 9578577701, N'murali@gmail.com', N'DHR', N'Broker Test 1', N'Re Insurer TEST 1', CAST(N'2020-03-15T12:23:39.467' AS DateTime), NULL)
GO
INSERT [dbo].[TB_RegisterInsCompany] ([InsCompanyId], [PolicyNumber], [CompanyName], [CompanyAddress], [City], [StateName], [ZipCode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [Broker], [Reinsurer], [CreatedAt], [CreatedBy]) VALUES (4, N'00004', N'Cognizant Technology Solutions', N'Siruseri', N'Chennai', N'TamilNadu', 603103, N'Murali Prasad S', 9578577701, N'murali@gmail.com', N'DHR', N'Broker Test 1', N'Re Insurer TEST 1', CAST(N'2020-03-15T12:23:48.220' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_RegisterInsCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_ReInsurerMaster] ON 
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Hannover RE', N'RE002', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.287' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.287' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Axis RE', N'RE003', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.287' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.287' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Swiss RE', N'RE004', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (4, N'GEN Re', N'RE005', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (5, N'Munich RE', N'RE006', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin')
GO
INSERT [dbo].[TB_ReInsurerMaster] ([ReInsurerId], [ReInsurerName], [ReInsurerCode], [Address], [City], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [AddedOn], [AddedBy], [UpdatedOn], [UpdatedBy]) VALUES (6, N'RGA RE', N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin', CAST(N'2020-04-09T02:40:55.290' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[TB_ReInsurerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Role] ON 
GO
INSERT [dbo].[TB_Role] ([RoleId], [Description]) VALUES (1, N'Admin')
GO
INSERT [dbo].[TB_Role] ([RoleId], [Description]) VALUES (2, N'Agent')
GO
INSERT [dbo].[TB_Role] ([RoleId], [Description]) VALUES (3, N'Broker')
GO
INSERT [dbo].[TB_Role] ([RoleId], [Description]) VALUES (4, N'Branches')
GO
INSERT [dbo].[TB_Role] ([RoleId], [Description]) VALUES (5, N'DirectSales')
GO
SET IDENTITY_INSERT [dbo].[TB_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Tickets] ON 
GO
INSERT [dbo].[TB_Tickets] ([TicketId], [RaisedBy], [Description], [CreatedAt], [CreatedBy], [Flag], [UpdatedBy], [UpdatedAt]) VALUES (1, N'arunTotalligent', N'Request raised for Reset the password', CAST(N'2020-06-15T12:49:44.030' AS DateTime), N'arunTotalligent', 1, N'Admin', CAST(N'2020-06-15T14:21:21.640' AS DateTime))
GO
INSERT [dbo].[TB_Tickets] ([TicketId], [RaisedBy], [Description], [CreatedAt], [CreatedBy], [Flag], [UpdatedBy], [UpdatedAt]) VALUES (2, N'arunTotalligent', N'Request raised for Reset the password', CAST(N'2020-06-16T17:03:01.353' AS DateTime), N'arunTotalligent', 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_UserTypeMaster] ON 
GO
INSERT [dbo].[TB_UserTypeMaster] ([UserTypeId], [Designation]) VALUES (1, N'Line Manager')
GO
INSERT [dbo].[TB_UserTypeMaster] ([UserTypeId], [Designation]) VALUES (2, N'Sr.Executive')
GO
INSERT [dbo].[TB_UserTypeMaster] ([UserTypeId], [Designation]) VALUES (3, N'Executive')
GO
SET IDENTITY_INSERT [dbo].[TB_UserTypeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_WLEndorsement] ON 
GO
INSERT [dbo].[TB_WLEndorsement] ([WLEndorsementId], [EmployeeName], [DOB], [EAWRo], [EffectiveDate], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [EndorsementId]) VALUES (1, N'sathish', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(155225.00 AS Decimal(18, 2)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-26T22:17:30.233' AS DateTime), N'Admin', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[TB_WLEndorsement] OFF
GO
ALTER TABLE [dbo].[BenefitsMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ClientCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[DrugMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[InsuranceCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[MedicalProviderMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ProducerMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
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
ALTER TABLE [dbo].[Quotation] ADD  DEFAULT ('') FOR [AMIRetension]
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
ALTER TABLE [dbo].[TB_AgentMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_AgentMaster] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[TB_BrokerMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_BrokerMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[TB_BrokerMaster] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[TB_BrokerMaster] ADD  DEFAULT ('Admin') FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[TB_CategoryMaster] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[TB_CategoryMaster] ADD  DEFAULT ('Admin') FOR [AddedBy]
GO
ALTER TABLE [dbo].[TB_CategoryMaster] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TB_CategoryMaster] ADD  DEFAULT ('Admin') FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[TB_DiagnosticsMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_LabMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_ProducerMaster] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[TB_RegisterInsCompany] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_ReInsurerMaster] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[TB_ReInsurerMaster] ADD  DEFAULT ('Admin') FOR [AddedBy]
GO
ALTER TABLE [dbo].[TB_ReInsurerMaster] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TB_ReInsurerMaster] ADD  DEFAULT ('Admin') FOR [UpdatedBy]
GO
/****** Object:  StoredProcedure [dbo].[GetBarChartUW]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertClientMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
		Address nvarchar (100) N'$.Address', 
		City nvarchar (100) N'$.City', 
		State nvarchar (100) N'$.State', 
		Zipcode nvarchar (100) N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (100) N'$.MobileNumber', 
		EmailId nvarchar (100) N'$.EmailId', 
		Currency nvarchar (100) N'$.Currency', 
		LOB bigint  N'$.LOB', 
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
  
  

  --Declare @ID bigint, @CodePrefix Nvarchar(200), @RowCount int

  --Select @ID= ID,@CodePrefix=CodePrefix From CodeMaster Where CodeType='ProducerMaster'

  --Select @RowCount = Count(ProducerName) From #TempPMMaster

  --Update CodeMaster set ID = (ID + @RowCount)  Where CodeType='PMMaster'
  
  --Alter table #TempPMMaster ADD PMCode Nvarchar(200)

  --;With Code as (
    
  --Select @CodePrefix+ CONVERT(VARCHAR(50),(@ID+ROW_NUMBER() OVER(Order by ProducerName))) as RowCode,PMCode  From #TempPMMaster
  --)
  --Update Code set  PMCode=RowCode

  


 INSERT INTO ClientCompanyMaster (  
  ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,ProducerCommission,
RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber, IFSCCode,Status,InsertType  )  
 Select   
    ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,ProducerCommission,
RINumber,RIName,RIRetention,AMIRetention,BM.BankID,AccountNumber, IFSCCode,'A' ,'Bulk'
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertEmpMaster]    Script Date: 19-08-2021 17:56:09 ******/
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

  


 INSERT INTO EmployeeMaster(  
  EmployeeName,EmployeeUniqueNumber,ClientName,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,AccountNumber,
IFSCCode,Status,InsertType  )  
 Select   
    EmployeeName,EmployeeUniqueNumber,ClientName,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,AccountNumber,
IFSCCode,'A' ,'Bulk'
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertICMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertMPMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertRIMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateCCMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateEmpMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateICMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateMPMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivatePMMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateRIMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLBenefitsMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
		Zipcode nvarchar (40) N'$.ZipCode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		Currency nvarchar (20) N'$.Currency', 
		LOB bigint  N'$.LOBName', 
		ProducerType bigint  N'$.ProducerType', 
		ProducerName bigint  N'$.Name', 
		ProducerCommission decimal (18,3) N'$.ProducerCommission', 
		RINumber bigint  N'$.RINumber', 
		RIName nvarchar (100) N'$.RIName', 
		RIRetention bigint  N'$.RIRetention', 
		AMIRetention bigint  N'$.AMIRetention', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode', 
		UploadKYC_01 nvarchar (510) N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar (510) N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar (510) N'$.UploadKYC_03', 
		Status nvarchar (20) N'$.Status'

	) AS JsonCCMaster;

 IF(@Action='Create')
 BEGIN
 
	INSERT INTO ClientCompanyMaster(
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,Status,InsertType
			)
	Select 
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,'A','UI' as InsertType	
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
			UpdatedBy='Admin',UpdatedAt=GETdate()
  FROM ClientCompanyMaster CC
  INNER JOIN #TempCCMaster TRI ON CC.ClientCompanyMasterId=TRI.ClientCompanyMasterId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
		Relation nvarchar (100) N'$.Relation', 
		Nationality nvarchar (100) N'$.Nationality', 
		Category nvarchar (100) N'$.Category', 
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
		Status nvarchar(100)  N'$.Status'
	) AS JsonEmpMaster;

 IF(@Action='Create')
 BEGIN

	INSERT INTO EmployeeMaster(
			EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,Status,CreatedAt,InsertType

			)
	Select 
						EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,'A'	,GETDATE(),'UI' as InsertType
	From #TempEmpMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  
  Select @ReturnRIid=ReInsurerMasterId From #TempEmpMaster
  UPDATE CC Set  
            EmployeeName=TRI.EmployeeName,Relation=TRI.Relation,Category=TRI.Category,
			Age=TRI.Age,Salary=TRI.Salary,
			Modifiedby='Admin',ModifiedAt=GETdate()
  FROM EmployeeMaster CC
  INNER JOIN #TempEmpMaster TRI ON CC.EmployeeId=TRI.EmployeeId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLICMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLMPMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
		[Status] nvarchar(1000) N'$.Status'		
	) AS JsonRIMaster;



 IF(@Action='Create')
 BEGIN
   
		--Declare @Code Nvarchar(50)  
		--EXEC pGenerateCode 'ProducerMaster',@Code OUTPUT

			INSERT INTO ProducerMaster (
								ProducerName,ContactPerson,MobileNumber,EmailId,Address,
								City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,
								IFSCCode,KYCUploadPath,InsertType,Status,CreatedBy,CreatedAt			
								)
			SELECT 			
				ProducerName,ContactPerson,MobileNumber,EmailId,[Address],
				City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,
				IFSCCode,KYCUploadPath,'UI' as InsertType,[Status],CreatedBy,Getdate()CreatedAt
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
	[Status]=TRI.[Status],UpdatedAt=TRI.CreatedBy,UpdatedBy=GETdate()
  FROM ProducerMaster RI
  INNER JOIN #TempProducerMaster TRI ON RI.ProducerMasterID=TRI.ProducerMasterID

  	
 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLQuotationMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pDMLQuotationMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
 
)
As
BEGIN

SELECT * into #TempQuotationCoverage
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	[DeathCoverType] [nvarchar](10) N'$.DeathCoverType',
	[DeathCoverAnnualLimit] [nvarchar](50) N'$.DeathCoverAnnualLimit',
	[DeathCoverSumAssuredAmount] [decimal](18, 2) N'$.DeathCoverSumAssuredAmount',
	[DeathCoverSumAssuredNoOfTimes] [int]  N'$.DeathCoverSumAssuredNoOfTimes',
	[DeathCoverFCL] [decimal](18, 2) N'$.DeathCoverFCL',
	[AccidentalDeath] [nvarchar](10) N'$.AccidentalDeath',
	[AccidentalAnnualLimit] [nvarchar](50)  N'$.AccidentalAnnualLimit',
	[AccidentalSumAssuredAmount] [decimal](18, 2) N'$.AccidentalSumAssuredAmount',
	[AccidentalSumAssuredNoOfTimes] [int] N'$.AccidentalSumAssuredNoOfTimes',
	[AccidentalFCL] [decimal](18, 2) N'$.AccidentalFCL',
	[PTD] [nvarchar](10) N'$.PTD',
	[PTDAccident] [nvarchar](10) N'$.PTDAccident',
	[PTDSickness] [nvarchar](10) N'$.PTDSickness',
	[PTDCoverageLimit] [decimal](18, 2) N'$.PTDCoverageLimit',
	[PTDMaximumLimit] [decimal](18, 2) N'$.PTDMaximumLimit',
	[PTDWaitingYears] [int]  N'$.PTDWaitingYears',
	[PPD] [nvarchar](10)  N'$.PPD',
	[PPDAccident] [nvarchar](10) N'$.PPDAccident',
	[PPDSickness] [nvarchar](10) N'$.PPDSickness',
	[PPDCoverageLimit] [decimal](18, 2) N'$.PPDCoverageLimit',
	[PPDMaximumLimit] [decimal](18, 2) N'$.PPDMaximumLimit',
	[PPDWaitingYears] [int] N'$.PPDWaitingYears',
	[TTD] [nvarchar](10) N'$.TTD',
	[TTDAccident] [nvarchar](10) N'$.TTDAccident',
	[TTDSickness] [nvarchar](10) N'$.TTDSickness',
	[TTDCoverageLimit] [decimal](18, 2) N'$.TTDCoverageLimit',
	[TTDMaximumLimit] [decimal](18, 2) N'$.TTDMaximumLimit',
	[TTDWaitingYears] [int] N'$.TTDWaitingYears',
	[RepatriationBenefit] [nvarchar](10) N'$.RepatriationBenefit',
	[RBCoverageLimit] [decimal](18, 2) N'$.RBCoverageLimit',
	[PassiveWarRisk] [nvarchar](10) N'$.PassiveWarRisk',
	[PWRCoverageLimit] [decimal](18, 2) N'$.PWRCoverageLimit',
	[TerminalIllness] [nvarchar](10) N'$.TerminalIllness',
	[TLCoverageLimit] [decimal](18, 2) N'$.TLCoverageLimit',
	[TLMaximumLimit] [decimal](18, 2) N'$.TLMaximumLimit',
	[TLWaitingYears] [int] N'$.TLWaitingYears',
	[CriticalIllness] [nvarchar](10) N'$.CriticalIllness',
	[CLCoverageLimit] [decimal](18, 2) N'$.CLCoverageLimit',
	[CLMaximumLimit] [decimal](18, 2) N'$.CLMaximumLimit',
	[CLWaitingYears] [int] N'$.CLWaitingYears',
	[OtherAdditionalCover] [nvarchar](max) N'$.OtherAdditionalCover',
	[WarExclusion] [nvarchar](10) N'$.WarExclusion',
	[WECoverageLimit] [decimal](18, 2) N'$.WECoverageLimit',
	[WEMaximumLimit] [decimal](18, 2)  N'$.WEMaximumLimit',
	[WEWaitingYears] [int]  N'$.WEWaitingYears',
	[AtomicBiologicalAndCNE] [nvarchar](10) N'$.AtomicBiologicalAndCNE',
	[ABACNECoverageLimit] [decimal](18, 2) N'$.ABACNECoverageLimit',
	[ABACNEMaximumLimit] [decimal](18, 2) N'$.ABACNEMaximumLimit',
	[ABACNEWaitingYears] [int] N'$.ABACNEWaitingYears',
	[CriminalActContent] [nvarchar](10) N'$.CriminalActContent',
	[CACCoverageLimit] [decimal](18, 2) N'$.CACCoverageLimit',
	[CACNEMaximumLimit] [decimal](18, 2) N'$.CACNEMaximumLimit',
	[CACNEWaitingYears] [int] N'$.CACNEWaitingYears',
	[HazardousSportsExclusion] [nvarchar](10) N'$.HazardousSportsExclusion',
	[HSECoverageLimit] [decimal](18, 2) N'$.HSECoverageLimit',
	[HSEMaximumLimit] [decimal](18, 2) N'$.HSEMaximumLimit',
	[HSEWaitingYears] [int]  N'$.HSEWaitingYears',
	[AviationExclusion] [nvarchar](10) N'$.AviationExclusion',
	[AECoverageLimit] [decimal](18, 2) N'$.AECoverageLimit',
	[AEMaximumLimit] [decimal](18, 2) N'$.AEMaximumLimit',
	[AEEWaitingYears] [int] N'$.AEEWaitingYears',
	[IntentionalSelfInflicted] [nvarchar](10) N'$.IntentionalSelfInflicted',
	[ISSASCoverageLimit] [decimal](18, 2) N'$.ISSASCoverageLimit',
	[ISSASMaximumLimit] [decimal](18, 2) N'$.ISSASMaximumLimit',
	[ISSASWaitingYears] [int] N'$.ISSASWaitingYears',
	[PandemicEpidemicCondition] [nvarchar](10) N'$.PandemicEpidemicCondition',
	[PECCoverageLimit] [decimal](18, 2) N'$.PECCoverageLimit',
	[PECMaximumLimit] [decimal](18, 2) N'$.PECMaximumLimit',
	[PECWaitingYears] [int] N'$.PECWaitingYears',
	[Sucide] [nvarchar](10) N'$.Sucide',
	[SECCoverageLimit] [decimal](18, 2) N'$.SECCoverageLimit',
	[SEMaximumLimit] [decimal](18, 2) N'$.SEMaximumLimit',
	[SEWaitingYears] [int] N'$.SEWaitingYears',
	[HIV_AIDS] [nvarchar](10) N'$.HIV_AIDS',
	[HIVCoverageLimit] [decimal](18, 2) N'$.HIVCoverageLimit',
	[HIVMaximumLimit] [decimal](18, 2) N'$.HIVMaximumLimit',
	[HIVWaitingYears] [int] N'$.HIVWaitingYears',
	[OtherExclusions] [nvarchar](max) N'$.OtherExclusions',
	[CreatedBy] [bigint] N'$.CreatedBy'	
) AS JsonQuotationCoverage;

    SELECT * into #TempQuotationMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
        InsuranceCompanyName nvarchar(100) N'$.InsuranceCompanyName', 
		ClientCompanyName nvarchar(100) N'$.ClientCompanyName', 
		ScopeofCoverage nvarchar(100) N'$.ScopeofCoverage', 
		Jurisdiction nvarchar(100) N'$.Jurisdiction', 
		Address nvarchar(100) N'$.Address', 
		City nvarchar(100) N'$.City', 
		KYCDetails nvarchar(100) N'$.KYCDetails', 
		BankName nvarchar(100) N'$.BankName', 
		IFSCCode nvarchar(100) N'$.IFSCCode', 
		Branch nvarchar(100) N'$.Branch', 
		PeriodofInsurance datetime N'$.PeriodofInsurance', 
		Category nvarchar(100) N'$.Category', 
		TotalEmployees int N'$.TotalEmployees', 
		TotalDependents int N'$.TotalDependents', 
		TotalSpousedependents int N'$.TotalSpousedependents', 
		TotalChilddependents int N'$.TotalChilddependents', 
		PolicyCurrency Bigint N'$.PolicyCurrency', 
		EligibilityCriteria nvarchar(100) N'$.EligibilityCriteria', 
		SumAssured_SA decimal(18,3) N'$.SumAssured_SA', 
		AgeLimitforEmployees int N'$.AgeLimitforEmployees', 
		AgeLimitforDependentSpouse int N'$.AgeLimitforDependentSpouse', 
		AgeLimitforDependentChild int N'$.AgeLimitforDependentChild', 
		FCL Bigint N'$.FCL', 
		ClientPremium decimal(18,3) N'$.ClientPremium', 
		InsuranceLevy decimal(18,3) N'$.InsuranceLevy', 
		PolicyFee decimal(18,3) N'$.PolicyFee', 
		TotalPremium decimal(18,3) N'$.TotalPremium', 
		BrokerName nvarchar(100) N'$.BrokerName', 
		Brokerage decimal(18,3) N'$.Brokerage', 
		RICount decimal(18,3) N'$.RICount', 
		RI1in_Percentage nvarchar(100) N'$.RI1in_Percentage', 
		RI2in_Percentage nvarchar(100) N'$.RI2in_Percentage', 
		RI3in_Percentage nvarchar(100) N'$.RI3in_Percentage', 
		RIRate nvarchar(100) N'$.RIRate', 
		RIRetension nvarchar(100) N'$.RIRetension', 
		AMIRetension nvarchar(100) N'$.AMIRetension', 
		RIPremium decimal(18,3) N'$.RIPremium', 
		AMILoading decimal(18,3) N'$.AMILoading', 
		TotalEmployeescount int N'$.TotalEmployeescount', 
		EstimatedAnnualWages decimal(18,3) N'$.EstimatedAnnualWages', 
		AnnualRate nvarchar(100) N'$.AnnualRate', 
		Premium_EAW_Rate nvarchar(100) N'$.Premium_EAW_Rate', 
		Premium_Incl_levy_PolFeeRO decimal(18,3) N'$.Premium_Incl_levy_PolFeeRO', 
		VATonWCpremium decimal(18,3) N'$.VATonWCpremium', 
		TotalPremiumInclVAT decimal(18,3) N'$.TotalPremiumInclVAT', 
		BrokerPercentage nvarchar(100) N'$.BrokerPercentage', 
		BrokerAmount decimal(18,3) N'$.BrokerAmount'

	) AS JsonQuotationMaster;



 IF(@Action='AddUpdateQuotationMaster')
 BEGIN
  
 --AS ('D'+'/'+ right(ClientCompanyName+'/'+Branch+'/'+convert([nvarchar](16),datepart(year,getdate()))+'/'+'3301/'+'0000'+CONVERT([nvarchar](16),[QuotationId]),(16))) ,
 declare @dno nvarchar(150),@companyCode nvarchar(20)
 set @companyCode=(select ClientCompCode FROM ClientCompanyMaster where ClientCompanyMasterId=(select ClientCompanyName from #TempQuotationMaster))

	INSERT INTO Quotation (
		InsuranceCompanyName,ClientCompanyName,ClientCompanyCode, ScopeofCoverage,Jurisdiction,Address,City,KYCDetails,BankName,IFSCCode,Branch,PeriodofInsurance,Category,
		TotalEmployees,TotalDependents,TotalSpousedependents,TotalChilddependents,PolicyCurrency,EligibilityCriteria,SumAssured_SA,AgeLimitforEmployees,
		AgeLimitforDependentSpouse,AgeLimitforDependentChild,FCL,ClientPremium,InsuranceLevy,PolicyFee,TotalPremium,BrokerName,Brokerage,RICount,RI1in_Percentage,
		RI2in_Percentage,RI3in_Percentage,RIRate,RIRetension,AMIRetension,RIPremium,AMILoading,TotalEmployeescount,EstimatedAnnualWages,AnnualRate,Premium_EAW_Rate,
		Premium_Incl_levy_PolFeeRO,VATonWCpremium,TotalPremiumInclVAT,BrokerPercentage,BrokerAmount,Status			
	)
	SELECT 
		InsuranceCompanyName,ClientCompanyName,@companyCode,ScopeofCoverage,Jurisdiction,Address,City,KYCDetails,BankName,IFSCCode,Branch,PeriodofInsurance,Category,TotalEmployees,
		TotalDependents,TotalSpousedependents,TotalChilddependents,PolicyCurrency,EligibilityCriteria,SumAssured_SA,AgeLimitforEmployees,AgeLimitforDependentSpouse,
		AgeLimitforDependentChild,FCL,ClientPremium,InsuranceLevy,PolicyFee,TotalPremium,BrokerName,Brokerage,RICount,RI1in_Percentage,RI2in_Percentage,RI3in_Percentage,
		RIRate,RIRetension,AMIRetension,RIPremium,AMILoading,TotalEmployeescount,EstimatedAnnualWages,AnnualRate,Premium_EAW_Rate,Premium_Incl_levy_PolFeeRO,VATonWCpremium,
		TotalPremiumInclVAT,BrokerPercentage,BrokerAmount,'Pending'
	FROM #TempQuotationMaster

		SELECT @ReturnRIid = @@IDENTITY  
		set @dno=(select 'D/'+ClientCompanyCode+'/'+Branch+'/'+Convert(nvarchar(15) ,datepart(year,getdate()))+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid) from Quotation where QuotationId=@ReturnRIid)
		update Quotation set DraftNo=@dno where QuotationId=@ReturnRIid
	INSERT INTO QuotationCoverageDetails ( 
		QuotationID,DeathCoverType,DeathCoverAnnualLimit,DeathCoverSumAssuredAmount,DeathCoverSumAssuredNoOfTimes,DeathCoverFCL,AccidentalDeath,
		AccidentalAnnualLimit,AccidentalSumAssuredAmount,AccidentalSumAssuredNoOfTimes,AccidentalFCL,PTD,PTDAccident,PTDSickness,PTDCoverageLimit,
		PTDMaximumLimit,PTDWaitingYears,PPD,PPDAccident,PPDSickness,PPDCoverageLimit,PPDMaximumLimit,PPDWaitingYears,TTD,TTDAccident,TTDSickness,
		TTDCoverageLimit,TTDMaximumLimit,TTDWaitingYears,RepatriationBenefit,RBCoverageLimit,PassiveWarRisk,PWRCoverageLimit,TerminalIllness,TLCoverageLimit,
		TLMaximumLimit,TLWaitingYears,CriticalIllness,CLCoverageLimit,CLMaximumLimit,CLWaitingYears,OtherAdditionalCover,WarExclusion,WECoverageLimit,
		WEMaximumLimit,WEWaitingYears,AtomicBiologicalAndCNE,ABACNECoverageLimit,ABACNEMaximumLimit,ABACNEWaitingYears,CriminalActContent,CACCoverageLimit,
		CACNEMaximumLimit,CACNEWaitingYears,HazardousSportsExclusion,HSECoverageLimit,HSEMaximumLimit,HSEWaitingYears,AviationExclusion,AECoverageLimit,
		AEMaximumLimit,AEEWaitingYears,IntentionalSelfInflicted,ISSASCoverageLimit,ISSASMaximumLimit,ISSASWaitingYears,PandemicEpidemicCondition,PECCoverageLimit,
		PECMaximumLimit,PECWaitingYears,Sucide,SECCoverageLimit,SEMaximumLimit,SEWaitingYears,HIV_AIDS,HIVCoverageLimit,HIVMaximumLimit,HIVWaitingYears,
		OtherExclusions,CreatedBy,CreatedAt
	)


	SELECT 
		@ReturnRIid as QuotationID,DeathCoverType,DeathCoverAnnualLimit,DeathCoverSumAssuredAmount,DeathCoverSumAssuredNoOfTimes,DeathCoverFCL,ISNULL(AccidentalDeath,'N'),
		AccidentalAnnualLimit,AccidentalSumAssuredAmount,AccidentalSumAssuredNoOfTimes,AccidentalFCL,ISNULL(PTD,'N'),ISNULL(PTDAccident,'N'),ISNULL(PTDSickness,'N'),PTDCoverageLimit,
		PTDMaximumLimit,PTDWaitingYears,ISNULL(PPD,'N'),ISNULL(PPDAccident,'N'),ISNULL(PPDSickness,'N'),PPDCoverageLimit,PPDMaximumLimit,PPDWaitingYears,ISNULL(TTD,'N'),ISNULL(TTDAccident,'N'),ISNULL(TTDSickness,'N'),
		TTDCoverageLimit,TTDMaximumLimit,TTDWaitingYears,ISNULL(RepatriationBenefit,'N'),RBCoverageLimit,ISNULL(PassiveWarRisk,'N'),PWRCoverageLimit,ISNULL(TerminalIllness,'N'),TLCoverageLimit,
		TLMaximumLimit,TLWaitingYears,ISNULL(CriticalIllness,'N'),CLCoverageLimit,CLMaximumLimit,CLWaitingYears,OtherAdditionalCover,ISNULL(WarExclusion,'N'),WECoverageLimit,
		WEMaximumLimit,WEWaitingYears,ISNULL(AtomicBiologicalAndCNE,'N'),ABACNECoverageLimit,ABACNEMaximumLimit,ABACNEWaitingYears,ISNULL(CriminalActContent,'N'),CACCoverageLimit,
		CACNEMaximumLimit,CACNEWaitingYears,ISNULL(HazardousSportsExclusion,'N'),HSECoverageLimit,HSEMaximumLimit,HSEWaitingYears,ISNULL(AviationExclusion,'N'),AECoverageLimit,
		AEMaximumLimit,AEEWaitingYears,ISNULL(IntentionalSelfInflicted,'N'),ISSASCoverageLimit,ISSASMaximumLimit,ISSASWaitingYears,ISNULL(PandemicEpidemicCondition,'N'),PECCoverageLimit,
		PECMaximumLimit,PECWaitingYears,ISNULL(Sucide,'N'),SECCoverageLimit,SEMaximumLimit,SEWaitingYears,ISNULL(HIV_AIDS,'N'),HIVCoverageLimit,HIVMaximumLimit,HIVWaitingYears,
		OtherExclusions,CreatedBy,Getdate()
	FROM #TempQuotationCoverage

 END

  IF(@Action='Update')
 BEGIN

 Select @ReturnRIid=QuotationId From #TempQuotationMaster

		set @dno=(select 'P/'+ClientCompanyCode+'/'+Branch+'/'+Convert(nvarchar(15) ,datepart(year,getdate()))+'/'+'3301/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid) from Quotation where QuotationId=@ReturnRIid)
		--update Quotation set DraftNo=@dno where QuotationId=@ReturnRIid
  
  UPDATE Q Set  
  Q.Status=TRI.Status,
			UpdatedAt=GETdate(),PolicyNo=@dno
  FROM Quotation Q
  INNER JOIN #TempQuotationMaster TRI ON Q.QuotationId=TRI.QuotationId

  	
 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGenerateBusinessEntites]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGenerateCode]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteBenefitsName]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteCCMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteDrugCodeName]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteEmpMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteICMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteMPMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteProducerName_Code_City]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteRINameRICodeCity]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBankMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBenefitsMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBusinessDesignationTypeMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetCCMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode AND City=@CCCity

	END
	ELSE IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='')
	BEGIN
	SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode --AND City=@CCity


	END
	ELSE
	BEGIN 
 
			SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetDefaultMaster]    Script Date: 19-08-2021 17:56:09 ******/
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



END

GO
/****** Object:  StoredProcedure [dbo].[pGetDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetEmpMaster]    Script Date: 19-08-2021 17:56:09 ******/
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

		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName

	END
	ELSE IF(ISNULL(@EmpName,'')!='' AND ISNULL(@EmpId,'')!='')
	BEGIN
	
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId --AND ClientName=@ClientName


	END
	ELSE
	BEGIN 
 
			
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName --AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[PGetGLWLPDFdata]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PGetGLWLPDFdata]
(
 @EndorsementId bigint,
 @PdfType NvarChar(25)
)
AS 
BEGIN

	IF (@PdfType ='GL')
	Begin

		SELECT 
		  'ClssOfInsurance' as ClssOfInsurance ,'TT123' as EndorsementNo ,
		   Q.PolicyNo ,ClientName,PolicyPeriod,
		   GL.GLEndorsementId,GL.EmployeeName,GL.DOB,GL.SumAssured,GL.EffectiveDate ,TE.ClientName
		FROM [TB_Endorsement]  TE
		INNER JOIN TB_Quotation Q ON TE.QuotationId=Q.QuotationId
		INNER JOIN TB_GLEndorsement GL ON TE.EndorsementId = GL.EndorsementId
		WHERE TE.EndorsementId=@EndorsementId

	END
	ELSE
	BEGIN
		SELECT 
		  'ClssOfInsurance' as ClssOfInsurance ,'TT123' as EndorsementNo ,
		   Q.PolicyNo ,ClientName,PolicyPeriod,
		   WL.WLEndorsementId as GLEndorsementId,WL.EmployeeName,WL.DOB,WL.EAWRo as SumAssured,WL.EffectiveDate ,TE.ClientName
		FROM [TB_Endorsement]  TE
		INNER JOIN TB_Quotation Q ON TE.QuotationId=Q.QuotationId
		INNER JOIN TB_WLEndorsement WL ON TE.EndorsementId = WL.EndorsementId
		WHERE TE.EndorsementId=@EndorsementId

	END
END
GO
/****** Object:  StoredProcedure [dbo].[pGetICMMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetMPMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetPolicyIssuance]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[pGetPolicyIssuance](
@DraftNo nvarchar(20)
)
as begin
if(@DraftNo='') set @DraftNo=null 
select QuotationId, DraftNo,ISNULL(PolicyNo,'Yet to Generate') as PolicyNo,ICM.InsuranceCompanyName,CM.ClientCompanyName,Q.Status from 
Quotation Q
Inner join InsuranceCompanyMaster ICM on ICM.ICMId=Q.InsuranceCompanyName
inner join ClientCompanyMaster CM on CM.ClientCompanyMasterId=Q.ClientCompanyName
 where (@DraftNo IS NULL OR DraftNo = @DraftNo)
order by Q.CreatedAt desc
end
GO
/****** Object:  StoredProcedure [dbo].[pGetProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName
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
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName
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
			PM.[Status],PM.BusinessDesignationTypeMasterID,BDTM.TypeName as BusinessTypeName
		FROM ProducerMaster PM
		INNER JOIN BankMaster BI ON BI.BankID=PM.BankID
		INNER JOIN BusinessDesignationTypeMaster BDTM ON BDTM.BusinessDesignationTypeMasterID=PM.BusinessDesignationTypeMasterID
		WHERE  ProducerName like @PMName+'%' AND PM.[Status]='A'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[pGetProducersCM]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetQuotation]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pGetQuotation](
@QuotationId bigint)
as begin
select 
Q.QuotationId,
Q.DraftNo,
Q.Status,
Q.PolicyNo,
Q.InsuranceCompanyName,
Q.ICMId,
Q.ClientCompanyName,
Q.ClientCompanyCode,
ISNULL(Q.ClientCompanyMasterId,0) AS ClientCompanyMasterId,
Q.ScopeofCoverage,
Q.Jurisdiction,
Q.Address,
Q.City,
Q.KYCDetails,
Q.BankName,
Q.IFSCCode,
Q.Branch,
isnull(Q.PeriodofInsurance,getdate()) as PeriodofInsurance,
Q.Category,
Q.TotalEmployees,
Q.TotalDependents,
Q.TotalSpousedependents,
Q.TotalChilddependents,
isnull(Q.PolicyCurrency,0) as PolicyCurrency,
Q.EligibilityCriteria,
Q.SumAssured_SA,
Q.AgeLimitforEmployees,
Q.AgeLimitforDependentSpouse,
Q.AgeLimitforDependentChild,
Q.FCL,
Q.ClientPremium,
isnull(Q.InsuranceLevy,0.55) as InsuranceLevy,
Q.PolicyFee,
Q.TotalPremium,
Q.BrokerName,
Q.Brokerage,
Q.RICount,
Q.RI1in_Percentage,
Q.RI2in_Percentage,
Q.RI3in_Percentage,
Q.RIRate,
Q.RIRetension,
Q.AMIRetension,
Q.RIPremium,
Q.AMILoading,
Q.TotalEmployeescount,
Q.EstimatedAnnualWages,
Q.AnnualRate,
Q.Premium_EAW_Rate,
Q.Premium_Incl_levy_PolFeeRO,
Q.VATonWCpremium,
Q.TotalPremiumInclVAT,
Q.BrokerPercentage,
Q.BrokerAmount,
Q.CreatedBy,
Q.CreatedAt,
Q.UpdatedBy,
Q.UpdatedAt,
QCD.QuotationCoverageDetailID,
QCD.QuotationID,
QCD.DeathCoverType,
QCD.DeathCoverAnnualLimit,
QCD.DeathCoverSumAssuredAmount,
QCD.DeathCoverSumAssuredNoOfTimes,
QCD.DeathCoverFCL,
QCD.AccidentalDeath,
QCD.AccidentalAnnualLimit,
QCD.AccidentalSumAssuredAmount,
QCD.AccidentalSumAssuredNoOfTimes,
QCD.AccidentalFCL,
QCD.PTD,
QCD.PTDAccident,
QCD.PTDSickness,
QCD.PTDCoverageLimit,
QCD.PTDMaximumLimit,
QCD.PTDWaitingYears,
QCD.PPD,
QCD.PPDAccident,
QCD.PPDSickness,
QCD.PPDCoverageLimit,
QCD.PPDMaximumLimit,
QCD.PPDWaitingYears,
QCD.TTD,
QCD.TTDAccident,
QCD.TTDSickness,
QCD.TTDCoverageLimit,
QCD.TTDMaximumLimit,
QCD.TTDWaitingYears,
QCD.RepatriationBenefit,
QCD.RBCoverageLimit,
QCD.PassiveWarRisk,
QCD.PWRCoverageLimit,
QCD.TerminalIllness,
QCD.TLCoverageLimit,
QCD.TLMaximumLimit,
QCD.TLWaitingYears,
QCD.CriticalIllness,
QCD.CLCoverageLimit,
QCD.CLMaximumLimit,
QCD.CLWaitingYears,
QCD.OtherAdditionalCover,
QCD.WarExclusion,
QCD.WECoverageLimit,
QCD.WEMaximumLimit,
QCD.WEWaitingYears,
QCD.AtomicBiologicalAndCNE,
QCD.ABACNECoverageLimit,
QCD.ABACNEMaximumLimit,
QCD.ABACNEWaitingYears,
QCD.CriminalActContent,
QCD.CACCoverageLimit,
QCD.CACNEMaximumLimit,
QCD.CACNEWaitingYears,
QCD.HazardousSportsExclusion,
QCD.HSECoverageLimit,
QCD.HSEMaximumLimit,
QCD.HSEWaitingYears,
QCD.AviationExclusion,
QCD.AECoverageLimit,
QCD.AEMaximumLimit,
QCD.AEEWaitingYears,
QCD.IntentionalSelfInflicted,
QCD.ISSASCoverageLimit,
QCD.ISSASMaximumLimit,
QCD.ISSASWaitingYears,
QCD.PandemicEpidemicCondition,
QCD.PECCoverageLimit,
QCD.PECMaximumLimit,
QCD.PECWaitingYears,
QCD.Sucide,
QCD.SECCoverageLimit,
QCD.SEMaximumLimit,
QCD.SEWaitingYears,
QCD.HIV_AIDS,
QCD.HIVCoverageLimit,
QCD.HIVMaximumLimit,
QCD.HIVWaitingYears,
QCD.OtherExclusions,
QCD.CreatedBy,
QCD.CreatedAt,
QCD.ModifiedBy,
QCD.MofifiedAt


 from Quotation Q
 Inner join QuotationCoverageDetails QCD on QCD.QuotationID=Q.QuotationId
 where q.QuotationId=@QuotationId

 end
GO
/****** Object:  StoredProcedure [dbo].[pGetRIMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathCCMasterPath]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathEmpMasterPath]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathICMasterPath]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathMPMasterPath]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathProducerMasterPath]    Script Date: 19-08-2021 17:56:09 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Clients]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_Clients]  
(
@PolicyNumber nvarchar(75)
)
as Begin  
declare @sql nvarchar(max)

set @sql='select ClientId,PolicyNumber,ClientName,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer

 from TB_RegisterClient '
 if(@PolicyNumber<>'')

set @sql+='where PolicyNumber='''+@PolicyNumber+''''
print @sql
exec sp_executesql @sql;

end

GO
/****** Object:  StoredProcedure [dbo].[SP_CloseTicket]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_CloseTicket]
(
@TicketId int,
@RaisedBy nvarchar(50),
@Newpassword nvarchar(50)
)
as
begin
update TB_Login set Password=@Newpassword ,UpdatedBy='Admin',UpdatedAt=getdate() where UserName=@RaisedBy
update TB_Tickets set Flag=1,UpdatedBy='Admin',UpdatedAt=getdate() where TicketId=@TicketId and RaisedBy=@RaisedBy
Select @TicketId as TicketId, UserName,@Newpassword as Newpassword,EmailId from TB_Employee where UserName=@RaisedBy
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CompanyRegistration]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[SP_CompanyRegistration]
(
@CompanyName nvarchar(100),
@Address nvarchar(100),
@City nvarchar(50),
@StateName NVARCHAR(100),
@ContactPerson nvarchar(100),
@MobileNumber bigint,
@EmailId nvarchar(100),
@Currency nvarchar(10),

@CreatedBy nvarchar(50)

)
as
Begin
if not exists(Select 1 from TB_RegisterCompany where CompanyName=@CompanyName)
Insert into TB_RegisterCompany(CompanyName,Address,City,StateName,ContactPerson,MobileNumber,EmailId,Currency,CreatedAt,CreatedBy)
select @CompanyName ,@Address ,@City ,@StateName ,@ContactPerson ,@MobileNumber ,@EmailId ,@Currency,GETDATE(),@CreatedBy 
--set @Return=SCOPE_IDENTITY()
End
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateQuotation]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CreateQuotation]
(
@UDT_QuotationGenerator dbo.UDT_Quotation readonly,
@QuotationId int,
@UserName nvarchar(50)

)
as
begin

declare @Result bigint
if(@QuotationId>0)
begin 
Update Q set Status='Approved',CIInsuranceCompanyName=UDT.CIInsuranceCompanyName,CIClientCompanyName=UDT.CIClientCompanyName,
GBMedicalNetworkHospitals=UDT.GBMedicalNetworkHospitals,
GLPolicyNo='P/004/01/20/3301/'+CONVERT(nvarchar,@QuotationId),
WLPolicyNo='P/004/01/20/3301/'+CONVERT(nvarchar,@QuotationId),
MedicalPolicyNo='P/004/01/20/2402/'+CONVERT(nvarchar,@QuotationId),
CIProducerType=UDT.CIProducerType,CIProducerName=UDT.CIProducerName,CISelectCommission=UDT.CISelectCommission,CINoOfPlanCategories=UDT.CINoOfPlanCategories,
GBMedicalProviderNetwork=UDT.GBMedicalProviderNetwork,GBScopeOfCover=UDT.GBScopeOfCover,GBAreaOfCoverage=UDT.GBAreaOfCoverage,GBPersonCovered=UDT.GBPersonCovered,
GBAnnualBenefitsLimit=UDT.GBAnnualBenefitsLimit,GBIsPerClaimLimitIP=UDT.GBIsPerClaimLimitIP,GBPerClaimLimitIP=UDT.GBPerClaimLimitIP,GBIsPerClaimLimitOP=UDT.GBIsPerClaimLimitOP,
GBPerClaimLimitOP=UDT.GBPerClaimLimitOP,GBPreExisting_ChronicLimit=UDT.GBPreExisting_ChronicLimit,GBGeoThreateningEmergencyTreatment=UDT.GBGeoThreateningEmergencyTreatment,
GBGeoElectiveTreatement=UDT.GBGeoElectiveTreatement,GBGeoOutsideResidentCountry=UDT.GBGeoOutsideResidentCountry,GBPremium=UDT.GBPremium,GBInsuranceLevy=UDT.GBInsuranceLevy,
GBPolicyFee=UDT.GBPolicyFee,GBTotalPremium=UDT.GBTotalPremium,IPHospitalizationClass=UDT.IPHospitalizationClass,IPHospitalizationClassLimit=UDT.IPHospitalizationClassLimit,
IPICUCoronaryTreatement=UDT.IPICUCoronaryTreatement,IPICUCoronaryTreatementLimit=UDT.IPICUCoronaryTreatementLimit,IPVariousTherapies=UDT.IPVariousTherapies,
IPVariousTherapiesLimit=UDT.IPVariousTherapiesLimit,IPOrganTransplantationServices=UDT.IPOrganTransplantationServices,IPOrganTransplantationServicesLimit=UDT.IPOrganTransplantationServicesLimit,
IPAmbulanceServices=UDT.IPAmbulanceServices,IPAmbulanceServicesLimit=UDT.IPAmbulanceServicesLimit,IPCompanionRoomBoardExpenses=UDT.IPCompanionRoomBoardExpenses,
IPCompanionRoomBoardExpensesLimit=UDT.IPCompanionRoomBoardExpensesLimit,IPHospitalCashBenefitsCashPerDay=UDT.IPHospitalCashBenefitsCashPerDay,
IPHospitalCashBenefitsCashTotal=UDT.IPHospitalCashBenefitsCashTotal,IPRepatriationCostTraansport=UDT.IPRepatriationCostTraansport,IPAddBenefits=UDT.IPAddBenefits,
OPPhysicianConsultationDeductible=UDT.OPPhysicianConsultationDeductible,OPPhysicianConsultationDeductibleLimit=UDT.OPPhysicianConsultationDeductibleLimit,OPDiagnostics=UDT.OPDiagnostics,
OPDiagnosticsLimit=UDT.OPDiagnosticsLimit,OPPharmaceuticals=UDT.OPPharmaceuticals,OPPharmaceuticalsLimit=UDT.OPPharmaceuticalsLimit,OPPhysiotheraphy=UDT.OPPhysiotheraphy,
OPPhysiotheraphyLimit=UDT.OPPhysiotheraphyLimit,OPDaycareTreatment=UDT.OPDaycareTreatment,OPDaycareTreatmentLimit=UDT.OPDaycareTreatmentLimit,OPOutPatientSurgery=UDT.OPOutPatientSurgery,
OPOutPatientSurgeryLimit=UDT.OPOutPatientSurgeryLimit,OPWorkRelatedInjuries=UDT.OPWorkRelatedInjuries,OPWorkRelatedInjuriesLimit=UDT.OPWorkRelatedInjuriesLimit,OPAccidentalDamageNaturalTeeth=UDT.OPAccidentalDamageNaturalTeeth,
OPAccidentalDamageNaturalTeethLimit=UDT.OPAccidentalDamageNaturalTeethLimit,OPNewBornBabyCoverage=UDT.OPNewBornBabyCoverage,OPNewBornBabyCoverageLimit=UDT.OPNewBornBabyCoverageLimit,
OPNursingAtHome=UDT.OPNursingAtHome,OPNursingAtHomeLimit=UDT.OPNursingAtHomeLimit,OPAlternativeMedicine=UDT.OPAlternativeMedicine,OPAlternativeMedicineCoverage=UDT.OPAlternativeMedicineCoverage,
OPAlternativeMedicineCoverageLimit=UDT.OPAlternativeMedicineCoverageLimit,OPAlternativeMedicineDeductible=UDT.OPAlternativeMedicineDeductible,OPAlternativeMedicineDeductibleLimit=UDT.OPAlternativeMedicineDeductibleLimit,
OPFreeAccessOutsideOMAN=UDT.OPFreeAccessOutsideOMAN,EBFreeAccessTPANetwork=UDT.EBFreeAccessTPANetwork,EBFreeAccessTPANetworkLimit=UDT.EBFreeAccessTPANetworkLimit,EBReimbursementNonNetworkMedicalProviders=UDT.EBReimbursementNonNetworkMedicalProviders,
EBReimbursementNonNetworkMedicalProvidersLimit=UDT.EBReimbursementNonNetworkMedicalProvidersLimit,EBEmergencyTreatment=UDT.EBEmergencyTreatment,EBEmergencyTreatmentLimit=UDT.EBEmergencyTreatmentLimit,
EBEmergencyTreatmentCountry=UDT.EBEmergencyTreatmentCountry,ABBenefits=UDT.ABBenefits,ABDescription=UDT.ABDescription,ABExclusions=UDT.ABExclusions,PolicyNo='POL/3003/001'
 from TB_Quotation Q

Inner Join @UDT_QuotationGenerator UDT on UDT.QuotationId=Q.QuotationId
WHERE Q.QuotationId=@QuotationId
end
else
begin
Insert into TB_Quotation(CIInsuranceCompanyName,CIClientCompanyName,CIProducerType,CIProducerName,CISelectCommission,CINoOfPlanCategories,

GBMedicalProviderNetwork,GBScopeOfCover,GBAreaOfCoverage,GBPersonCovered,GBAnnualBenefitsLimit,GBIsPerClaimLimitIP,GBPerClaimLimitIP,GBIsPerClaimLimitOP,GBPerClaimLimitOP,
GBPreExisting_ChronicLimit,GBGeoThreateningEmergencyTreatment,GBGeoElectiveTreatement,GBGeoOutsideResidentCountry,

IPHospitalizationClass,IPHospitalizationClassLimit,IPICUCoronaryTreatement,IPICUCoronaryTreatementLimit,IPVariousTherapies,IPVariousTherapiesLimit,IPOrganTransplantationServices,
IPOrganTransplantationServicesLimit,IPAmbulanceServices,IPAmbulanceServicesLimit,IPCompanionRoomBoardExpenses,IPCompanionRoomBoardExpensesLimit,IPHospitalCashBenefitsCashPerDay,
IPHospitalCashBenefitsCashTotal,IPRepatriationCostTraansport,IPAddBenefits,

OPPhysicianConsultationDeductible,OPPhysicianConsultationDeductibleLimit,OPDiagnostics,OPDiagnosticsLimit,OPPharmaceuticals,OPPharmaceuticalsLimit,OPPhysiotheraphy,OPPhysiotheraphyLimit,
OPDaycareTreatment,OPDaycareTreatmentLimit,OPOutPatientSurgery,OPOutPatientSurgeryLimit,OPWorkRelatedInjuries,OPWorkRelatedInjuriesLimit,OPAccidentalDamageNaturalTeeth,
OPAccidentalDamageNaturalTeethLimit,OPNewBornBabyCoverage,OPNewBornBabyCoverageLimit,OPNursingAtHome,OPNursingAtHomeLimit,OPAlternativeMedicine,OPAlternativeMedicineCoverage,
OPAlternativeMedicineCoverageLimit,OPAlternativeMedicineDeductible,OPAlternativeMedicineDeductibleLimit,OPFreeAccessOutsideOMAN,

EBFreeAccessTPANetwork,EBFreeAccessTPANetworkLimit,EBReimbursementNonNetworkMedicalProviders,EBReimbursementNonNetworkMedicalProvidersLimit,EBEmergencyTreatment,EBEmergencyTreatmentLimit,
EBEmergencyTreatmentCountry,

ABBenefits,ABDescription,ABExclusions,Status,GBPremium,	GBInsuranceLevy,	GBPolicyFee,	GBTotalPremium,GBMedicalNetworkHospitals)
select CIInsuranceCompanyName,CIClientCompanyName,CIProducerType,CIProducerName,CISelectCommission,CINoOfPlanCategories,

GBMedicalProviderNetwork,GBScopeOfCover,GBAreaOfCoverage,GBPersonCovered,GBAnnualBenefitsLimit,GBIsPerClaimLimitIP,GBPerClaimLimitIP,GBIsPerClaimLimitOP,GBPerClaimLimitOP,
GBPreExisting_ChronicLimit,GBGeoThreateningEmergencyTreatment,GBGeoElectiveTreatement,GBGeoOutsideResidentCountry,

IPHospitalizationClass,IPHospitalizationClassLimit,IPICUCoronaryTreatement,IPICUCoronaryTreatementLimit,IPVariousTherapies,IPVariousTherapiesLimit,IPOrganTransplantationServices,
IPOrganTransplantationServicesLimit,IPAmbulanceServices,IPAmbulanceServicesLimit,IPCompanionRoomBoardExpenses,IPCompanionRoomBoardExpensesLimit,IPHospitalCashBenefitsCashPerDay,
IPHospitalCashBenefitsCashTotal,IPRepatriationCostTraansport,IPAddBenefits,

OPPhysicianConsultationDeductible,OPPhysicianConsultationDeductibleLimit,OPDiagnostics,OPDiagnosticsLimit,OPPharmaceuticals,OPPharmaceuticalsLimit,OPPhysiotheraphy,OPPhysiotheraphyLimit,
OPDaycareTreatment,OPDaycareTreatmentLimit,OPOutPatientSurgery,OPOutPatientSurgeryLimit,OPWorkRelatedInjuries,OPWorkRelatedInjuriesLimit,OPAccidentalDamageNaturalTeeth,
OPAccidentalDamageNaturalTeethLimit,OPNewBornBabyCoverage,OPNewBornBabyCoverageLimit,OPNursingAtHome,OPNursingAtHomeLimit,OPAlternativeMedicine,OPAlternativeMedicineCoverage,
OPAlternativeMedicineCoverageLimit,OPAlternativeMedicineDeductible,OPAlternativeMedicineDeductibleLimit,OPFreeAccessOutsideOMAN,

EBFreeAccessTPANetwork,EBFreeAccessTPANetworkLimit,EBReimbursementNonNetworkMedicalProviders,EBReimbursementNonNetworkMedicalProvidersLimit,EBEmergencyTreatment,EBEmergencyTreatmentLimit,
EBEmergencyTreatmentCountry,

ABBenefits,ABDescription,ABExclusions,'Pending',GBPremium,	GBInsuranceLevy,	GBPolicyFee,	GBTotalPremium,GBMedicalNetworkHospitals
from @UDT_QuotationGenerator
set @Result=scope_identity()

end
if(@Result>0)
begin
--004 = Company code P/004/01/20/3301/00108
--	    01 =   Branch
--                 20 =   YEAR
--                3101 = Product code
--                00001 = Sequence number   
--[GLPolicyNo] [nvarchar](100) NULL,
--	[WLPolicyNo] [nvarchar](100) NULL,
--	[MedicalPolicyNo] [nvarchar](100) NULL,

update TB_Quotation set DraftNo='004/01/21/1452/'+CONVERT(nvarchar,@Result) where QuotationId=@Result
select ISNULL(DraftNo,'004/01/21/3101/'+CONVERT(nvarchar,@Result) ) as DraftNo from TB_Quotation where QuotationId=@Result

end
else
begin
select ISNULL(PolicyNo,'004/01/21/3101/'+CONVERT(nvarchar,@QuotationId) ) as Policy from TB_Quotation where QuotationId=@QuotationId
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_EmployeeMaster] (@UDT_EmployeeMaster dbo.UDT_EmployeeMaster 
readonly,
@UserName nvarchar(100)) 
AS 
  BEGIN 
Insert into TB_EmployeeMaster(EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,
Remarks,EntryType,AddedBy,AddedOn)

select EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,
Remarks,EntryType,@UserName,GETDATE() from @UDT_EmployeeMaster
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeRegistration]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[SP_EmployeeRegistration]
(
@UserName nvarchar(100),
@UserEmployeeNo nvarchar(100),
@UserTypeId int,
@ReportingManager NVARCHAR(100),
@EmailId nvarchar(100),
@MobileNumber nvarchar(15),
@CreatedBy nvarchar(50),
@RoleId int

)
as
Begin
declare @EmpId int
if not exists(Select 1 from TB_Employee where UserEmployeeNo=@UserEmployeeNo)
Insert into TB_Employee(UserName,UserEmployeeNo,UserTypeId,ReportingManager,EmailId,MobileNumber,AddedBy,AddedOn,RoleId)
select @UserName ,@UserEmployeeNo,@UserTypeId,@ReportingManager,@EmailId,@MobileNumber ,@CreatedBy,GETDATE() ,@RoleId
set @EmpId=SCOPE_IDENTITY()
if(@EmpId>0)
begin
Select UserName,EmailId from TB_Employee where EmployeeId=@EmpId
end
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerateBussEntities]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_GenerateBussEntities]
as
begin

declare @TableName sysname = 'TableName'
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
/****** Object:  StoredProcedure [dbo].[SP_GetClientCompanyMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetClientCompanyMaster]
as
begin
select ClientComId,ClientCompCode,ClientCompanyName from TB_ClientCompanyMaster


--declare @p3 dbo.UDT_Quotation
--insert into @p3 values(0,N'',N'Bajaj Allianz Life Insurance Company',N'Cognizant',N'Broker',N'Modern Gulf Insurance Services',10,4,N'BAND - A',NULL,N'on',N'Dubai~kuwait~England~America',N'on~on~on~on',20000,N'',10000,N'',10000,10000,N'Worldwide',N'Specific Country',N'on',12000,66,200,12266,N'IPHospitalizationClassLimit',20000,N'IPICUCoronaryTreatementLimit',20000,N'IPVariousTherapiesLimit',20000,N'IPOrganTransplantationServicesLimit',20000,N'IPAmbulanceServicesLimit',20000,N'IPCompanionRoomBoardExpensesLimit',20000,2002,2000,2000,N'Benefits',N'Limit Per Person',1,N'Co-Pay',0,N'Co-Pay',0,N'OPPhysiotheraphyLimit',19999,N'OPDaycareTreatmentLimit',10000,N'OPOutPatientSurgeryLimit',20000,N'OPWorkRelatedInjuriesLimit',20000,N'OPAccidentalDamageNaturalTeethLimit',20000,N'OPNewBornBabyCoverageLimit',20000,N'OPNursingAtHomeLimit',20000,N'Homeopathy~Ayurveda~Chiropractic',N'Pool Limit Per Policy',0,N'Limit Per Person',1,N'England~America',N'Covered in Full',N'Clinic',N'Within the Resident Country',N'kuwait',N'Worldwide',N'Free Access',N'England~America',N'Benefits',N'Descriptions',N'Exclusions')

--exec SP_CreateQuotation @QuotationId=0,@UserName=N'Admin',@UDT_QuotationGenerator=@p3
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCompanies]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetCompanies]  
(
@CompanyDraftNo nvarchar(75)
)
as Begin  
declare @sql nvarchar(max)

set @sql='select InsCompanyId ,PolicyNumber,CompanyName,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer

 from TB_RegisterInsCompany '
 if(@CompanyDraftNo<>'')

set @sql+='where PolicyNumber='''+@CompanyDraftNo+''''
print @sql
exec sp_executesql @sql;

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetGLWLPolicyNos]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetGLWLPolicyNos]
(
@CompanyName nvarchar(100)
)
as
begin
Select top 1 isnull(GLPolicyNo,'') as GLPolicyNumber,	isnull(WLPolicyNo,'') as WCPolicyNumber,
CONVERT(nvarchar(10), AddedOn, 103)+' To '+CONVERT(nvarchar(10), dateadd(year,1,AddedOn), 103) as
PolicyPeriod	 from TB_Quotation where CIClientCompanyName=@CompanyName and Status='Approved'
end





		
GO
/****** Object:  StoredProcedure [dbo].[SP_GetLineChartUW]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetLineChartUW](
@UserName nvarchar(50)
)
as 
begin

declare @tt table(
CalenderId bigint,
MonthName nvarchar(25),
Pending bigint,
Approved bigint,
Rejected bigint,
Status nvarchar(50)
)
insert into @tt(CalenderId,MonthName,Pending,Approved,Rejected)
select * from (select c.Calenderid, c.MonthName,IsNull(Status,'Yet to process') as Status from
TB_Quotation M 

right join TB_Calender C on C.MonthName=DATENAME(month, AddedOn) and year(getdate())=year(AddedOn) ) t
pivot
(count (Status) for Status in([Pending],[Approved],[Rejected])) as pivot_final_table order by CalenderId
--select CalenderId,MonthName,isnull(Pending,0) as Pending,isnull(Approved,0) as Approved,isnull(Rejected,0) as Rejected

--from @tt

SELECT CalenderId,MonthName,Pending,Approved,Rejected,Sum(Pending+Approved+Rejected) as Total
			FROM @tt group by CalenderId,MonthName,Pending,Approved,Rejected

			END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetLoginInfo]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetLoginInfo]
(
@UserName nvarchar(25),
@Password nvarchar(25),
@IsFirstLogin nvarchar out,
@RoleId int
)
as
begin
if(@RoleId!=1)
begin
--select L.UserName,L.RoleId from TB_Login L 
----left join TB_Employee E on e.UserName=l.UserName
----Inner join TB_UserTypeMaster UTM on UTM.UserTypeId=E.UserTypeId
-- where L.UserName=@UserName and L.Password=@Password and L.RoleId=@RoleId

select 0 as EmployeeId, L.UserName,''as UserEmployeeNo,'' as Designation,''as ReportingManager,''as EmailId,'' as MobileNumber,L.RoleId,L.LoginId from TB_Login L 
where L.UserName=@UserName and L.Password=@Password and L.RoleId=@RoleId
end
else
begin
select 0 as EmployeeId, L.UserName,''as UserEmployeeNo,'' as Designation,''as ReportingManager,''as EmailId,'' as MobileNumber,L.RoleId,L.LoginId from TB_Login L 
where L.UserName=@UserName and L.Password=@Password and L.RoleId=@RoleId
end
set @IsFirstLogin=(select IsPasswordChanged from TB_Login where UserName=@UserName and Password=@Password and RoleId=@RoleId)

end


GO
/****** Object:  StoredProcedure [dbo].[SP_GetProducerList]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetProducerList]
(@MasterType nvarchar(50))
as
begin
select Id,Name,EmailId from TB_ProducerMaster where MasterType=@MasterType
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetQuotation]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetQuotation](
@QuotationId bigint)
as begin
select 

QuotationId,DraftNo,Status,CIInsuranceCompanyName,CIClientCompanyName,CIProducerType,CIProducerName,CISelectCommission,CINoOfPlanCategories,GBMedicalProviderNetwork,
GBScopeOfCover,GBAreaOfCoverage,GBPersonCovered,GBAnnualBenefitsLimit,GBIsPerClaimLimitIP,GBPerClaimLimitIP,GBIsPerClaimLimitOP,GBPerClaimLimitOP,GBPreExisting_ChronicLimit,
GBGeoThreateningEmergencyTreatment,GBGeoElectiveTreatement,GBGeoOutsideResidentCountry,IPHospitalizationClass,IPHospitalizationClassLimit,IPICUCoronaryTreatement,IPICUCoronaryTreatementLimit,
IPVariousTherapies,IPVariousTherapiesLimit,IPOrganTransplantationServices,IPOrganTransplantationServicesLimit,IPAmbulanceServices,IPAmbulanceServicesLimit,IPCompanionRoomBoardExpenses,
IPCompanionRoomBoardExpensesLimit,IPHospitalCashBenefitsCashPerDay,IPHospitalCashBenefitsCashTotal,IPRepatriationCostTraansport,IPAddBenefits,OPPhysicianConsultationDeductible,
OPPhysicianConsultationDeductibleLimit,OPDiagnostics,OPDiagnosticsLimit,OPPharmaceuticals,OPPharmaceuticalsLimit,OPPhysiotheraphy,OPPhysiotheraphyLimit,OPDaycareTreatment,OPDaycareTreatmentLimit,
OPOutPatientSurgery,OPOutPatientSurgeryLimit,OPWorkRelatedInjuries,OPWorkRelatedInjuriesLimit,OPAccidentalDamageNaturalTeeth,OPAccidentalDamageNaturalTeethLimit,OPNewBornBabyCoverage,
OPNewBornBabyCoverageLimit,OPNursingAtHome,OPNursingAtHomeLimit,OPAlternativeMedicine,OPAlternativeMedicineCoverage,OPAlternativeMedicineCoverageLimit,OPAlternativeMedicineDeductible,
OPAlternativeMedicineDeductibleLimit,OPFreeAccessOutsideOMAN,EBFreeAccessTPANetwork,EBFreeAccessTPANetworkLimit,EBReimbursementNonNetworkMedicalProviders,
EBReimbursementNonNetworkMedicalProvidersLimit,EBEmergencyTreatment,EBEmergencyTreatmentLimit,EBEmergencyTreatmentCountry,ABBenefits,ABDescription,ABExclusions,PolicyNo,
GBPremium,
GBInsuranceLevy,
GBPolicyFee,
GBTotalPremium
 from tb_quotation where QuotationId=@QuotationId
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRoles]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetRoles]

as
begin
Select * from tb_role
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserType]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetUserType]
as

begin
Select UserTypeId,Designation from TB_UserTypeMaster
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUWDashboard]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GetUWDashboard](
@UserName nvarchar(20)
)
as begin
declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2),@TotalNoPolQuotationDrafted bigint,
@TotNoPolIssued bigint,@TotalNoPolRejected bigint,

@TotalPremiumEarned decimal(18,2),
@TotalPremiumRejected decimal(18,2),
@TotalPremiumPending decimal(18,2)

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from Quotation )--where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))
set @TotalNoPolQuotationDrafted =(select count(*) as TotalUnderProcessYear from Quotation where Status='Pending')
set @TotNoPolIssued =(select count(*) as TotalLostYear from Quotation where Status='Approved')
set @TotalNoPolRejected =(select count(*) as TotalRenewedYear from Quotation where Status='Rejected')
--set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolQuotationDrafted,0)         as TotalNoPolQuotationDrafted, 
       isnull(@TotNoPolIssued,0)         as TotNoPolIssued, 
       isnull(@TotalNoPolRejected,0)         as TotalNoPolRejected, 
       @UserName as UserName

select QuotationId, DraftNo,ISNULL(PolicyNo,'Yet to Generate') as PolicyNo,InsuranceCompanyName,ClientCompanyName,Status from Quotation order by CreatedAt desc

set @TotalPremiumEarned=(select sum(TotalPremium) from Quotation where Status='Approved')
set @TotalPremiumRejected=(select sum(TotalPremium) from Quotation where Status='Rejected')
set @TotalPremiumPending=(select sum(TotalPremium) from Quotation where Status='Pending')

select ISNULL(@TotalPremiumEarned,0.00) as TotalPremiumEarned,ISNULL(@TotalPremiumRejected,0.00) as TotalPremiumRejected,ISNULL(@TotalPremiumPending,0.00) as TotalPremiumPending


--Alter table TB_Quotation add PolicyNo nvarchar(80)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAgentMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertAgentMaster](
@AgentName	nvarchar	(80),
--@AgentCode	nvarchar	(40),
@Address	nvarchar	(400),
@City	nvarchar	(40),
@Zipcode	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_AgentMaster WHERE AgentName=@AgentName)
BEGIN
Insert into TB_AgentMaster(AgentName,Address,City,Zipcode,ContactPerson,MobileNumber,EmailId)
select @AgentName,@Address,@City,@Zipcode,@ContactPerson,@MobileNumber,@EmailId
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertBrokerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertBrokerMaster](
@BrokerName	nvarchar	(80),
--@BrokerCode	nvarchar	(40),
@Address	nvarchar	(400),
@City	nvarchar	(40),
@Zipcode	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_BrokerMaster WHERE BrokerName=@BrokerName)
BEGIN
Insert into TB_BrokerMaster(BrokerName,Address,City,Zipcode,ContactPerson,MobileNumber,EmailId)
select @BrokerName,@Address,@City,@Zipcode,@ContactPerson,@MobileNumber,@EmailId
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertClientCompanyMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertClientCompanyMaster](
@ClientCompanyName	nvarchar	(200),
@Address	nvarchar	(400),
@Password	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100),
@Currency	nvarchar	(20)
)
AS 
BEGIN
declare @Id int,@MaxId bigint,@UserName nvarchar(100)
set @MaxId=(Select max(ClientComId) from TB_ClientCompanyMaster)
IF(@MaxId IS NULL)
SET @MaxId=1


set @UserName=(SELECT 'CL'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8))) 

IF NOT EXISTS(SELECT 1 FROM TB_ClientCompanyMaster WHERE ClientCompanyName=@ClientCompanyName)
BEGIN
Insert into TB_ClientCompanyMaster(ClientCompanyName,Address,ContactPerson,MobileNumber,EmailId,Currency)
select @ClientCompanyName,@Address,@ContactPerson,@MobileNumber,@EmailId,@Currency

Insert into TB_Login(UserName,Password,RoleId,CreatedAt,AddedBy)
select @UserName,SUBSTRING(@Password,0,10),0,GETDATE(),'Admin'
set @Id=SCOPE_IDENTITY()

if(@Id>0)
begin
Select UserName,Password from TB_Login where LoginId=@Id
end
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertDiagnosticsMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertDiagnosticsMaster](
@DiagnosticsName nvarchar(50),
@DiagnosticsCode nvarchar(40)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_DiagnosticsMaster WHERE DiagnosticsName=@DiagnosticsName)
BEGIN
Insert into TB_DiagnosticsMaster(DiagnosticsName,DiagnosticsCode)
select @DiagnosticsName,@DiagnosticsCode
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertDrugMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_InsertDrugMaster](
@DrugName	nvarchar	(40),
@DrugCode	nvarchar	(40)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_DrugMaster WHERE DrugName=@DrugName)
BEGIN
Insert into TB_DrugMaster(DrugName,DrugCode)
select @DrugName,@DrugCode
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEndorsement]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_InsertEndorsement] (

	@UDT_Endorsement dbo.UDT_Endorsement readonly,
	@UDTGLEndorsement dbo.UDT_GLEndorsement readonly,
	@UDTWLEndorsement dbo.UDT_WLEndorsement readonly,
	@UserName nvarchar(100)) 

AS 
  BEGIN 
  declare @EndorsementId bigint
  Declare @QuotationId bigint
  Select @QuotationId=QuotationId From TB_Quotation where CIClientCompanyName IN (	SELECT  Distinct
		ClientName
	FROM @UDT_Endorsement)

	INSERT INTO TB_Endorsement(
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
	INSERT INTO TB_GLEndorsement(EndorsementId,EmployeeName,DOB,SumAssured,EffectiveDate,CreatedAt,CreatedBy)
	SELECT @EndorsementId,EmployeeName,DOB,SumAssured,EffectiveDate,GETDATE(),@UserName FROM @UDTGLEndorsement


	INSERT INTO TB_WLEndorsement(EndorsementId,EmployeeName,DOB,EAWRo,EffectiveDate,CreatedAt,CreatedBy)
	SELECT @EndorsementId,EmployeeName,DOB,EAWRo,EffectiveDate,GETDATE(),@UserName FROM @UDTWLEndorsement

	SELECT EndorsementId,
		TicketNumber,ClientName,MailReceivedDate,GLPolicyNumber,WCPolicyNumber,
		PolicyPeriod,ErrorDescription,EndorsementType,GLPremium,WCPremium,MedicalPolicyNo,
		MedicalPremium,CreatedAt,CreatedBy 
	FROM TB_Endorsement ORDER BY CreatedAt DESC
  
END 

 
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertHospitalMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertHospitalMaster](
@HospitalName	nvarchar	(80),
@Address	nvarchar	(200),
@State	nvarchar	(40),
@City	nvarchar	(40),
@Zipcode	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100),
@Band nvarchar	(15)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_HospitalMaster WHERE HospitalName=@HospitalName and Band=@Band)
BEGIN
Insert into TB_HospitalMaster(HospitalName,State, Address,City,Zipcode,ContactPerson,MobileNumber,EmailId,Band)
select @HospitalName,@state,@Address,@City,@Zipcode,@ContactPerson,@MobileNumber,@EmailId,@Band
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertInsCompanyMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_InsertInsCompanyMaster](
@InsurancecompanyName	nvarchar	(80),
@Address	nvarchar	(50),
@State	nvarchar	(40),
@City	nvarchar	(40),
@Zipcode	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_InsuranceCompanyMaster WHERE InsurancecompanyName=@InsurancecompanyName)
BEGIN
Insert into TB_InsuranceCompanyMaster(InsurancecompanyName,State,Address,City,Zipcode,ContactPerson,MobileNumber,EmailId)
select @InsurancecompanyName,@State,@Address,@City,@Zipcode,@ContactPerson,@MobileNumber,@EmailId
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertLabMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_InsertLabMaster](
@LabName	nvarchar	(80),
--@LabCode	nvarchar	(30),
@Address	nvarchar	(50),
@State	nvarchar	(40),
@City	nvarchar	(40),
@Zipcode	nvarchar	(20),
@ContactPerson	nvarchar	(80),
@MobileNumber	nvarchar	(40),
@EmailId	nvarchar	(100)
)
AS 
BEGIN
IF NOT EXISTS(SELECT 1 FROM TB_LabMaster WHERE LabName=@LabName)
BEGIN
Insert into TB_LabMaster(LabName,State,Address,City,Zipcode,ContactPerson,MobileNumber,EmailId)
select @LabName,@State,@Address,@City,@Zipcode,@ContactPerson,@MobileNumber,@EmailId
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertProducerMaster]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[SP_InsertProducerMaster]
(
  @MasterType nvarchar(50),
  @Name nvarchar(50),
  --@UserName nvarchar(50), 
  @Password nvarchar(50),
  @EmailId nvarchar(50),
  @AddedBy nvarchar(50)
 )
as
Begin
declare @Id int,@MaxId bigint,@UserName nvarchar(100)
set @MaxId=(Select max(Id) from TB_ProducerMaster where MasterType=@MasterType)
IF(@MaxId IS NULL)
SET @MaxId=1

if(@MasterType='Agent')
begin
set @UserName=(SELECT 'AG'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8))) 
end
if(@MasterType='Broker')
begin
set @UserName=(SELECT 'BA'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8))) 
end
if(@MasterType='Branches')
begin
set @UserName=(SELECT 'BR'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8))) 
end
if(@MasterType='DirectSales')
begin
set @UserName=(SELECT 'SA'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8))) 
end
IF not exists(select 1 from TB_ProducerMaster where EmailId=@EmailId)
begin
insert into tb_producermaster(MasterType,Name,UserName,EmailId,AddedBy,EntryType,Password)
select @MasterType,@Name,@UserName, @EmailId,@AddedBy,'Data Entry',SUBSTRING(@Password,0,10)
set @Id=SCOPE_IDENTITY()
end
if(@Id>0)
begin
Select UserName,EmailId,Password from TB_ProducerMaster where Id=@Id
end
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ProducerMasterUpload]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_ProducerMasterUpload] (@UDT_ProducerMaster dbo.UDT_ProducerMaster 
readonly,
@UserName nvarchar(100)) 
AS 
  BEGIN 
     declare @Id int,@MaxId bigint,@Cnt bigint
	 set @MaxId=1
	 declare @tt table(
Id int,
Role nvarchar(50)
	 )
	 insert into @tt(Id,Role)
	 select ISNULL(MAX(Id),0) as Id,R.Description from TB_ProducerMaster PM 
	 right join TB_Role R on R.Description=pm.MasterType
	 
	 group by R.Description
	 
	insert into tb_producermaster(UserName,MasterType,Name,AddedBy,EntryType,EmailId,Password)
	 select
	 Case  
	 when 
	 UDT.MasterType='Agent' then 
	 'AG'+right('0000'+CONVERT([Nvarchar](8), tt.Id+ROW_NUMBER() over (partition by tt.Role ORDER BY NAME)),(8))
	 when 
	 UDT.MasterType='Broker' then 
	 'BA'+right('0000'+CONVERT([Nvarchar](8), tt.Id+ROW_NUMBER() over (partition by tt.Role ORDER BY NAME)),(8))
	 
	 when 
	 UDT.MasterType='Branches' then 
	 'BR'+right('0000'+CONVERT([Nvarchar](8), tt.Id+ROW_NUMBER() over (partition by tt.Role ORDER BY NAME)),(8))
	 
	 when 
	 UDT.MasterType='DirectSales' then 
	 'SA'+right('0000'+CONVERT([Nvarchar](8), tt.Id+ROW_NUMBER() over (partition by tt.Role ORDER BY NAME)),(8))
	 
	 end as UserName,UDT.MasterType,UDT.Name,@UserName,'Bulk Upload',EmailId,@UserName
	  from @tt tt 

	 inner join @UDT_ProducerMaster UDT on UDT.MasterType=tt.Role
--set @Cnt=(select count(*) from @UDT_ProducerMaster)
		
--		insert into tb_producermaster(MasterType,Name,AddedBy,EntryType,UserName)
--select MasterType,Name,@UserName,'Bulk Upload',


--CASE
--    WHEN UDT.MasterType='Agent' THEN (SELECT 'AG'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8)))
--    WHEN UDT.MasterType='Broker' THEN (SELECT 'BA'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8)))
--    WHEN UDT.MasterType='Branches' THEN (SELECT 'BR'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8)))
--    WHEN UDT.MasterType='DirectSales' THEN (SELECT 'SA'+right('0000'+CONVERT([Nvarchar](8),@MaxId),(8)))
    
--    ELSE 'NA'
--END AS UserName
--from  @UDT_ProducerMaster UDT

			
        
		select distinct PM.EmailId,PM.UserName,PM.Password from TB_ProducerMaster PM
		inner join @UDT_ProducerMaster UDT on UDT.EmailId=PM.EmailId

  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_RaiseTicket]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RaiseTicket]
(
@TicketId int,@RaisedBy nvarchar(50),@Description nvarchar(500),@CreatedAt datetime,@CreatedBy nvarchar(50)
) 
AS
BEGIN
Insert into TB_Tickets(RaisedBy,Description,CreatedAt,CreatedBy)
select @RaisedBy,@Description,GETDATE(),@CreatedBy
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RegisterClient]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RegisterClient]
(
@UDT_ClientRegistration dbo.UDT_RegisterClient readonly

)
as
begin
declare @Result int,@Cnt int
set @Cnt=(select count(*) from TB_RegisterClient)
declare @PolicyNumber nvarchar(100)
set @PolicyNumber=(select PolicyNumber from @UDT_ClientRegistration)
if(@Cnt>0)

begin
print 1
set @PolicyNumber+=(SELECT top 1 @PolicyNumber+RIGHT('0000' + CAST([ClientId]+1 AS varchar(15)) , 5)
FROM TB_RegisterClient order by ClientId desc)
end
else
begin
print 2
set @PolicyNumber+=(SELECT @PolicyNumber+RIGHT('0000' + CAST(1 AS varchar(15)) , 5))
end

if not exists(select 1 from TB_RegisterClient C Inner join @UDT_ClientRegistration UDTC on UDTC.PolicyNumber=C.PolicyNumber)
begin

Insert into TB_RegisterClient(ClientName,PolicyNumber,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer,CreatedAt)
select distinct ClientName,@PolicyNumber,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer,GETDATE() from @UDT_ClientRegistration
end

set @Result=scope_identity()
if(@Result>0)
begin

select PolicyNumber from TB_RegisterClient where ClientId=@Result

end
else
begin
select '' as PolicyNumber
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_RegisterInsCompany]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RegisterInsCompany]
(
@UDT_InsCompanyRegistration dbo.UDT_InsCompanyRegister readonly

)
as
begin
declare @Result int,@Cnt int
set @Cnt=(select count(*) from TB_RegisterInsCompany)
declare @PolicyNumber nvarchar(100)
set @PolicyNumber=(select PolicyNumber from @UDT_InsCompanyRegistration)
if(@Cnt>0)

begin
print 1
set @PolicyNumber+=(SELECT top 1 @PolicyNumber+RIGHT('0000' + CAST([InsCompanyId]+1 AS varchar(15)) , 5)
FROM TB_RegisterInsCompany order by InsCompanyId desc)
end
else
begin
print 2
set @PolicyNumber+=(SELECT @PolicyNumber+RIGHT('0000' + CAST(1 AS varchar(15)) , 5))
end

if not exists(select 1 from TB_RegisterInsCompany C Inner join @UDT_InsCompanyRegistration UDTC on UDTC.PolicyNumber=C.PolicyNumber)
begin

Insert into TB_RegisterInsCompany(CompanyName,PolicyNumber,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer)
select distinct CompanyName,@PolicyNumber,CompanyAddress,City,StateName,ZipCode,ContactPerson,MobileNumber,EmailId,Currency,Broker,Reinsurer from @UDT_InsCompanyRegistration
end

set @Result=scope_identity()
if(@Result>0)
begin

select PolicyNumber from TB_RegisterInsCompany where InsCompanyId=@Result

end
else
begin
select '' as PolicyNumber
end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_ResetPassword]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_ResetPassword]
(
@UserName nvarchar(50)
)
as
begin
declare @Result int
if exists(select 1 from TB_Employee where UserName=@UserName and UserTypeId<>1)
begin
if not exists(select 1 from TB_Tickets where RaisedBy=@UserName and flag=0)
begin
Insert into TB_Tickets(RaisedBy,Description,CreatedAt,CreatedBy,Flag)
select @UserName,'Request raised for Reset the password',GETDATE(),@UserName,0
set @Result=SCOPE_IDENTITY()
end
if(@Result>0)
begin
Select @Result as TicketId, UserName,MobileNumber,EmailId from TB_Employee where UserName=@UserName
end
end
end

GO
/****** Object:  StoredProcedure [dbo].[SP_SaveLogin]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveLogin]
(
@UserName nvarchar(30),
@Password nvarchar(200),
@RoleId int
)
as 
begin
if not exists(select 1 from TB_Login where UserName=@UserName)
begin
If(@RoleId=0)
SET @RoleId=1
Insert into TB_Login(UserName,Password,RoleId,CreatedAt)
select @UserName,SUBSTRING(@Password,0,10),@RoleId,GETDATE()
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TPAInsEmployeeRegistration]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create Proc [dbo].[SP_TPAInsEmployeeRegistration]
(
@UserName nvarchar(100),
@UserEmployeeNo nvarchar(100),
@UserTypeId int,
@ReportingManager NVARCHAR(100),
@EmailId nvarchar(100),
@MobileNumber nvarchar(15),
@CreatedBy nvarchar(50)

)
as
Begin
declare @EmpId int
if not exists(Select 1 from TB_Employee where UserEmployeeNo=@UserEmployeeNo)
Insert into TB_Employee(UserName,UserEmployeeNo,UserTypeId,ReportingManager,EmailId,MobileNumber,AddedBy,AddedOn)
select @UserName ,@UserEmployeeNo,@UserTypeId,@ReportingManager,@EmailId,@MobileNumber ,@CreatedBy,GETDATE() 
set @EmpId=SCOPE_IDENTITY()
if(@EmpId>0)
begin
Select UserName,EmailId from TB_Employee where EmployeeId=@EmpId
end
End
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassword]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdatePassword]
(
@UserName nvarchar(25),
@OldPassword nvarchar(25),
@NewPassword nvarchar(25)
)
as 
begin
Update TB_Login set Password=@NewPassword,IsPasswordChanged='Y' where Password=@OldPassword and UserName=@UserName 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ViewTickets]    Script Date: 19-08-2021 17:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_ViewTickets]
as
begin
select TicketId,RaisedBy,Description,CreatedAt,case when Flag=0 then 'Pending' when Flag=1 then 'Completed' end as Status,EmailId from TB_Tickets t
inner join TB_Employee E on e.UserName=t.RaisedBy
end
GO

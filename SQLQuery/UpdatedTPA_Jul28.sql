USE [Totalligent]
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_EmployeeMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_Endorsement]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_GLEndorsement]    Script Date: 28-07-2021 00:32:54 ******/
CREATE TYPE [dbo].[UDT_GLEndorsement] AS TABLE(
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[SumAssured] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_InsCompanyRegister]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_ProducerMaster]    Script Date: 28-07-2021 00:32:54 ******/
CREATE TYPE [dbo].[UDT_ProducerMaster] AS TABLE(
	[MasterType] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[EmailId] [nvarchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_Quotation]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_RegisterClient]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_WLEndorsement]    Script Date: 28-07-2021 00:32:54 ******/
CREATE TYPE [dbo].[UDT_WLEndorsement] AS TABLE(
	[EmployeeName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[EAWRo] [decimal](18, 2) NULL,
	[EffectiveDate] [datetime] NULL
)
GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[BusinessDesignationTypeMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[ClientCompanyMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompanyMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ICMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOB]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[MedicalProviderMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerMaster]    Script Date: 28-07-2021 00:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerMaster](
	[ProducerMasterId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProducerCode] [nvarchar](20) NULL,
	[ProducerName] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducerMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReInsurerMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
 CONSTRAINT [PK_ReInsurerMaster] PRIMARY KEY CLUSTERED 
(
	[ReInsurerMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_AgentMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_BrokerMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_Calender]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_CategoryMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_DiagnosticsMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_DrugMaster]    Script Date: 28-07-2021 00:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DrugMaster](
	[DrugId] [int] IDENTITY(1,1) NOT NULL,
	[DrugCode] [nvarchar](50) NOT NULL,
	[DrugName] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Endorsement]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_GLEndorsement]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_LabMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_Login]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_ProducerMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_Quotation]    Script Date: 28-07-2021 00:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Quotation](
	[QuotationId] [bigint] IDENTITY(1,1) NOT NULL,
	[DraftNo] [nvarchar](100) NULL,
	[Status] [nvarchar](20) NULL,
	[PolicyNo] [nvarchar](80) NULL,
	[GLPolicyNo] [nvarchar](100) NULL,
	[WLPolicyNo] [nvarchar](100) NULL,
	[MedicalPolicyNo] [nvarchar](100) NULL,
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
	[ABExclusions] [nvarchar](max) NULL,
	[AddedBy] [nvarchar](100) NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuotationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RegisterClient]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_RegisterCompany]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_RegisterInsCompany]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_ReInsurerMaster]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_Role]    Script Date: 28-07-2021 00:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Tickets]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[TB_UserTypeMaster]    Script Date: 28-07-2021 00:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UserTypeMaster](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_WLEndorsement]    Script Date: 28-07-2021 00:32:54 ******/
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
/****** Object:  Table [dbo].[UDTWLEndorsement]    Script Date: 28-07-2021 00:32:54 ******/
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
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Funture', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', NULL, 1, NULL, NULL, NULL, N'2', 10, 20, 1, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:23:55.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'LICddd', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', NULL, 2, NULL, NULL, NULL, N'10002', 2, 5, 4, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:25:50.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Funture Generali India LIC', NULL, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', NULL, 1, NULL, NULL, NULL, N'1', 100, 3, 2, N'100000', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:28:05.663' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Cognizant', 1, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', NULL, 1, NULL, NULL, NULL, N'1', 2, 3, 1, N'123456', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:30:27.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Hexaware', 4, N'Padur', N'Chennai', N'TamilNadu', NULL, N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', N'omr', NULL, 1, NULL, CAST(1.000 AS Decimal(18, 3)), NULL, N'2', 2, 3, 3, N'987456321', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'D', NULL, CAST(N'2021-07-27T17:42:54.890' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ClientCompanyMaster] ([ClientCompanyMasterId], [ClientCompanyName], [InsuranceCompanyId], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [Currency], [LOB], [ProducerType], [ProducerName], [ProducerCommission], [RINumber], [RIName], [RIRetention], [AMIRetention], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, NULL, NULL, N'3/356 Bajanai Kovil st kelambakkam', N'sathangkuppam', N'tamilnadu', NULL, N'sathish', N'9455454545', N'sat@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'123456', N'ICICI00000', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T17:56:51.240' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ClientCompanyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeMaster] ON 
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (1, N'S', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'1989-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'R', NULL, 1, N'123', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (2, N'M', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'2011-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'R', NULL, 1, N'123', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T21:33:45.380' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[EmployeeMaster] ([EmployeeId], [EmployeeName], [EmployeeUniqueNumber], [ClientName], [Relation], [Nationality], [Category], [DOB], [Age], [Salary], [EAW], [SumAssured], [EffectiveDate], [Remarks], [EntryType], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (3, N'Sundhar Pitchai', N'1000', NULL, NULL, N'India', N'CATEGORY', CAST(N'1989-10-10T00:00:00.000' AS DateTime), 31, CAST(25000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'REMARKS', NULL, 1, N'123', N'ICICI', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-27T21:38:23.850' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuranceCompanyMaster] ON 
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:32:48.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 1, N'9', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:36:11.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'F', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:37:21.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Generali India LIC', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'1', N'I', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:38:37.797' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceCompanyMaster] ([ICMId], [InsurancecompanyName], [Address], [City], [State], [Zipcode], [ContactPerson], [MobileNumber], [EmailId], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'LIC', N'Padur', N'Chennai', N'TamilNadu', N'603103', N'Tamil', N'9840359280', N'sathishhn2005@gmail.com', 2, N'100000', N'ICICI000038', NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(N'2021-07-26T22:54:12.263' AS DateTime), N'Admin', CAST(N'2021-07-26T22:59:47.610' AS DateTime))
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
INSERT [dbo].[MedicalProviderMaster] ([MedicalProviderId], [MedicalProvider], [Name], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [Location], [Category], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Hospital', N'Sindhu Hospital', N'Sathish N', N'9454545', N'sat@gmail.com', N'chenai', N'chenai', N'TN', N'454210', N'KELAMBAKKAM', N'Band A', 1, N'123456789', N'iob02252', NULL, NULL, NULL, NULL, NULL, N'D', NULL, CAST(N'2021-07-28T00:08:28.143' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MedicalProviderMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProducerMaster] ON 
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (1, N'BA0001', N'RISK MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.590' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (2, N'BA0002', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.607' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (3, N'BA0003', N'INSURANCE MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (4, N'BA0004', N'AON MAJAN LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (5, N'BA0005', N'MARSH OMAN', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (6, N'BA0006', N'TRADE LINKS & SERVICES LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (7, N'BA0007', N'C.E. HEATH & PARTNERS L.L.C.', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (8, N'BA0008', N'INSURANCE SERVICE CENTRE', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (9, N'BA0009', N'CAPITAL INSURANCE CO. LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (10, N'BA0010', N'ARMOUR INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (11, N'BA0011', N'ASSARAIN INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (12, N'BA0012', N'OISB', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (13, N'BA0013', N'AL JAZEERA INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (14, N'BA0014', N'Al Amaana Insurance Services', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (15, N'BA0015', N'Reyadh Al Khatwah Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (16, N'BA0016', N'Al Falah Al Zahibi Trad & Cont LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (17, N'BA0017', N'Remal Al Qabil Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (18, N'BA0018', N'The Mountain Wolf  L.L.C', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (19, N'BA0019', N'Fasterz Trade International', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (20, N'BA0020', N'Diamond Road Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (21, N'BA0021', N'Zahir United LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (22, N'BA0022', N'Nizwa Window Trad.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (23, N'BA0023', N'Ibn Al Shirawi Trading', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (24, N'BA0024', N'Al Moram Co. Limitted LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (25, N'BA0025', N'Klaah Al Malada Trad. & Cont', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (26, N'BA0026', N'Safety City Trading LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (27, N'BA0027', N'Al Wasal United L.L.C', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (28, N'BA0028', N'Hameed Bin Salem Bin Saeed Al Shibly', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (29, N'BA0029', N'Al Sharqiya General Insurance Services', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (30, N'BA0030', N'M/s. Moosa Abdul Rahman Hassan & Co. LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (31, N'BA0031', N'The Mountain Wolf LLC.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (32, N'BA0032', N'SALAAM INSURANCE', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (33, N'BA0033', N'SOHAR INSURANCE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (34, N'BA0034', N'The Modern Region Ent.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (35, N'BA0035', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (36, N'BA0036', N'Dot International LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (37, N'BA0037', N'JADAWI AL SHARQIA TRDG.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (38, N'BA0038', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (39, N'BA0039', N'AL FAIRUZ INSURANCE SERVICES CO.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (40, N'BA0040', N'THE CASTLE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (41, N'BA0041', N'ZAHARAT AL HANA TRADING', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (42, N'BA0042', N'ARABIAN EXPERTISE HOUSE LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (43, N'BA0043', N'AL MURSI TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (44, N'BA0044', N'REZA TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (45, N'BA0045', N'OMAN ARAB BANK', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (46, N'BA0046', N'AL SHABAB AL WATANIYA ENT.', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (47, N'BA0047', N'MUSHAREEA AL SHABAB AL WATANIYA', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (48, N'BA0048', N'INFOLINE LLC', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (49, N'BA0049', N'AL RAIS TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (50, N'BA0050', N'SUHAIL BAHWAN - NISSAN', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (51, N'BA0051', N'MAIZE TRD. CONT. EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (52, N'BA0052', N'OMAN TRADING EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (53, N'BA0053', N'MAZAYA MUSCAT LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (54, N'BA0054', N'DIRECT LINE LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (55, N'BA0055', N'MAIZ ENTERPRISES TRADING', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (56, N'BA0056', N'Global United Insurance Services Co.', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (57, N'BA0057', N'M/S TOWEL AUTO CENTRE L.L.C', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (58, N'BA0058', N'M/S CRESENT GLOBAL', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (59, N'BA0059', N'UNITED FINANCE COMPANY', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (60, N'BA0060', N'ORYX INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (61, N'BA0061', N'FIRST POLICY INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (62, N'BA0062', N'High Capacity Trading LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (63, N'BA0063', N'PWS GULF LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (64, N'BA0064', N'SUN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (65, N'BA0065', N'OISB (SOHAR)', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (66, N'BA0066', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (67, N'BA0067', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (68, N'BA0068', N'TRUST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (69, N'BA0069', N'REGAL INSURANCE MANAGEMENT SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (70, N'BA0070', N'RUKHN AL BASHASHA TRAD', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (71, N'BA0071', N'GULF INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (72, N'BA0074', N'CAPITAL INSURANCE SERVICES SALALAH', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (73, N'BA0075', N'UNITED INSURANCES SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (74, N'BA0076', N'MUSCAT FINANCE CO LTD', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (75, N'BA0077', N'MAHINDRA INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (76, N'BA0078', N'ISI BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (77, N'BA0079', N'AL-QANDEEL INSURANCE SERVICE LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (78, N'BA0080', N'RAZAN TRAVEL', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (79, N'BA0081', N'KHIMIJI RAMDAS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (80, N'BA0082', N'NEW OMAN INSURANCE & REINSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (81, N'BA0083', N'INTERNATIONAL TRAVEL & TOURISUM LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (82, N'BA0084', N'ACE BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (83, N'BA0085', N'AL NAWRAS AL MALAKI INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (84, N'BA0086', N'BANK NIZWA S.A.O.G', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (85, N'BA0087', N'GAPCORP INSURANCE  BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (86, N'BA0088', N'ALLIANCE INSURANCE BROKER LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (87, N'BA0089', N'HOWDEN INSURANCE BROKERS (S.) PTE. LIMIT', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (88, N'BA0090', N'GLOBAL UNITED INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (89, N'BA0091', N'ASLAF AL - KHAIR INTERNATIONAL LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (90, N'BA0092', N'AL IZZ INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (91, N'BA0093', N'NEW GENERATION INSURANCE SERVICES CO LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (92, N'BA0094', N'MODERN GULF INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (93, N'BA0095', N'Al Sharia Business & Services', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (94, N'BA0096', N'AL INMA TRAD. ENTERPRISES', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (95, N'BA0097', N'AL NOWRAS AL LAAMEA TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (96, N'BA0098', N'SAMA HARWEEL INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (97, N'BA0099', N'FUTURE SOLUTIONS COMPANY LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (98, N'BA0100', N'SAIH ALMALAH INS BROK LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (99, N'BA0101', N'FASTERZ (HVV)', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (100, N'BA0102', N'PROTECTOPIA INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (101, N'BA0103', N'FUTURE SOLUTIONS COMPANY DEALER BUSINESS', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (102, N'BA0104', N'BEST WISHES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (103, N'BA0105', N'IBN AL-SHIRAWI TRADING LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (104, N'BA0106', N'FENCHURCH FARIS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (105, N'BA0107', N'Zenith Insurance Services LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (106, N'BA0108', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (107, N'BA0109', N'AL-SAJAYA NATIONAL Ent.', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (108, N'BA0110', N'ARCHIRSOOT TRAD & CONTR CO', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (109, N'BA0111', N'INTERNATIONAL ENTERPRISES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (110, N'BA0112', N'CLAW SILVER TRADING', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (111, N'BA0113', N'GUARANTEE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (112, N'BA0114', N'AL SALAMAH INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (113, N'BA0115', N'NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (114, N'BA0116', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (115, N'BA0117', N'RUKUN ALYAQEEN INSURANCE SERICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (116, N'BA0118', N'MIDDLE EAST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (117, N'BA0119', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (118, N'BA0120', N'RAZI INSURANCE AGENCY AND MODERN SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (119, N'BA0121', N'AL BATINAH TREASURES INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (120, N'BA0122', N'INSURANCE HOUSE LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (121, N'BA0123', N'WABAS AL ALMIYAH', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (122, N'BA0567', N'Mr.Khimji corporate company', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (123, N'BA0578', N'Mr.JAYARAM', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (124, N'BA0579', N'HAYARAM', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (125, N'BA0889', N'Mr.ANEESH', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (126, N'BA09090', N'credit limit testing', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (127, N'BA0996', N'Mr.CREDIT CONTROL CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (128, N'BA0997', N'TEST FST  LAST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (129, N'BA9987', N'CREDIT LIMIT CHECK CUSTOMER', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (130, N'BA9988', N'NIZWA WINDOW TRAD & CONT LLC NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (131, N'BA9989', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (132, N'BA9990', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (133, N'BK0000001', N'BANK TEST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (134, N'BR0997', N'Mr.TESTING FOR MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (135, N'BR0998', N'CREDIT LIMIT CHECKING MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (136, N'BR0999', N'Mr.CREDIT LIMIT CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (137, N'BR99887', N'hhttuu', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (138, N'BRK1234', N'CC TESTING', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (139, N'BRK8900', N'cc testing today', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (140, N'BRK8999', N'FOR TESTING OF CC', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (141, N'BROK778', N'Mr.GANESH CREDIT LIMIT CHECK', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (142, N'BROK779', N'Mr.AMI TESTING DEC 122016', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (143, N'CHS002', N'M/S.Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (144, N'CL001234', N'name1', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (145, N'CSH001', N'Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (146, N'CSH002', N'Cash Customers-Salalah', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (147, N'CSH003', N'Cash Customers-Sohar', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (148, N'CSH004', N'Cash Customers-Nizwa', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (149, N'CSH005', N'Cash Customers-Seeb', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (150, N'CSH006', N'Cash Customers-SQU', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (151, N'CSH007', N'Cash Customers-MGM Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (152, N'CSH008', N'Cash Customers-MGM Corporate Office', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (153, N'CSH009', N'Cash Customers-LULU Avenue Mall Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (154, N'CSH010', N'Cash Customers-CBD', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (155, N'CSH011', N'Cash Customers-Ruwi Rex Road', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (156, N'CSH012', N'Cash Customers-Walk Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (157, N'CSH013', N'Cash Customers-Panorama Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (158, N'CSH014', N'Cash Customers-Amarat', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (159, N'CSH015', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (160, N'CSH016', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (161, N'CSHONL', N'Cash Customers-Online', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (162, N'GA0012', N'ganesh', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (163, N'IL0217', N'Mr.KHALID JUMA HARIB HASSAN AL SARMI', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (164, N'ME0001', N'Naveed Shafi', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (165, N'ME0002', N'Abdul Khaliq Abdul Rahman', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (166, N'ME0003', N'Ranganathan Chakrapani', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (167, N'ME0004', N'Fayaz Ahmed', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (168, N'ME0005', N'Chander Prakash', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (169, N'ME0007', N'Sreedhar', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (170, N'ME0008', N'Ahmed Berham', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (171, N'ME0009', N'Qasim Al Ghafri', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (172, N'ME0010', N'Naeema Al Hinai', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (173, N'ME0011', N'Talib Al Kharusi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (174, N'ME0012', N'Mohammed Qasim', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (175, N'ME0014', N'SYED NAZEER AHMED', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (176, N'ME0015', N'EMAN SAID AL GHADANI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (177, N'ME0016', N'SAMAR SAMIR AL ZIDJALI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (178, N'ME0017', N'TEHFEEN PANWALA', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (179, N'ME0018', N'Abdulaziz Al Mahthoor', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (180, N'ME0019', N'Sheikha Dawood Alawi Al Araimi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (181, N'ME0020', N'Ghalib AL-Busaidi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (182, N'ME0021', N'Abdul Hakeem AL Rashdi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (183, N'ME0022', N'HILAL SALEH AL SHAQSI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (184, N'ME0023', N'MAHMOOD NASSER AL OMAIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (185, N'ME0024', N'Fathi Al Riyami', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (186, N'ME0025', N'SUMAIYA MOHAMMED AL NASIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (187, N'ME0026', N'SAIF AL HASHMI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (188, N'SH001', N'Ms.Kothar AL-Zadjali', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (189, N'SH002', N'Mr.Hamed AL-Siyabi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (190, N'SH003', N'Mr.Nasser AL-Gharibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (191, N'SH004', N'Mr.Ahmed AL-talaai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (192, N'SH005', N'Mr.Ghaith AL-Maghribi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (193, N'SH006', N'Ms.Tahani Abdullah Al Najadi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (194, N'SH007', N'Ms.Ahad Ali Al Wahaibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (195, N'SH008', N'Ms.Israa Zayid Khalifa Al Kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (196, N'SH009', N'Mr.Emad Khalid Ali Al Bulushi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (197, N'SH010', N'Mr.Mohammed Sameer Al kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (198, N'SH011', N'Mr.DAWOOD SULAIMAN AL WAHAIBI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (199, N'SH012', N'Mr.FAYADH NASSER AL HADI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (200, N'SH013', N'Ms.MARYAM YOUNIS AL ZADJALI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (201, N'SH014', N'Mr.Muadh Khamis Salim Al Hinai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (202, N'SH015', N'Ms.Khulood Sadiq Al Ajmi', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerMaster] ([ProducerMasterId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (203, N'SH016', N'Mr.Saif Al Said', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[ProducerMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ReInsurerMaster] ON 
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (1, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-08T16:46:12.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (2, N'Test Broker', N'002', N'CP01', N'12345678911', N'rajam@gmail.com', N'test', N'Madureai', N'TamilNadu', N'1234564545', 1, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T04:41:10.273' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (3, N'test', N'003', N'CP03', N'97845785584', N'rajamani@gmail.com', N'RajaStreet', N'Chennai', N'TamilNadu', N'62351', 2, N'654321', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T04:42:58.557' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10002, N'RI04', N'001', N'CP04', N'12354654654', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'D', 1, CAST(N'2021-07-09T22:09:56.613' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10003, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T05:59:19.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10004, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 4, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T21:59:07.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10005, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 4, N'123456', N'IFSC0123', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T22:01:14.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10006, N'test', N'001', N'CP', N'1234567', N'rajamani@gmail.com', N'test', N'Chennai', N'TamilNadu', N'62351', 1, N'123456', N'IFC012345', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-10T22:11:21.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ReInsurerMaster] ([ReInsurerMasterId], [ReInsurerName], [ReInsurerCode], [ContactPerson], [MobileNumber], [EmailId], [Address], [City], [State], [Zipcode], [BankID], [AccountNumber], [IFSCCode], [UploadKYC_01], [UploadKYC_02], [UploadKYC_03], [UploadKYC_04], [UploadKYC_05], [Status], [CreatedBy], [CreatedAt], [ModifyBy], [ModifyAt]) VALUES (10007, N'testname', N'001', N'testperson', N'9840359280', N'sathishhn2005@gmail.com', N'chennai', N'chennai', N'Tamilnadu', N'600025', 2, N'123456789', N'1212121212', NULL, NULL, NULL, NULL, NULL, N'A', 1, CAST(N'2021-07-12T17:19:32.250' AS DateTime), NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[TB_Quotation] ON 
GO
INSERT [dbo].[TB_Quotation] ([QuotationId], [DraftNo], [Status], [PolicyNo], [GLPolicyNo], [WLPolicyNo], [MedicalPolicyNo], [CIInsuranceCompanyName], [CIClientCompanyName], [CIProducerType], [CIProducerName], [CISelectCommission], [CINoOfPlanCategories], [GBMedicalProviderNetwork], [GBMedicalNetworkHospitals], [GBScopeOfCover], [GBAreaOfCoverage], [GBPersonCovered], [GBAnnualBenefitsLimit], [GBIsPerClaimLimitIP], [GBPerClaimLimitIP], [GBIsPerClaimLimitOP], [GBPerClaimLimitOP], [GBPreExisting_ChronicLimit], [GBGeoThreateningEmergencyTreatment], [GBGeoElectiveTreatement], [GBGeoOutsideResidentCountry], [GBPremium], [GBInsuranceLevy], [GBPolicyFee], [GBTotalPremium], [IPHospitalizationClass], [IPHospitalizationClassLimit], [IPICUCoronaryTreatement], [IPICUCoronaryTreatementLimit], [IPVariousTherapies], [IPVariousTherapiesLimit], [IPOrganTransplantationServices], [IPOrganTransplantationServicesLimit], [IPAmbulanceServices], [IPAmbulanceServicesLimit], [IPCompanionRoomBoardExpenses], [IPCompanionRoomBoardExpensesLimit], [IPHospitalCashBenefitsCashPerDay], [IPHospitalCashBenefitsCashTotal], [IPRepatriationCostTraansport], [IPAddBenefits], [OPPhysicianConsultationDeductible], [OPPhysicianConsultationDeductibleLimit], [OPDiagnostics], [OPDiagnosticsLimit], [OPPharmaceuticals], [OPPharmaceuticalsLimit], [OPPhysiotheraphy], [OPPhysiotheraphyLimit], [OPDaycareTreatment], [OPDaycareTreatmentLimit], [OPOutPatientSurgery], [OPOutPatientSurgeryLimit], [OPWorkRelatedInjuries], [OPWorkRelatedInjuriesLimit], [OPAccidentalDamageNaturalTeeth], [OPAccidentalDamageNaturalTeethLimit], [OPNewBornBabyCoverage], [OPNewBornBabyCoverageLimit], [OPNursingAtHome], [OPNursingAtHomeLimit], [OPAlternativeMedicine], [OPAlternativeMedicineCoverage], [OPAlternativeMedicineCoverageLimit], [OPAlternativeMedicineDeductible], [OPAlternativeMedicineDeductibleLimit], [OPFreeAccessOutsideOMAN], [EBFreeAccessTPANetwork], [EBFreeAccessTPANetworkLimit], [EBReimbursementNonNetworkMedicalProviders], [EBReimbursementNonNetworkMedicalProvidersLimit], [EBEmergencyTreatment], [EBEmergencyTreatmentLimit], [EBEmergencyTreatmentCountry], [ABBenefits], [ABDescription], [ABExclusions], [AddedBy], [AddedOn], [UpdatedBy], [UpdatedAt]) VALUES (1, N'004/01/21/1452/1', N'Approved', N'POL/3003/001', N'P/004/01/20/3301/1', N'P/004/01/20/3301/1', N'P/004/01/20/2402/1', N'Bajaj Allianz Life Insurance Company', N'Cognizant', N'Branches', N'Modern Gulf Insurance Services', CAST(10.00 AS Decimal(18, 2)), 4, N'BAND - A', N'>> Add Specific Hospital / Clinic', N'on', N'Dubai~kuwait~England~America', N'on', CAST(0.00 AS Decimal(18, 2)), N'', CAST(0.00 AS Decimal(18, 2)), N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'>> Select Region', N'>> Select Region', N'on', CAST(1000.00 AS Decimal(18, 2)), CAST(5.50 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(1205.50 AS Decimal(18, 2)), N'IPHospitalizationClassLimit', CAST(0.00 AS Decimal(18, 2)), N'IPICUCoronaryTreatementLimit', CAST(0.00 AS Decimal(18, 2)), N'IPVariousTherapiesLimit', CAST(0.00 AS Decimal(18, 2)), N'IPOrganTransplantationServicesLimit', CAST(0.00 AS Decimal(18, 2)), N'IPAmbulanceServicesLimit', CAST(0.00 AS Decimal(18, 2)), N'IPCompanionRoomBoardExpensesLimit', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', N'Limit Per Person', CAST(1.00 AS Decimal(18, 2)), N'Co-Pay', CAST(0.00 AS Decimal(18, 2)), N'Co-Pay', CAST(0.00 AS Decimal(18, 2)), N'OPPhysiotheraphyLimit', CAST(0.00 AS Decimal(18, 2)), N'OPDaycareTreatmentLimit', CAST(0.00 AS Decimal(18, 2)), N'OPOutPatientSurgeryLimit', CAST(0.00 AS Decimal(18, 2)), N'OPWorkRelatedInjuriesLimit', CAST(0.00 AS Decimal(18, 2)), N'OPAccidentalDamageNaturalTeethLimit', CAST(0.00 AS Decimal(18, 2)), N'OPNewBornBabyCoverageLimit', CAST(0.00 AS Decimal(18, 2)), N'OPNursingAtHomeLimit', CAST(0.00 AS Decimal(18, 2)), N'Homeopathy~Ayurveda~Chiropractic', N'Pool Limit Per Policy', CAST(0.00 AS Decimal(18, 2)), N'Limit Per Person', CAST(1.00 AS Decimal(18, 2)), N'England~America', N'Covered in Full', N'Clinic', N'>> Select', N'kuwait', N'Worldwide', N'Free Access', N'England~America', N'Benefits', N'Descriptions', N'EXclusions', NULL, CAST(N'2021-02-23T03:13:54.903' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Quotation] OFF
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
ALTER TABLE [dbo].[ClientCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[InsuranceCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[MedicalProviderMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ProducerMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
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
ALTER TABLE [dbo].[TB_DrugMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_LabMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_ProducerMaster] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[TB_Quotation] ADD  DEFAULT (getdate()) FOR [AddedOn]
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
/****** Object:  StoredProcedure [dbo].[GetBarChartUW]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateCCMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateEmpMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateICMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateMPMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateRIMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLCCMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max)
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
ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,Status
			)
	Select 
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,'A'	
	From #TempCCMaster

 END

  IF(@Action='Update')
 BEGIN
  
  UPDATE CC Set  
            ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			Modifiedby='Admin',ModifiedAt=GETdate()
  FROM ClientCompanyMaster CC
  INNER JOIN #TempCCMaster TRI ON CC.ClientCompanyMasterId=TRI.ClientCompanyMasterId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLEmpMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max)
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
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,Status,CreatedAt

			)
	Select 
						EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,'A'	,GETDATE()
	From #TempEmpMaster

 END

  IF(@Action='Update')
 BEGIN
  
  UPDATE CC Set  
            EmployeeName=TRI.EmployeeName,Relation=TRI.Relation,Category=TRI.Category,
			Age=TRI.Age,Salary=TRI.Salary,
			Modifiedby='Admin',ModifiedAt=GETdate()
  FROM EmployeeMaster CC
  INNER JOIN #TempEmpMaster TRI ON CC.EmployeeId=TRI.EmployeeId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLICMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLICMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max)
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
UploadKYC_05,Status
			)
	Select 
			InsurancecompanyName,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,
			UploadKYC_04,UploadKYC_05,'A'	
			From #TempICMaster

 END

  IF(@Action='Update')
 BEGIN
  
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
/****** Object:  StoredProcedure [dbo].[pDMLMPMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLMPMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max)
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
UploadKYC_04,UploadKYC_05,Status)
Select 
			MedicalProvider,Name,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,
UploadKYC_04,UploadKYC_05,'A'	
	From #TempMPMaster

 END

  IF(@Action='Update')
 BEGIN
  
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
/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pDMLRIMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max)
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
		UploadKYC_01 nvarchar(1000) N'$.UploadKYC_01',
		UploadKYC_02 nvarchar(1000) N'$.UploadKYC_02',
		UploadKYC_03 nvarchar(1000) N'$.UploadKYC_03',
		CreatedBy bigint N'$.CreatedBy'
	) AS JsonRIMaster;

 IF(@Action='Create')
 BEGIN

	INSERT INTO ReInsurerMaster (
			ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,EmailId,
			Address,City,State,Zipcode,BankID,AccountNumber,IFSCCode,UploadKYC_01,
			UploadKYC_02,UploadKYC_03,Status,CreatedBy,CreatedAt
			)
	Select 
			ReInsurerName,'001' ReInsurerCode,ContactPerson,MobileNumber,EmailId,
			Address,City,State,Zipcode,BankID,AccountNumber,IFSCCode,UploadKYC_01,
			UploadKYC_02,UploadKYC_03,'A' Status,CreatedBy,Getdate()
	From #TempRIMaster

 END

  IF(@Action='Update')
 BEGIN
  
  UPDATE RI Set  
  ReInsurerName = TRI.ReInsurerName,ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			Modifiedby=TRI.CreatedBy,ModifiedAt=GETdate()
  FROM ReInsurerMaster RI
  INNER JOIN #TempRIMaster TRI ON RI.ReInsurerMasterId=TRI.ReInsurerMasterId

 END
END

GO
/****** Object:  StoredProcedure [dbo].[pGenerateBusinessEntites]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteCCMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteEmpMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteICMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteMPMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteRINameRICodeCity]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBankMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetCCMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
Currency,LOB,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode AND City=@CCCity

	END
	ELSE IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='')
	BEGIN
	SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode --AND City=@CCity


	END
	ELSE
	BEGIN 
 
			SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetDefaultMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pGetDefaultMaster]
AS
BEGIN 

select distinct ICMId,InsurancecompanyName from InsuranceCompanyMaster
select distinct LOBId,LOBName from LOB
select distinct ProducerMasterID as Id,ProducerName as Name from ProducerMaster
select distinct ReInsurerMasterId,ReInsurerName from ReInsurerMaster
select distinct ClientCompanyMasterId,ClientCompanyName From ClientCompanyMaster where ClientCompanyName is not null


END

GO
/****** Object:  StoredProcedure [dbo].[pGetEmpMaster]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pGetEmpMaster] 
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
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName

	END
	ELSE IF(ISNULL(@EmpName,'')!='' AND ISNULL(@EmpId,'')!='')
	BEGIN
	
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName AND  EmployeeUniqueNumber=@EmpId --AND ClientName=@ClientName


	END
	ELSE
	BEGIN 
 
			
		select EmployeeId,EmployeeName,EmployeeUniqueNumber,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,E.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,E.Status
		FROM EmployeeMaster E
		INNER JOIN BankMaster BI ON BI.BankID=E.BankID
		WHERE  EmployeeName=@EmpName --AND  EmployeeUniqueNumber=@EmpId AND ClientName=@ClientName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[PGetGLWLPDFdata]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetICMMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName AND  InsCompCode=@ICCode AND City=@ICCity

	END
	ELSE IF(ISNULL(@ICName,'')!='' AND ISNULL(@ICCode,'')!='')
	BEGIN
	print 3
	SELECT ICMId,InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BI.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName AND  InsCompCode=@ICCode --AND City=@CCity
		
	END
	ELSE
	BEGIN 
 
			SELECT ICMId,InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BI.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status		FROM InsuranceCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  InsurancecompanyName=@ICName 
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetMPMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName AND  MedicalProvider=@MPProvider AND ContactPerson=@ContactPerson

	END
	ELSE IF(ISNULL(@MPName,'')!='' AND ISNULL(@MPProvider,'')!='')
	BEGIN
	
		SELECT MedicalProviderId,MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName AND  MedicalProvider=@MPProvider --AND ContactPerson=@ContactPerson


	END
	ELSE
	BEGIN 
 print 1

				SELECT MedicalProviderId,MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BI.BankID,
AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,CC.Status

		FROM MEDICALPROVIDERMASTER CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  Name=@MPName or  MedicalProvider=@MPProvider --AND ContactPerson=@ContactPerson
	END

END


GO
/****** Object:  StoredProcedure [dbo].[pGetRIMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,IFSCCode,
			RI.[Status],AccountNumber,UploadKYC_01
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName AND  ReInsurerCode=@RICode AND City=@RICity

	END
	ELSE IF(ISNULL(@RIName,'')!='' AND ISNULL(@RICode,'')!='')
	BEGIN

		SELECT 
			ReInsurerMasterId,ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,IFSCCode,
			RI.[Status],AccountNumber,UploadKYC_01
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName AND  ReInsurerCode=@RICode 

	END
	ELSE
	BEGIN 
 
		SELECT 
			ReInsurerMasterId,ReInsurerName,ReInsurerCode,ContactPerson,MobileNumber,
			EmailId,[Address],City,[State],Zipcode,RI.BankID,BI.BankName,IFSCCode,
			RI.[Status],AccountNumber,UploadKYC_01
		FROM ReInsurerMaster RI
		INNER JOIN BankMaster BI ON BI.BankID=RI.BankID
		WHERE  ReInsurerName=@RIName
	END

END


GO
/****** Object:  StoredProcedure [dbo].[SP_Clients]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CloseTicket]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CompanyRegistration]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CreateQuotation]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_EmployeeMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_EmployeeRegistration]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenerateBussEntities]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetClientCompanyMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetCompanies]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetGLWLPolicyNos]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetLineChartUW]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetLoginInfo]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetPolicyIssuance]    Script Date: 28-07-2021 00:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GetPolicyIssuance](
@DraftNumber nvarchar(20)
)
as begin
if(@DraftNumber='') set @DraftNumber=null 
select QuotationId, DraftNo,ISNULL(PolicyNo,'Yet to Generate') as PolicyNo,CIInsuranceCompanyName,CIClientCompanyName,Status from 
TB_Quotation
 where (@DraftNumber IS NULL OR DraftNo = @DraftNumber)
order by AddedOn desc
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProducerList]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetQuotation]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetRoles]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserType]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUWDashboard]    Script Date: 28-07-2021 00:32:55 ******/
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

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Quotation )--where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))
set @TotalNoPolQuotationDrafted =(select count(*) as TotalUnderProcessYear from TB_Quotation where Status='Pending')
set @TotNoPolIssued =(select count(*) as TotalLostYear from TB_Quotation where Status='Approved')
set @TotalNoPolRejected =(select count(*) as TotalRenewedYear from TB_Quotation where Status='Rejected')
--set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolQuotationDrafted,0)         as TotalNoPolQuotationDrafted, 
       isnull(@TotNoPolIssued,0)         as TotNoPolIssued, 
       isnull(@TotalNoPolRejected,0)         as TotalNoPolRejected, 
       @UserName as UserName

select QuotationId, DraftNo,ISNULL(PolicyNo,'Yet to Generate') as PolicyNo,CIInsuranceCompanyName,CIClientCompanyName,Status from TB_Quotation order by AddedOn desc

set @TotalPremiumEarned=(select sum(GBTotalPremium) from TB_Quotation where Status='Approved')
set @TotalPremiumRejected=(select sum(GBTotalPremium) from TB_Quotation where Status='Rejected')
set @TotalPremiumPending=(select sum(GBTotalPremium) from TB_Quotation where Status='Pending')

select ISNULL(@TotalPremiumEarned,0.00) as TotalPremiumEarned,ISNULL(@TotalPremiumRejected,0.00) as TotalPremiumRejected,ISNULL(@TotalPremiumPending,0.00) as TotalPremiumPending


--Alter table TB_Quotation add PolicyNo nvarchar(80)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAgentMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertBrokerMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertClientCompanyMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertDiagnosticsMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertDrugMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertEndorsement]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertHospitalMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertInsCompanyMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertLabMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertProducerMaster]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ProducerMasterUpload]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RaiseTicket]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterClient]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterInsCompany]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ResetPassword]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SaveLogin]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TPAInsEmployeeRegistration]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassword]    Script Date: 28-07-2021 00:32:55 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ViewTickets]    Script Date: 28-07-2021 00:32:55 ******/
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

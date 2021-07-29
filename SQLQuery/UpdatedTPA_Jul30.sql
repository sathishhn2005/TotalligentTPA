USE [Totalligent]
GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 30-07-2021 00:50:02 ******/
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
/****** Object:  Table [dbo].[BusinessDesignationTypeMaster]    Script Date: 30-07-2021 00:50:02 ******/
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
/****** Object:  Table [dbo].[ClientCompanyMaster]    Script Date: 30-07-2021 00:50:02 ******/
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
	[KYCUploadPath] [nvarchar](350) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompanyMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ICMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOB]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[MedicalProviderMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
	[KYCUploadPath] [nvarchar](350) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
	[Zipcode] [nvarchar](10) NULL,
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
/****** Object:  Table [dbo].[ReInsurerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_AgentMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_BrokerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_Calender]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_CategoryMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_DiagnosticsMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_DrugMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_Endorsement]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_GLEndorsement]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_LabMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_Login]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_ProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_Quotation]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_RegisterClient]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_RegisterCompany]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_RegisterInsCompany]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_ReInsurerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_Role]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Tickets]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[TB_UserTypeMaster]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UserTypeMaster](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_WLEndorsement]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  Table [dbo].[UDTWLEndorsement]    Script Date: 30-07-2021 00:50:03 ******/
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
ALTER TABLE [dbo].[ClientCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[InsuranceCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[MedicalProviderMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
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
/****** Object:  StoredProcedure [dbo].[GetBarChartUW]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertClientMaster]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pBulkInsertClientMaster]  
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
RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber, IFSCCode,Status  )  
 Select   
    ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,ProducerCommission,
RINumber,RIName,RIRetention,AMIRetention,BankID,AccountNumber, IFSCCode,'A' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertEmpMaster]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pBulkInsertEmpMaster]  
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
IFSCCode,Status  )  
 Select   
    EmployeeName,EmployeeUniqueNumber,ClientName,Relation,Nationality,Category,DOB,Age,Salary,EAW,SumAssured,EffectiveDate,Remarks,EntryType,BankID,AccountNumber,
IFSCCode,'A' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertICMaster]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pBulkInsertICMaster]  
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
		InsCompCode varchar (10) N'$.InsCompCode', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode nvarchar (40) N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
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
  InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,Status
  )  
  Select   
    InsurancecompanyName,InsCompCode,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,BankID,AccountNumber,IFSCCode,'A' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertMPMaster]    Script Date: 30-07-2021 00:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[pBulkInsertMPMaster]  
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
  MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,Status  )  
 Select   
     MedicalProvider,Name,MedicalProviderCode,ContactPerson,MobileNumber,EmailId,Address,City,State,Zipcode,Location,Category,BankID,AccountNumber,IFSCCode,'A' 
 From #TempPMMaster  T
 INNER JOIN BankMaster BM ON BM.BankName=T.BankName
 
     
 
  Set @Message ='Inserted Successfully'

END  

GO
/****** Object:  StoredProcedure [dbo].[pBulkInsertProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkInsertRIMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateCCMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateEmpMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateICMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateMPMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivatePMMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDeactivateRIMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLICMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLMPMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pDMLProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
   
		Declare @Code Nvarchar(50)  
		EXEC pGenerateCode 'ProducerMaster',@Code OUTPUT

			INSERT INTO ProducerMaster (
								ProducerName,ProducerCode,ContactPerson,MobileNumber,EmailId,Address,
								City,State,Zipcode,BusinessDesignationTypeMasterID,BankID,AccountNumber,
								IFSCCode,KYCUploadPath,InsertType,Status,CreatedBy,CreatedAt			
								)
			SELECT 			
				ProducerName,@Code,ContactPerson,MobileNumber,EmailId,[Address],
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
	[Status]=TRI.[Status],ModifyBy=TRI.CreatedBy,ModifyAt=GETdate()
  FROM ProducerMaster RI
  INNER JOIN #TempProducerMaster TRI ON RI.ProducerMasterID=TRI.ProducerMasterID

  	
 END
END

GO
/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGenerateBusinessEntites]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGenerateCode]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteCCMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteEmpMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteICMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteMPMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteProducerName_Code_City]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetAutocompleteRINameRICodeCity]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBankMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetBusinessDesignationTypeMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetCCMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetDefaultMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetEmpMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[PGetGLWLPDFdata]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetICMMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetMPMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetRIMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathCCMasterPath]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathEmpMasterPath]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathICMasterPath]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathMPMasterPath]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[pUpdateFolderPathProducerMasterPath]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Clients]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CloseTicket]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CompanyRegistration]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CreateQuotation]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_EmployeeMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_EmployeeRegistration]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenerateBussEntities]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetClientCompanyMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetCompanies]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetGLWLPolicyNos]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetLineChartUW]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetLoginInfo]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetPolicyIssuance]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetProducerList]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetQuotation]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetRoles]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserType]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUWDashboard]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertAgentMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertBrokerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertClientCompanyMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertDiagnosticsMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertDrugMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertEndorsement]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertHospitalMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertInsCompanyMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertLabMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertProducerMaster]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ProducerMasterUpload]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RaiseTicket]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterClient]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterInsCompany]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ResetPassword]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SaveLogin]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TPAInsEmployeeRegistration]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassword]    Script Date: 30-07-2021 00:50:03 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ViewTickets]    Script Date: 30-07-2021 00:50:03 ******/
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



USE [Totalligent]
GO

CREATE TABLE [dbo].[Quotation](
	[QuotationId] [bigint] IDENTITY(1,1) NOT NULL,
	
	[DraftNo]  AS ('DN'+right('0000'+CONVERT([nvarchar](16),[QuotationId]),(16))) PERSISTED,
	[Status] [nvarchar](20) NULL,
	[PolicyNo] [nvarchar](80) NULL,
	InsuranceCompanyName nvarchar(100),
ClientCompanyName nvarchar(100),
ScopeofCoverage nvarchar(100),
Jurisdiction nvarchar(100),
Address nvarchar(100),
City nvarchar(100),
KYCDetails nvarchar(100),
BankName nvarchar(100),
IFSCCode nvarchar(100),
Branch nvarchar(100),
PeriodofInsurance datetime,
Category nvarchar(100),
TotalEmployees int,
TotalDependents int,
TotalSpousedependents int,
TotalChilddependents int,
PolicyCurrency Bigint,
EligibilityCriteria nvarchar(100),
SumAssured_SA decimal(18,3),
AgeLimitforEmployees int,
AgeLimitforDependentSpouse int,
AgeLimitforDependentChild int,
FCL Bigint,
ClientPremium decimal(18,3),
InsuranceLevy decimal(18,3),
PolicyFee decimal(18,3),
TotalPremium decimal(18,3),
BrokerName nvarchar(100),
Brokerage decimal(18,3),
RICount decimal(18,3),
RI1in_Percentage nvarchar(100),
RI2in_Percentage nvarchar(100),
RI3in_Percentage nvarchar(100),
RIRate nvarchar(100),
RIRetension nvarchar(100),
AMIRetension nvarchar(100),
RIPremium decimal(18,3),
AMILoading decimal(18,3),
TotalEmployeescount int,
EstimatedAnnualWages decimal(18,3),
AnnualRate nvarchar(100),
Premium_EAW_Rate nvarchar(100),
Premium_Incl_levy_PolFeeRO decimal(18,3),
VATonWCpremium decimal(18,3),
TotalPremiumInclVAT decimal(18,3),
BrokerPercentage nvarchar(100),
BrokerAmount decimal(18,3),

	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL)

/****** Object:  StoredProcedure [dbo].[pDMLRIMaster]    Script Date: 02-08-2021 16:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].pDMLQuotationMaster
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
 
)
As
BEGIN


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
  
 
--Declare @Code Nvarchar(50)
  
--EXEC pGenerateCode 'RIMaster',@Code OUTPUT

	INSERT INTO Quotation (
InsuranceCompanyName,ClientCompanyName,ScopeofCoverage,Jurisdiction,Address,City,KYCDetails,BankName,IFSCCode,Branch,PeriodofInsurance,Category,TotalEmployees,TotalDependents,
TotalSpousedependents,TotalChilddependents,PolicyCurrency,EligibilityCriteria,SumAssured_SA,AgeLimitforEmployees,AgeLimitforDependentSpouse,AgeLimitforDependentChild,
FCL,ClientPremium,InsuranceLevy,PolicyFee,TotalPremium,BrokerName,Brokerage,RICount,RI1in_Percentage,RI2in_Percentage,RI3in_Percentage,RIRate,RIRetension,AMIRetension,
RIPremium,AMILoading,TotalEmployeescount,EstimatedAnnualWages,AnnualRate,Premium_EAW_Rate,Premium_Incl_levy_PolFeeRO,VATonWCpremium,TotalPremiumInclVAT,
BrokerPercentage,BrokerAmount,Status			)
	Select 
		InsuranceCompanyName,ClientCompanyName,ScopeofCoverage,Jurisdiction,Address,City,KYCDetails,BankName,IFSCCode,Branch,PeriodofInsurance,Category,TotalEmployees,TotalDependents,
TotalSpousedependents,TotalChilddependents,PolicyCurrency,EligibilityCriteria,SumAssured_SA,AgeLimitforEmployees,AgeLimitforDependentSpouse,AgeLimitforDependentChild,
FCL,ClientPremium,InsuranceLevy,PolicyFee,TotalPremium,BrokerName,Brokerage,RICount,RI1in_Percentage,RI2in_Percentage,RI3in_Percentage,RIRate,RIRetension,AMIRetension,
RIPremium,AMILoading,TotalEmployeescount,EstimatedAnnualWages,AnnualRate,Premium_EAW_Rate,Premium_Incl_levy_PolFeeRO,VATonWCpremium,TotalPremiumInclVAT,
BrokerPercentage,BrokerAmount,'Pending'
	From #TempQuotationMaster

		Select @ReturnRIid = @@IDENTITY  
 END

  IF(@Action='Update')
 BEGIN

 Select @ReturnRIid=QuotationId From #TempQuotationMaster
  
  UPDATE Q Set  
  Q.Status=TRI.Status,
			UpdatedAt=GETdate()
  FROM Quotation Q
  INNER JOIN #TempQuotationMaster TRI ON Q.QuotationId=TRI.QuotationId

  	
 END
END


USE [Totalligent]
GO
/****** Object:  StoredProcedure [dbo].[pDMLQuotationMaster]    Script Date: 10/18/2021 1:32:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[pDMLQuotationMaster] ( @Action Nvarchar(200),
@JParamValQuotationDetails                            Nvarchar(MAX),
@JParamValCoverageDetails                             Nvarchar(MAX) )
AS
  BEGIN
    DECLARE @dno    nvarchar(150),
      @companyCode  nvarchar(20),
      @WLDno        nvarchar(150),
      @ClientCompId nvarchar(30),
      @InsCompId    nvarchar(40),
      @ReturnRIid   bigint,
      @Year         VARCHAR(50)
    SET @Year=
    (
           SELECT ( Year( Getdate() ) % 100 ))
    SELECT *
    INTO   #TempQuotationCoverage
    FROM   OPENJSON (@JParamValCoverageDetails, N'$') WITH (TotalAccidentalSumAssuredNoOfTimes   decimal(18,3)
	N'$.TotalAccidentalSumAssuredNoOfTimes',DeathCoverDNCTotalAmt   decimal(18,3) N'$.DeathCoverDNCTotalAmt',DNCSNoOfTimes int N'$.DNCSNoOfTimes',
	VariableDNCSAmount   decimal(18,3) N'$.VariableDNCSAmount',  
	DeathCoverTotalAmt  decimal(18,3) N'$.DeathCoverTotalAmt', VariableDCSAmount  DECIMAL(18,3) N'$.VariableDCSAmount',
	[DeathCoverType] [nvarchar](10) N'$.DeathCoverType', [DeathCoverAnnualLimit] [nvarchar](50) N'$.DeathCoverAnnualLimit', [DeathCoverSumAssuredAmount] [decimal](18, 2) N'$.DeathCoverSumAssuredAmount', [DeathCoverSumAssuredNoOfTimes] [int] N'$.DeathCoverSumAssuredNoOfTimes', [DeathCoverFCL] [decimal](18, 2) N'$.DeathCoverFCL', [AccidentalDeath] [nvarchar](10) N'$.AccidentalDeath', [AccidentalAnnualLimit] [nvarchar](50) N'$.AccidentalAnnualLimit', [AccidentalSumAssuredAmount] [decimal](18, 2) N'$.AccidentalSumAssuredAmount', [AccidentalSumAssuredNoOfTimes] [int] N'$.AccidentalSumAssuredNoOfTimes', [AccidentalFCL] [decimal](18, 2) N'$.AccidentalFCL', [PTD] [nvarchar](10) N'$.PTD', [PTDAccident] [nvarchar](10) N'$.PTDAccident', [PTDSickness] [nvarchar](10) N'$.PTDSickness', [PTDCoverageLimit] [decimal](18, 2) N'$.PTDCoverageLimit', [PTDMaximumLimit] [decimal](18, 2) N'$.PTDMaximumLimit', [PTDWaitingYears] [int] N'$.PTDWaitingYears', [PPD] [nvarchar](10) N'$.PPD', [PPDAccident] [nvarchar](10) N'$.PPDAccident', [PPDSickness] [nvarchar](10) N'$.PPDSickness', [PPDCoverageLimit] [decimal](18, 2) N'$.PPDCoverageLimit', [PPDMaximumLimit] [decimal](18, 2) N'$.PPDMaximumLimit', [PPDWaitingYears] [int] N'$.PPDWaitingYears', [TTD] [nvarchar](10) N'$.TTD', [TTDAccident] [nvarchar](10) N'$.TTDAccident', [TTDSickness] [nvarchar](10) N'$.TTDSickness', [TTDCoverageLimit] [decimal](18, 2) N'$.TTDCoverageLimit', [TTDMaximumLimit] [decimal](18, 2) N'$.TTDMaximumLimit', [TTDWaitingYears] [int] N'$.TTDWaitingYears', [RepatriationBenefit] [nvarchar](10) N'$.RepatriationBenefit', [RBCoverageLimit] [decimal](18, 2) N'$.RBCoverageLimit', [PassiveWarRisk] [nvarchar](10) N'$.PassiveWarRisk', [PWRCoverageLimit] [decimal](18, 2) N'$.PWRCoverageLimit', [TerminalIllness] [nvarchar](10) N'$.TerminalIllness', [TLCoverageLimit] [decimal](18, 2) N'$.TLCoverageLimit', [TLMaximumLimit] [decimal](18, 2) N'$.TLMaximumLimit', [TLWaitingYears] [int] N'$.TLWaitingYears', [CriticalIllness] [nvarchar](10) N'$.CriticalIllness', [CLCoverageLimit] [decimal](18, 2) N'$.CLCoverageLimit', [CLMaximumLimit] [decimal](18, 2) N'$.CLMaximumLimit', [CLWaitingYears] [int] N'$.CLWaitingYears', [OtherAdditionalCover] [nvarchar](MAX) N'$.OtherAdditionalCover', [WarExclusion] [nvarchar](10) N'$.WarExclusion', [WECoverageLimit] [decimal](18, 2) N'$.WECoverageLimit', [WEMaximumLimit] [decimal](18, 2) N'$.WEMaximumLimit', [WEWaitingYears] [int] N'$.WEWaitingYears', [AtomicBiologicalAndCNE] [nvarchar](10) N'$.AtomicBiologicalAndCNE', [ABACNECoverageLimit] [decimal](18, 2) N'$.ABACNECoverageLimit', [ABACNEMaximumLimit] [decimal](18, 2) N'$.ABACNEMaximumLimit', [ABACNEWaitingYears] [int] N'$.ABACNEWaitingYears', [CriminalActContent] [nvarchar](10) N'$.CriminalActContent', [CACCoverageLimit] [decimal](18, 2) N'$.CACCoverageLimit', [CACNEMaximumLimit] [decimal](18, 2) N'$.CACNEMaximumLimit', [CACNEWaitingYears] [int] N'$.CACNEWaitingYears', [HazardousSportsExclusion] [nvarchar](10) N'$.HazardousSportsExclusion', [HSECoverageLimit] [decimal](18, 2) N'$.HSECoverageLimit', [HSEMaximumLimit] [decimal](18, 2) N'$.HSEMaximumLimit', [HSEWaitingYears] [int] N'$.HSEWaitingYears', [AviationExclusion] [nvarchar](10) N'$.AviationExclusion', [AECoverageLimit] [decimal](18, 2) N'$.AECoverageLimit', [AEMaximumLimit] [decimal](18, 2) N'$.AEMaximumLimit', [AEEWaitingYears] [int] N'$.AEEWaitingYears', [IntentionalSelfInflicted] [nvarchar](10) N'$.IntentionalSelfInflicted', [ISSASCoverageLimit] [decimal](18, 2) N'$.ISSASCoverageLimit', [ISSASMaximumLimit] [decimal](18, 2) N'$.ISSASMaximumLimit', [ISSASWaitingYears] [int] N'$.ISSASWaitingYears', [PandemicEpidemicCondition] [nvarchar](10) N'$.PandemicEpidemicCondition', [PECCoverageLimit] [decimal](18, 2) N'$.PECCoverageLimit', [PECMaximumLimit] [decimal](18, 2) N'$.PECMaximumLimit', [PECWaitingYears] [int] N'$.PECWaitingYears', [Sucide] [nvarchar](10) N'$.Sucide', [SECCoverageLimit] [decimal](18, 2) N'$.SECCoverageLimit', [SEMaximumLimit] [decimal](18, 2) N'$.SEMaximumLimit', [SEWaitingYears] [int] N'$.SEWaitingYears', [HIV_AIDS] [nvarchar](10) N'$.HIV_AIDS', [HIVCoverageLimit] [decimal](18, 2) N'$.HIVCoverageLimit', [HIVMaximumLimit] [decimal](18, 2) N'$.HIVMaximumLimit', [HIVWaitingYears] [int] N'$.HIVWaitingYears', [OtherExclusions] [nvarchar](MAX) N'$.OtherExclusions', [CreatedBy] [bigint] N'$.CreatedBy' ) AS JsonQuotationCoverage;
    
    SELECT *
    INTO   #TempQuotationMaster
    FROM   OPENJSON (@JParamValQuotationDetails, N'$') WITH ( InsuranceCompanyName nvarchar(100) N'$.InsuranceCompanyName', ClientCompanyName nvarchar(100) N'$.ClientCompanyName', 
	ScopeofCoverage nvarchar(100) N'$.ScopeofCoverage', Jurisdiction nvarchar(100) N'$.Jurisdiction', QuotationId bigint N'$.QuotationId', Address nvarchar(100) N'$.Address', 
	City nvarchar(100) N'$.City', KYCDetails nvarchar(100) N'$.KYCDetails', BankName nvarchar(100) N'$.BankName', IFSCCode nvarchar(100) N'$.IFSCCode', Branch nvarchar(100) N'$.Branch',
	PeriodofInsurance DATETIME N'$.PeriodofInsurance', PeriodofInsuranceEndDate DATETIME N'$.PeriodofInsuranceEndDate', Category nvarchar(100) N'$.Category', 
	
	TotalEmployees INT N'$.TotalEmployees', TotalDependents INT N'$.TotalDependents', TotalSpousedependents INT N'$.TotalSpousedependents', TotalChilddependents INT N'$.TotalChilddependents',
	PolicyCurrency nvarchar(50) N'$.PolicyCurrency', EligibilityCriteria nvarchar(100) N'$.EligibilityCriteria', SumAssured_SA DECIMAL(18,3) N'$.SumAssured_SA', AgeLimitforEmployees INT
	N'$.AgeLimitforEmployees', AgeLimitforDependentSpouse INT N'$.AgeLimitforDependentSpouse', AgeLimitforDependentChild INT N'$.AgeLimitforDependentChild', FCL Bigint N'$.FCL', 

	
	Premium_SumAssured DECIMAL(18,3) N'$.Premium_SumAssured',
	Premium_GrossRate DECIMAL(18,3) N'$.Premium_GrossRate',	Premium_NetPremium DECIMAL(18,3) N'$.Premium_NetPremium', Premium_Incllevy DECIMAL(18,3) N'$.Premium_Incllevy', Premium_PolicyFee1RO DECIMAL(18,3) N'$.Premium_PolicyFee1RO', 
	Premium_GrossPremium DECIMAL(18,3) N'$.Premium_GrossPremium', Premium_VariableSADetails nvarchar(MAX) N'$.Premium_VariableSADetails', Premium_VariableNetPremium DECIMAL(18,3) 
	N'$.Premium_VariableNetPremium', Premium_VariableLevy DECIMAL(18,3) N'$.Premium_VariableLevy', Premium_VariablePolicyFee1_RO DECIMAL(18,3) N'$.Premium_VariablePolicyFee1_RO', 
	Premium_VariableGrossPremium DECIMAL(18,3) N'$.Premium_VariableGrossPremium', Premium_RIDetails nvarchar(MAX) N'$.Premium_RIDetails', BrokerName nvarchar(50) N'$.BrokerName', 
	BrokerCommission DECIMAL(18,3) N'$.BrokerCommission', Brokerage DECIMAL(18,3) N'$.Brokerage', WCEstimatedAnnualWagesType nvarchar(20) N'$.WCEstimatedAnnualWagesType', 
	WCSumOfSalary DECIMAL(18,3) N'$.WCSumOfSalary', WCEstimatedAnnualWages DECIMAL(18,3) N'$.WCEstimatedAnnualWages', WCRate DECIMAL(18,3) N'$.WCRate', WCTotalEmployee bigint N'$.WCTotalEmployee',
	WCPerPerson bigint N'$.WCPerPerson', WCNetPremium DECIMAL(18,3) N'$.WCNetPremium', WCIncllevy DECIMAL(18,3) N'$.WCIncllevy', WCPolicyFee1RO DECIMAL(18,3) N'$.WCPolicyFee1RO',
	WCGrossPremium DECIMAL(18,3) N'$.WCGrossPremium', WCBrokerName nvarchar(50) N'$.WCBrokerName', WCBrokerCommission DECIMAL(18,3) N'$.WCBrokerCommission', 
	WCBrokerage DECIMAL(18,3) N'$.WCBrokerage' ) AS JsonQuotationMaster;
    
   
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
                                Premium_SumAssured,
                                Premium_GrossRate,
                                Premium_NetPremium,
                                Premium_Incllevy,
                                Premium_PolicyFee1RO,
                                Premium_GrossPremium,
                                Premium_VariableSADetails,
                                Premium_VariableNetPremium,
                                Premium_VariableLevy,
                                Premium_VariablePolicyFee1_RO,
                                Premium_VariableGrossPremium,
                                Premium_RIDetails,
                                BrokerName,
                                BrokerCommission,
                                Brokerage,
                                WCEstimatedAnnualWagesType,
                                WCSumOfSalary,
                                WCEstimatedAnnualWages,
                                WCRate,
                                WCTotalEmployee,
                                WCPerPerson,
                                WCNetPremium,
                                WCIncllevy,
                                WCPolicyFee1RO,
                                WCGrossPremium,
                                WCBrokerName,
                                WCBrokerCommission,
                                WCBrokerage,
                                Status,
                                CreatedAt
                    )
        SELECT InsuranceCompanyName,
               ClientCompanyName,
               @companyCode,
               ISNULL(ScopeofCoverage,'Worldwide'),
               ISNULL(Jurisdiction,'SULTANATE OF OMAN'),
               Address,
               City,
               KYCDetails,
               BankName,
               IFSCCode,
               ISNULL(Branch,'01') Branch,
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
               Premium_SumAssured,
               Premium_GrossRate,
               Premium_NetPremium,
               Premium_Incllevy,
               Premium_PolicyFee1RO,
               Premium_GrossPremium,
               Premium_VariableSADetails,
               Premium_VariableNetPremium,
               Premium_VariableLevy,
               Premium_VariablePolicyFee1_RO,
               Premium_VariableGrossPremium,
               Premium_RIDetails,
               BrokerName,
               BrokerCommission,
               Brokerage,
               WCEstimatedAnnualWagesType,
               WCSumOfSalary,
               WCEstimatedAnnualWages,
               WCRate,
               WCTotalEmployee,
               WCPerPerson,
               WCNetPremium,
               WCIncllevy,
               WCPolicyFee1RO,
               WCGrossPremium,
               WCBrokerName,
               WCBrokerCommission,
               WCBrokerage,
               'Pending' ,
               Getdate()
        FROM   #TempQuotationMaster
        SET @ReturnRIid = @@IDENTITY
        SET @WLDno=
        (
               SELECT 'D/004/'+Branch+'/'+'2402/'+'0000'+CONVERT(nvarchar(15),@ReturnRIid) AS DraftNo
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
                 Premium_SumAssured=TRI.Premium_SumAssured,
                 Premium_GrossRate=TRI.Premium_GrossRate,
                 Premium_NetPremium=TRI.Premium_NetPremium,
                 Premium_Incllevy=TRI.Premium_Incllevy,
                 Premium_PolicyFee1RO=TRI.Premium_PolicyFee1RO,
                 Premium_GrossPremium=TRI.Premium_GrossPremium,
                 Premium_VariableSADetails=TRI.Premium_VariableSADetails,
                 Premium_VariableNetPremium=TRI.Premium_VariableNetPremium,
                 Premium_VariableLevy=TRI.Premium_VariableLevy,
                 Premium_VariablePolicyFee1_RO=TRI.Premium_VariablePolicyFee1_RO,
                 Premium_VariableGrossPremium=TRI.Premium_VariableGrossPremium,
                 Premium_RIDetails=TRI.Premium_RIDetails,
                 BrokerName=TRI.BrokerName,
                 BrokerCommission=TRI.BrokerCommission,
                 Brokerage=TRI.Brokerage,
                 WCEstimatedAnnualWagesType=TRI.WCEstimatedAnnualWagesType,
                 WCSumOfSalary=TRI.WCSumOfSalary,
                 WCEstimatedAnnualWages=TRI.WCEstimatedAnnualWages,
                 WCRate=TRI.WCRate,
                 WCTotalEmployee=TRI.WCTotalEmployee,
                 WCPerPerson=TRI.WCPerPerson,
                 WCNetPremium=TRI.WCNetPremium,
                 WCIncllevy=TRI.WCIncllevy,
                 WCPolicyFee1RO=TRI.WCPolicyFee1RO,
                 WCGrossPremium=TRI.WCGrossPremium,
                 WCBrokerName=TRI.WCBrokerName,
                 WCBrokerCommission=TRI.WCBrokerCommission,
                 WCBrokerage=TRI.WCBrokerage
      FROM       Quotation Q
      INNER JOIN #TempQuotationMaster TRI
      ON         Q.QuotationId=TRI.QuotationId
      UPDATE QCD
      SET        QCD.DeathCoverType=TQC.DeathCoverType,
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
      SELECT QuotationId,
             PolicyNo,
             WLPolicyNo,
             'Quotation Converted to Policy Successfully.!' AS Status
      FROM   Quotation
      WHERE  QuotationId=@ReturnRIid
    END
  END
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class Quotation
    {
        public long QuotationId { get; set; }
        public int WCId { get; set; }

        public string DraftNo { get; set; }
        public string WLDraftNo { get; set; }
        public string WLPolicyNo { get; set; }

        public string Status { get; set; }

        public string PolicyNo { get; set; }

        public string InsuranceCompanyName { get; set; }

        public string ClientCompanyName { get; set; }

        public string ScopeofCoverage { get; set; }

        public string Jurisdiction { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string KYCDetails { get; set; }

        public string BankName { get; set; }

        public string IFSCCode { get; set; }

        public string Branch { get; set; }

        public DateTime? PeriodofInsurance { get; set; }

        private string _Category = string.Empty;
        public string Category
        {
            get { return _Category; }
            set { _Category = value; }
        }

        public int? TotalEmployees { get; set; }

        public int? TotalDependents { get; set; }

        public int? TotalSpousedependents { get; set; }

        public int? TotalChilddependents { get; set; }

        public long? PolicyCurrency { get; set; }

        public string EligibilityCriteria { get; set; }

        public decimal? SumAssured_SA { get; set; }

        public int? AgeLimitforEmployees { get; set; }

        public int? AgeLimitforDependentSpouse { get; set; }

        public int? AgeLimitforDependentChild { get; set; }

        public long? FCL { get; set; }

        public double WCRate { get; set; }
        public decimal? SumOfSalary { get; set; }
        public decimal? PerPerson { get; set; }
        public decimal? NetPremium { get; set; }
        public int? TotalEmployeescount { get; set; }

        public decimal? EstimatedAnnualWages { get; set; }
        #region
        /// <summary>
        /// Premium Screen(Quotation) Entities
        /// </summary>
        public decimal? Premium_SumAssured { get; set; }
        public decimal? Premium_GrossRate { get; set; }
        public decimal? Premium_NetPremium { get; set; }
        public decimal? Premium_Levy { get; set; }
        public decimal? Premium_PolicyFee1RO { get; set; }
        public decimal? Premium_GrossPremium { get; set; }
        public string Premium_BrokerName { get; set; }
        public decimal? Premium_BrokerCommssion { get; set; }
        public decimal? Premium_Brokerage { get; set; }
        public string Premium_RIName { get; set; }
        public decimal? Premium_RInetrate { get; set; }
        public decimal? Premium_RIPremium { get; set; }
        public decimal? Premium_RIRetention { get; set; }
        public decimal? Premium_InsurerRetention { get; set; }
        public decimal? Premium_RIRetentionPremium { get; set; }
        public decimal? Premium_InsurerRetentionPremium { get; set; }
        public decimal? Premium_InsurerLoadingPremium { get; set; }
        public decimal? Premium_InsurerLoading { get; set; }

#endregion

        public decimal? GrossPremium { get; set; }
        public int PolicyFee1_RO { get; set; }

        

        public decimal? VATonWCpremium { get; set; }

        public decimal? TotalPremiumInclVAT { get; set; }

        public string BrokerPercentage { get; set; }

        public decimal? BrokerAmount { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string UpdatedBy { get; set; }
        public string BrokerName { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public string Premium_TypeofSumAssured { get; set; }
        
        public decimal? Premium_Salary { get; set; }
        public decimal? Premium_FCL { get; set; }
        public decimal? Premium_ClientRate { get; set; }
        public decimal? Premium_Incl_levy_PolFeeRO { get; set; }
        public string Premium_VariableSADetails { get; set; }

        
        //QuotationCoverageDetail
        public long QuotationCoverageDetailID { get; set; }
        public string DeathCoverType { get; set; }
        public string DeathCoverAnnualLimit { get; set; }
        public decimal DeathCoverSumAssuredAmount { get; set; }
        public int DeathCoverSumAssuredNoOfTimes { get; set; }
        public decimal DeathCoverFCL { get; set; }

        public string AccidentalDeath { get; set; }
        public string AccidentalAnnualLimit { get; set; }
        public decimal AccidentalSumAssuredAmount { get; set; }
        public int AccidentalSumAssuredNoOfTimes { get; set; }
        public decimal AccidentalFCL { get; set; }

        public string PTD { get; set; }
        public string PTDAccident { get; set; }
        public string PTDSickness { get; set; }
        public decimal PTDCoverageLimit { get; set; }
        public decimal PTDMaximumLimit { get; set; }
        public int PTDWaitingYears { get; set; }

        public string PPD { get; set; }
        public string PPDAccident { get; set; }
        public string PPDSickness { get; set; }
        public decimal PPDCoverageLimit { get; set; }
        public decimal PPDMaximumLimit { get; set; }
        public int PPDWaitingYears { get; set; }

        public string TTD { get; set; }
        public string TTDAccident { get; set; }
        public string TTDSickness { get; set; }
        public decimal TTDCoverageLimit { get; set; }
        public decimal TTDMaximumLimit { get; set; }
        public int TTDWaitingYears { get; set; }

        public string RepatriationBenefit { get; set; }
        public decimal RBCoverageLimit { get; set; }

        public string PassiveWarRisk { get; set; }
        public decimal PWRCoverageLimit { get; set; }

        public string TerminalIllness { get; set; }
        public decimal TLCoverageLimit { get; set; }
        public decimal TLMaximumLimit { get; set; }
        public int TLWaitingYears { get; set; }

        public string CriticalIllness { get; set; }
        public decimal CLCoverageLimit { get; set; }
        public decimal CLMaximumLimit { get; set; }
        public int CLWaitingYears { get; set; }
        public string OtherAdditionalCover { get; set; }

        public string WarExclusion { get; set; }
        public decimal WECoverageLimit { get; set; }
        public decimal WEMaximumLimit { get; set; }
        public int WEWaitingYears { get; set; }

        public string AtomicBiologicalAndCNE { get; set; }
        public decimal ABACNECoverageLimit { get; set; }
        public decimal ABACNEMaximumLimit { get; set; }
        public int ABACNEWaitingYears { get; set; }

        public string CriminalActContent { get; set; }
        public decimal CACCoverageLimit { get; set; }
        public decimal CACNEMaximumLimit { get; set; }
        public int CACNEWaitingYears { get; set; }

        public string HazardousSportsExclusion { get; set; }
        public decimal HSECoverageLimit { get; set; }
        public decimal HSEMaximumLimit { get; set; }
        public int HSEWaitingYears { get; set; }

        public string AviationExclusion { get; set; }
        public decimal AECoverageLimit { get; set; }
        public decimal AEMaximumLimit { get; set; }
        public int AEEWaitingYears { get; set; }


        public string IntentionalSelfInflicted { get; set; }
        public decimal ISSASCoverageLimit { get; set; }
        public decimal ISSASMaximumLimit { get; set; }
        public int ISSASWaitingYears { get; set; }

        public string PandemicEpidemicCondition { get; set; }
        public decimal PECCoverageLimit { get; set; }
        public decimal PECMaximumLimit { get; set; }
        public int PECWaitingYears { get; set; }

        public string Sucide { get; set; }
        public decimal SECCoverageLimit { get; set; }
        public decimal SEMaximumLimit { get; set; }
        public int SEWaitingYears { get; set; }

        public string HIV_AIDS { get; set; }
        public decimal HIVCoverageLimit { get; set; }
        public decimal HIVMaximumLimit { get; set; }
        public int HIVWaitingYears { get; set; }
        public string OtherExclusions { get; set; }
        public long ModifiedBy { get; set; }
        public DateTime? MofifiedAt { get; set; }




    }
}

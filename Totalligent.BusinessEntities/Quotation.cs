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

        public string DraftNo { get; set; }

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

        public string Category { get; set; }

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

        public decimal? ClientPremium { get; set; }

        public decimal? InsuranceLevy { get; set; }

        public decimal? PolicyFee { get; set; }

        public decimal? TotalPremium { get; set; }

        public string BrokerName { get; set; }

        public decimal? Brokerage { get; set; }

        public decimal? RICount { get; set; }

        public string RI1in_Percentage { get; set; }

        public string RI2in_Percentage { get; set; }

        public string RI3in_Percentage { get; set; }

        public string RIRate { get; set; }

        public string RIRetension { get; set; }

        public string AMIRetension { get; set; }

        public decimal? RIPremium { get; set; }

        public decimal? AMILoading { get; set; }

        public int? TotalEmployeescount { get; set; }

        public decimal? EstimatedAnnualWages { get; set; }

        public string AnnualRate { get; set; }

        public string Premium_EAW_Rate { get; set; }

        public decimal? Premium_Incl_levy_PolFeeRO { get; set; }

        public decimal? VATonWCpremium { get; set; }

        public decimal? TotalPremiumInclVAT { get; set; }

        public string BrokerPercentage { get; set; }

        public decimal? BrokerAmount { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string UpdatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }



    }
}

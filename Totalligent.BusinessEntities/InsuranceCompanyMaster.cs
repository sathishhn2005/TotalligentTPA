using System;
using System.ComponentModel.DataAnnotations;

namespace Totalligent.BusinessEntities
{

    public class InsuranceCompanyMaster
    {
        public long ICMId { get; set; }

        public string InsurancecompanyName { get; set; }

        public string InsCompCode { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string Zipcode { get; set; }

        public string ContactPerson { get; set; }

        public string MobileNumber { get; set; }

        public string EmailId { get; set; }

        public int? BankID { get; set; }

        public string AccountNumber { get; set; }

        public string IFSCCode { get; set; }

        public string UploadKYC_01 { get; set; }

        public string UploadKYC_02 { get; set; }

        public string UploadKYC_03 { get; set; }

        public string UploadKYC_04 { get; set; }

        public string UploadKYC_05 { get; set; }

        public string Status { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string UpdatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

    }

}


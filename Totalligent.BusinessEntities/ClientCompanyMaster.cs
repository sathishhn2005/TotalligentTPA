using System;
using System.Collections.Generic;

namespace Totalligent.BusinessEntities
{

    public class ClientCompanyMaster
    {
        public long ClientCompanyMasterId { get; set; }

        public string ClientCompCode { get; set; }

        public string ClientCompanyName { get; set; }
        public int NationalityId { get; set; }
        
        public string KYCUploadPath { get; set; }
        
        public string Status { get; set; }
        public string InsuranceCompanyName { get; set; }
        
        public long? InsuranceCompanyId { get; set; }

        public string Address { get; set; }
        public string BankName { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string Zipcode { get; set; }

        public string ContactPerson { get; set; }

        public string MobileNumber { get; set; }

        public string EmailId { get; set; }

        public string Currency { get; set; }

        public long? LOBName { get; set; }

        public long? ProducerType { get; set; }

        public long? ProducerName { get; set; }

        public decimal? ProducerCommission { get; set; }
        public decimal? RINetRate { get; set; }
        public decimal? GrossRate { get; set; }

        public long? RINumber { get; set; }

        public string RIName { get; set; }

        public long? RIRetention { get; set; }

        public long? AMIRetention { get; set; }

        public int? BankID { get; set; }

        public string AccountNumber { get; set; }

        public string IFSCCode { get; set; }

        public string UploadKYC_01 { get; set; }

        public string UploadKYC_02 { get; set; }

        public string UploadKYC_03 { get; set; }

        public string UploadKYC_04 { get; set; }

        public string UploadKYC_05 { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public string UpdatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

    }

}
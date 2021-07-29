using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class MedicalProviderMaster
    {
        public long MedicalProviderId { get; set; }

        public string MedicalProvider { get; set; }

        public string Name { get; set; }

        public string MedicalProviderCode { get; set; }

        public string ContactPerson { get; set; }

        public string MobileNumber { get; set; }

        public string EmailId { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string Zipcode { get; set; }

        public string Location { get; set; }

        public string Category { get; set; }
        public string BankName { get; set; }

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

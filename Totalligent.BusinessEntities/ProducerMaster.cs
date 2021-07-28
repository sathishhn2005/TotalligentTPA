using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class ProducerMaster
    {
        public long ProducerMasterID { get; set; }
        public string ProducerName { get; set; }
        public string ProducerCode { get; set; }
        public string ContactPerson { get; set; }
        public string MobileNumber { get; set; }
        public string EmailId { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zipcode { get; set; }
        public int BusinessDesignationTypeMasterID { get; set; }
        public int BankID { get; set; }
        public string BankName { get; set; }
        public string AccountNumber { get; set; }
        public string IFSCCode { get; set; }
        public string KYCUploadPath { get; set; }
        public string InsertType { get; set; }
        public string Status { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedAt { get; set; }
        public string BusinessTypeName { get; set; }

    }
}

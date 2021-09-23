using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class EmployeeMaster
    {
        public long EmployeeId { get; set; }

        public long ParentEmployeeId { get; set; }

        public long ParentSpouseId { get; set; }

        public string RelationType { get; set; }

        public string EmployeeName { get; set; }
        public string BankName { get; set; }
        public string Nationlity { get; set; }

        public string EmployeeUniqueNumber { get; set; }

        public string ClientName { get; set; }

        public string Category { get; set; }

        public DateTime? DOB { get; set; }

        public int? Age { get; set; }

        public decimal? Salary { get; set; }

        public string Gender { get; set; }

        public int? NationlityId { get; set; }

        public DateTime? EffectiveDate { get; set; }

        public string Remarks { get; set; }

        public decimal? SumAssured { get; set; }

        public decimal? SpouseSumAssured { get; set; }

        public decimal? ChildSumAssured { get; set; }

        public string EntryType { get; set; }

        public int? BankID { get; set; }

        public string AccountNumber { get; set; }

        public string IFSCCode { get; set; }

        public string Status { get; set; }

        public string KYCUploadPath { get; set; }

        public string CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public long? ModifyBy { get; set; }

        public DateTime? ModifyAt { get; set; }

    }



}
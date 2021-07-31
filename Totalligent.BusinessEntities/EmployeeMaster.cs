﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class EmployeeMaster
    {
        public long EmployeeId { get; set; }

        public string EmployeeName { get; set; }
        public string ClientName { get; set; }

        public string EmployeeUniqueNumber { get; set; }
        public string KYCUploadPath { get; set; }

        public string Relation { get; set; }

        public string Nationality { get; set; }

        public string Category { get; set; }

        public DateTime? DOB { get; set; }

        public int? Age { get; set; }

        public decimal? Salary { get; set; }

        public decimal? EAW { get; set; }

        public decimal? SumAssured { get; set; }

        public DateTime? EffectiveDate { get; set; }

        public string Remarks { get; set; }
        public string BankName { get; set; }

        public string EntryType { get; set; }

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

        public string ModifyBy { get; set; }

        public DateTime? ModifyAt { get; set; }

    }


}
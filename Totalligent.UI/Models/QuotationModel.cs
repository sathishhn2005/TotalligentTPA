using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Totalligent.BusinessEntities;
using System.Web.Mvc;

namespace Totalligent.UI.Models
{
    public class QuotationModel
    {
        public List<Quotation> lstQuotation { get; set; }
        public IEnumerable<SelectListItem> lstInsuranceCompanyMaster{ get; set; }
        public IEnumerable<SelectListItem> lstWC{ get; set; }
        public IEnumerable<SelectListItem> lstClientMaster { get; set; }
        public IEnumerable<SelectListItem> lstBDTypeMaster { get; set; }
        public IEnumerable<SelectListItem> lstBranchMaster { get; set; }
        public Quotation objQuo { get; set; }
        public string objQuoJson { get; set; }

    
    }
}
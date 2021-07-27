using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Totalligent.BusinessEntities;
using System.Web.Mvc;

namespace Totalligent.UI.Models
{
    public class CCMasterModel
    {
        public List<ClientCompanyMaster> lstCCMaster { get; set; }
        public IEnumerable<SelectListItem> lstBankMaster { get; set; }
        public IEnumerable<SelectListItem> lstCCInsddl { get; set; }
        public IEnumerable<SelectListItem> lstLOB { get; set; }
        public IEnumerable<SelectListItem> lstProducerMaster { get; set; }
        public IEnumerable<SelectListItem> lstRIMaster { get; set; }

    }
}
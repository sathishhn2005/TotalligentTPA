using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Totalligent.BusinessEntities;
using System.Web.Mvc;

namespace Totalligent.UI.Models
{
    public class EmployeeMasterModel
    {
        public List<EmployeeMaster> lstEMaster { get; set; }
        public IEnumerable<SelectListItem> lstBankMaster { get; set; }
        public IEnumerable<SelectListItem> lstClientMaster { get; set; }

    }
}
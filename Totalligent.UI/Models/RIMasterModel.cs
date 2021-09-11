using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Totalligent.BusinessEntities;
using System.Web.Mvc;

namespace Totalligent.UI.Models
{
    public class RIMasterModel
    {
        public List<ReInsurerMaster> lstRIMaster { get; set; }    
        public IEnumerable<SelectListItem> lstBankMaster { get; set; }
        public IEnumerable<SelectListItem> lstNationlity { get; set; }
    }
}
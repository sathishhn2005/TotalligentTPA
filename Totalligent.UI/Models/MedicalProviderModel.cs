using System.Collections.Generic;
using Totalligent.BusinessEntities;
using System.Web.Mvc;

namespace Totalligent.UI.Models
{
    public class MedicalProviderModel
    {
        public List<MedicalProviderMaster> lstRIMaster { get; set; }
        public IEnumerable<SelectListItem> lstBankMaster { get; set; }
    }
}
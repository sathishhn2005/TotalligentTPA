using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class InsuranceCompanyMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateCCMaster(InsuranceCompanyMaster objReInsurerMaster, string Action)
        {
            string msg = "";
            int ReturnCode = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();

            objReInsurerMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objReInsurerMaster);

            ReturnCode = objGLIMasterBAL.DMLICMaster(Action, JParamVal);

            if (Action == "Create" && ReturnCode > 0)
            {
                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && ReturnCode > 0)
            {
                msg = "Updated Successfully";
            }
            else
            {
                msg = "Error Occured, Please check it.";
            }
            TempData["Alertmsg"] = msg;

            return View();
        }
        [HttpPost]
        public JsonResult GetAutocompleteICNameICCodeCity(string prefixText, string Action)
        {
            List<InsuranceCompanyMaster> lstICMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteICName(prefixText, Action, out lstICMaster);

            return Json(lstICMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetICMaster(string ICName, string ICCode, string City)
        {
            List<InsuranceCompanyMaster> lstICMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetICMaster(ICName, ICCode, City, out lstICMaster);

            return Json(lstICMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateICMaster(string RiMasterID)
        {

            int ReturnCode = 0;

            long RID = RiMasterID == "" || RiMasterID == null ? 0 : Convert.ToInt64(RiMasterID);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateICMaster(RID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }
    }
}
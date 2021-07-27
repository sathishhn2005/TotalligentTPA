using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;
using Totalligent.UI.Models;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class ClientMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddUpdateCCMaster(ClientCompanyMaster objCCMaster, string Action)
        {
            string msg = "";
            int ReturnCode = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();

            objCCMaster.CreatedBy = loginID;// Convert.ToInt64(loginID);
            string JParamVal = JsonConvert.SerializeObject(objCCMaster);

            ReturnCode = objGLIMasterBAL.DMLCCMaster(Action, JParamVal);

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
        public JsonResult GetAutocompleteCCNameCCCodeCity(string prefixText, string Action)
        {
            List<ClientCompanyMaster> lstCCMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteCCName(prefixText, Action, out lstCCMaster);

            return Json(lstCCMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetCCMaster(string CCName, string CCCode, string City)
        {
            List<ClientCompanyMaster> lstCCMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetCCMaster(CCName, CCCode, City, out lstCCMaster);

            return Json(lstCCMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateCCMaster(string CCMasterID)
        {

            int ReturnCode = 0;

            long RID = CCMasterID == "" || CCMasterID == null ? 0 : Convert.ToInt64(CCMasterID);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateCCMaster(RID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }


    }
}
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;
using Totalligent.UI.Models;
using System.IO;
using System.Configuration;
using System.IO.Compression;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class BenefitsMasterController : Controller
    {
        // GET: GroupLifeInsurance/BenefitsMaster
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/DrugMaster
        [HttpPost]
        public ActionResult AddUpdateBenefitsMaster(BenefitsMaster objBM, string Action, string FolderName)
        {
            string msg = string.Empty;
            string loginID = string.Empty;
            string UserName = string.Empty;
            int BenefitsId = 0;
            if (Session["Loginid"] == null)
            {
                loginID = "1";
            }
            else
            {
                loginID = Session["Loginid"].ToString();
            }
            if (Session["UserName"] == null)
            {
                UserName = "admin";
            }
            else
            {
                UserName = Session["UserName"].ToString();
            }

            objGLIMasterBAL = new GLIMasterBAL();
            //string FileFolderPath = GetFolderPath(FolderName);

            objBM.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objBM);

            BenefitsId = objGLIMasterBAL.DMLBenefitsMaster(Action, JParamVal);
            if (BenefitsId > 0)
                msg = "Benefits Saved successfully";
            else
                msg = "Benefits not Saved successfully";
            TempData["Alertmsg"] = msg;

            return View();
        }
        [HttpPost]
        public JsonResult GetAutocompleteBMNameCode(string prefixText, string Action)
        {
            List<BenefitsMaster> lstBM = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteBMCode(prefixText, Action, out lstBM);

            return Json(lstBM, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetBenefits(string BenefitsName, string BenefitsCode)
        {
            List<BenefitsMaster> lstBM = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetBenefits(BenefitsName, BenefitsCode, out lstBM);

            return Json(lstBM, JsonRequestBehavior.AllowGet);
        }

    }
}
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;
namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class EmployeeMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateEmpMaster(EmployeeMaster objEmpMaster, string Action)
        {
            string msg = "";
            int ReturnCode = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();

            objEmpMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objEmpMaster);

            ReturnCode = objGLIMasterBAL.DMLEmpMaster(Action, JParamVal);

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
        public JsonResult GetAutocompleteEmpNameId(string prefixText, string Action)
        {
            List<EmployeeMaster> lstEmpMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteEmpName(prefixText, Action, out lstEmpMaster);

            return Json(lstEmpMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetEmpMaster(string EmpName, string EmpId, string ClientName)
        {
            List<EmployeeMaster> lstEmpMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetEmpMaster(EmpName, EmpId, ClientName, out lstEmpMaster);

            return Json(lstEmpMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateEmpMaster(string EmpId)
        {

            int ReturnCode = 0;

            long RID = EmpId == "" || EmpId == null ? 0 : Convert.ToInt64(EmpId);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateEmpMaster(RID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }
    }
}
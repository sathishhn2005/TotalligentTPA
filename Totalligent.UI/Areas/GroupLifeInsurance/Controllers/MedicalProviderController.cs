using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;


namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class MedicalProviderController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateMPMaster(MedicalProviderMaster objMPMaster, string Action)
        {
            string msg = "";
            int ReturnCode = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();

            objMPMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objMPMaster);

            ReturnCode = objGLIMasterBAL.DMLMPMaster(Action, JParamVal);

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
        public JsonResult GetAutocompleteMPNameProvider(string prefixText, string Action)
        {
            List<MedicalProviderMaster> lstMIMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteMPName(prefixText, Action, out lstMIMaster);

            return Json(lstMIMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetMPMaster(string MedicalProvider, string Name, string ContactPerson)
        {
            List<MedicalProviderMaster> lstMPMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetMPMaster(MedicalProvider, Name, ContactPerson, out lstMPMaster);

            return Json(lstMPMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateMPMaster(string MPId)
        {

            int ReturnCode = 0;

            long RID = MPId == "" || MPId == null ? 0 : Convert.ToInt64(MPId);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateMPMaster(RID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }




        //[HttpGet]
        //public ActionResult GetRIMaster(string RIName, string RICode, string City)
        //{
        //    List<ReInsurerMaster> lstRIMaster = null;
        //    int ReturnCode = 0;

        //    objGLIMasterBAL = new GLIMasterBAL();
        //    ReturnCode = objGLIMasterBAL.GetRIMaster(RIName, RICode, City, out lstRIMaster);


        //    List<BankMaster> lstBM = null;
        //    RIMasterModel obj = new RIMasterModel();
        //    new GLIMasterBAL().GetBankMasters(out lstBM);
        //    obj.lstRIMaster = null;

        //    var selectList = new List<SelectListItem>();

        //    foreach (var element in lstBM)
        //    {
        //        selectList.Add(new SelectListItem
        //        {
        //            Value = element.BankID.ToString(),
        //            Text = element.BankName
        //        });
        //        obj.lstBankMaster = selectList;
        //    }
        //    obj.lstRIMaster = lstRIMaster;
        //    return View("RIMaster", obj);
        //}



    }
}


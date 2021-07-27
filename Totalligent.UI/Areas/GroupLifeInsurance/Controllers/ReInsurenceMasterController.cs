using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    
    public class ReInsurenceMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateRIMaster(ReInsurerMaster objReInsurerMaster,string Action)
        {
            string msg = "";
            int ReturnCode = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();

            objReInsurerMaster.CreatedBy = Convert.ToInt64(loginID);
            string JParamVal = JsonConvert.SerializeObject(objReInsurerMaster);

            ReturnCode = objGLIMasterBAL.DMLRIMaster(Action, JParamVal);

            if (Action == "Create" && ReturnCode > 0)
            {
                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && ReturnCode > 0)
            {
                msg = "Updated Successfully";
            }
            else {
                msg = "Error Occured, Please check it.";
            }
            TempData["Alertmsg"] = msg;

            return View();
        }
        [HttpPost]
        public JsonResult GetAutocompleteRINameRICodeCity(string prefixText,string Action)
        {
            List<ReInsurerMaster> lstRIMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteRINameRICodeCity(prefixText, Action,out lstRIMaster);

            return Json(lstRIMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetRIMaster(string RIName, string RICode, string City)
        {
            List<ReInsurerMaster> lstRIMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetRIMaster(RIName, RICode, City, out lstRIMaster);

            return Json(lstRIMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateRIMaster(string RiMasterID)  {
           
            int ReturnCode = 0;

            long RID = RiMasterID == "" || RiMasterID == null ? 0 : Convert.ToInt64(RiMasterID) ;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateRIMaster(RID);

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
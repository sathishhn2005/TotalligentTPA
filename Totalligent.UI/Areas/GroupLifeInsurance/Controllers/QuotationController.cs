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
    public class QuotationController : Controller
    {
        GLIQuotationBAL objGLIBAL;
        // GET: GroupLifeInsurance/Quotation
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RejectQuotation(long Qid, string Action)
        {
            long res = 0;
            string msg = "";
            objGLIBAL = new GLIQuotationBAL();
            res = objGLIBAL.RejectDraft(Qid, Action);

            string Msg = res > 0 ? "Draft Rejected Successfully.!" : "Error occured while rejecting,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
            //if (QuotationId > 0)
            //{
            //    msg = "Updated Successfully";
            //}
            //else
            //{
            //    msg = "Error Occured, Please check it.";
            //}
            //TempData["Alertmsg"] = msg;
            //return RedirectToAction("Quotation", "UnderWriting");
        }
        [HttpPost]
        public JsonResult AddUpdateQuotationMaster(Quotation objQuotation, QuotationModel objQM, string Action, string FolderName)
        {
            string msg = "";
            string loginID = string.Empty;
            string UserName = string.Empty;
            long QuotationId = 0;
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
            objGLIBAL = new GLIQuotationBAL();
            objQuotation.CreatedBy = loginID;
            string JParamValQuotationDetails = JsonConvert.SerializeObject(objQM.objQuo);
            string JParamValCoverageDetails = JsonConvert.SerializeObject(objQuotation);
            
            if (objQM.objQuo.QuotationId > 0)
            {
                Action = "Update";
            }
            QuotationId = objGLIBAL.DMLQuotationMaster(Action, JParamValQuotationDetails, JParamValCoverageDetails, out List<Quotation> objResponse);
            if (QuotationId > 0)
            {
                msg = "Updated Successfully";
                return Json(objResponse[0], JsonRequestBehavior.AllowGet);
            }
            else
            {
                msg = "Error Occured, Please check it.";
            }
            TempData["Alertmsg"] = msg;

            return Json(objResponse[0], JsonRequestBehavior.AllowGet);
        }
    }
}
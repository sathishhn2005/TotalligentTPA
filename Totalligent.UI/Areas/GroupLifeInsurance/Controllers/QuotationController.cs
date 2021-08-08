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

        public ActionResult AddUpdateQuotationMaster(QuotationModel objQuotation, string Action, string FolderName)
        {
            string msg = "";
            long QuotationId = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIBAL = new GLIQuotationBAL();

            string JParamVal = JsonConvert.SerializeObject(objQuotation.objQuo);
            QuotationId = objGLIBAL.DMLQuotationMaster(Action, JParamVal);
            if (QuotationId > 0)
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
    }
}
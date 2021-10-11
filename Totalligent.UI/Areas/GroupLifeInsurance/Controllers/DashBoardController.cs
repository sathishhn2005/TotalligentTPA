using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Totalligent.BAL;
using Totalligent.UI.Models;
using Totalligent.BusinessEntities;
using Newtonsoft.Json;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class DashBoardController : Controller
    {
        readonly AdminModel objAdminModel = new AdminModel();
        readonly TotalligentBALayer objBALTot = new TotalligentBALayer();
        // GET: GroupLifeInsurance/DashBoard
        [HttpGet]
        public ActionResult UnderWriterDashBoard(Quotation objUW)
        {
            long returnCode = -1;
            UnderWriter obj = null;
            try
            {
                string UserName = "Sathish";
                //if()
                //DateTime StartDate = DateTime.Now;
                //DateTime EndDate = DateTime.Now;
                List<UnderWriter> lstUW = null;
                if (objUW.PeriodofInsurance.Equals(null))
                {
                    objUW.PeriodofInsurance = DateTime.Now;
                }
                if (objUW.PeriodofInsuranceEndDate.Equals(null))
                {
                    objUW.PeriodofInsuranceEndDate = DateTime.Now;
                }
                //string UserName, DateTime StartDate, DateTime EndDate, out List<UnderWriter> lstUW
                returnCode = objBALTot.GetUWDB(UserName, (DateTime)objUW.PeriodofInsurance, (DateTime)objUW.PeriodofInsuranceEndDate, out lstUW);
                obj = lstUW[0];
                if (obj != null)
                {
                    return View(obj);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return View(obj);
        }
        [HttpGet]
        public JsonResult GetLineChart()
        {
            List<DataPoint> dataPoints = new List<DataPoint>();
            try
            {

                dataPoints = objBALTot.GetLinechartUW(1, "admin");
                //  ViewBag.DataPoints = JsonConvert.SerializeObject(dataPoints);

            }
            catch (Exception ex)
            {

                throw ex;
            }

            return Json(new
            {
                list = dataPoints
            }, JsonRequestBehavior.AllowGet);


        }
        public ActionResult MISDashBoard()
        {
            return View();
        }
        public ActionResult BIDashBoard()
        {
            return View();
        }
    }
}
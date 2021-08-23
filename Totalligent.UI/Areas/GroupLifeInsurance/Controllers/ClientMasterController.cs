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
    public class ClientMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddUpdateCCMaster(ClientCompanyMaster objCCMaster, string Action, string FolderName)
        {
            string msg = "";
            long CCMasterID = 0;
            int ResultRow = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();
            string FileFolderPath = GetFolderPath(FolderName);

            objCCMaster.CreatedBy = loginID;// Convert.ToInt64(loginID);
            string JParamVal = JsonConvert.SerializeObject(objCCMaster);

            CCMasterID = objGLIMasterBAL.DMLCCMaster(Action, JParamVal);

            if (Action == "Create" && CCMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);
                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["CMMasterKYCFilesPath"]) + FolderName + "_" + CCMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathCCMaster(CCMasterID, KYCzipPath);

                    dir.Delete(true);
                }

                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && CCMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);

                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["CMMasterKYCFilesPath"]) + FolderName + "_" + CCMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathCCMaster(CCMasterID, KYCzipPath);


                    dir.Delete(true);
                }

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


        [HttpPost]
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string FName = TempData["CMFolderName"].ToString();
            TempData["CMFolderName"] = FName;
            string fName = "";
            try
            {
                foreach (string fileName in Request.Files)
                {
                    HttpPostedFileBase file = Request.Files[fileName];
                    //Save file content goes here
                    fName = file.FileName;
                    if (file != null && file.ContentLength > 0)
                    {
                        string pathString = GetFolderPath(FName);

                        var path = string.Format("{0}\\{1}", pathString, file.FileName);
                        file.SaveAs(path);

                    }

                }

            }
            catch (Exception ex)
            {
                isSavedSuccessfully = false;
            }


            if (isSavedSuccessfully)
            {
                return Json(new { Message = fName });
            }
            else
            {
                return Json(new { Message = "Error in saving file" });
            }
        }

        private string GetFolderPath(string FName)
        {
            string FPath = ConfigurationManager.AppSettings["KYCpath"];
            var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
            string pathString = System.IO.Path.Combine(originalDirectory.ToString(), FName);

            bool isExists = System.IO.Directory.Exists(pathString);
            if (!isExists)
                System.IO.Directory.CreateDirectory(pathString);

            return pathString;


        }


        [HttpPost]
        public ActionResult BulkUpdate(HttpPostedFileBase CMCSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            string RIMasterJson = string.Empty;
            string ErrorMsg = string.Empty;

            string _filePath = string.Empty;
            string _FileName = string.Empty;
            string FPath = ConfigurationManager.AppSettings["KYCpath"];

            objGLIMasterBAL = new GLIMasterBAL();
            try
            {
                long loginID = Convert.ToInt64(Session["Loginid"].ToString());

                if (ModelState.IsValid)
                {

                    if (CMCSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(CMCSVFile.FileName);
                        var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
                        _filePath = System.IO.Path.Combine(originalDirectory.ToString(), _FileName);
                        CMCSVFile.SaveAs(_filePath);
                    }


                    List<ClientCompanyMaster> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<ClientCompanyMaster>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (System.Transactions.TransactionScope transactionScope = new System.Transactions.TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                RIMasterJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = objGLIMasterBAL.BulkInsertCCMaster("", RIMasterJson, loginID, out ErrorMsg);
                            }
                            transactionScope.Complete();
                            transactionScope.Dispose();
                        }
                        catch (Exception ex)
                        {
                            transactionScope.Dispose();
                            TempData["Alertmsg"] = "please contact Administrator";
                            throw ex;
                        }
                    }
                    if (returnCode != -1)
                    {
                        TempData["Alertmsg"] = ErrorMsg;
                        System.IO.File.Delete(_filePath);
                    }
                    else
                    {
                        TempData["Alertmsg"] = "please contact Administrator";
                    }

                }
            }
            catch (Exception ex)
            {
                TempData["Alertmsg"] = "please contact Administrator";
                throw;
            }

            return RedirectToAction("ClientMaster", "GLIMaster");

        }
        public JsonResult GetProducerName(string BusinessType)
        {
            try
            {
                List<ProducerMaster> lst = null;
                objGLIMasterBAL = new GLIMasterBAL();
                objGLIMasterBAL.GetProducers(BusinessType, out lst);

                return Json(new
                {
                    list = lst
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw;
            }



        }

        public static ClientCompanyMaster FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            ClientCompanyMaster objCsvFileBulkUplaod = new ClientCompanyMaster();

            objCsvFileBulkUplaod.ClientCompanyName = values[0];
            objCsvFileBulkUplaod.ContactPerson = values[1];
            objCsvFileBulkUplaod.MobileNumber = values[2];
            objCsvFileBulkUplaod.EmailId = values[3];
            objCsvFileBulkUplaod.Address = values[4];
            objCsvFileBulkUplaod.City = values[5];
            objCsvFileBulkUplaod.State = values[6];
            objCsvFileBulkUplaod.Zipcode = values[7];
            objCsvFileBulkUplaod.BankName = values[8];
            objCsvFileBulkUplaod.AccountNumber = values[9];
            objCsvFileBulkUplaod.IFSCCode = values[10];

            objCsvFileBulkUplaod.ClientCompanyName = values[11];
            objCsvFileBulkUplaod.Currency = values[12];
            objCsvFileBulkUplaod.LOBName = Convert.ToInt64(values[13]);
            objCsvFileBulkUplaod.ProducerType = Convert.ToInt64(values[14]);
            objCsvFileBulkUplaod.ProducerName = Convert.ToInt64(values[15]);
            objCsvFileBulkUplaod.ProducerCommission = Convert.ToDecimal(values[16]);
            objCsvFileBulkUplaod.RIName = values[7];
            objCsvFileBulkUplaod.RIRetention = Convert.ToInt64(values[18]);
            objCsvFileBulkUplaod.AMIRetention = Convert.ToInt64(values[19]);
            return objCsvFileBulkUplaod;
        }

    }
}
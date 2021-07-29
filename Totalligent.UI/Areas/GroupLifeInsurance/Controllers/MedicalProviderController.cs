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
    public class MedicalProviderController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/MedicalProvider
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateMPMaster(MedicalProviderMaster objMPMaster, string Action, string FolderName)
        {
            string msg = "";
            long MPMasterID = 0;
            int ResultRow = 0;
            string loginID = Session["Loginid"].ToString();
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();
            string FileFolderPath = GetFolderPath(FolderName);

            objMPMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objMPMaster);

            MPMasterID = objGLIMasterBAL.DMLMPMaster(Action, JParamVal);

            if (Action == "Create" && MPMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);
                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["MPMasterKYCFilesPath"]) + FolderName + "_" + MPMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathMPMaster(MPMasterID, KYCzipPath);
	
                    dir.Delete(true);
                }

                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && MPMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);

                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["MPMasterKYCFilesPath"]) + FolderName + "_" + MPMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathMPMaster(MPMasterID, KYCzipPath);


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


        [HttpPost]
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string FName = TempData["FolderName"].ToString();
            TempData["FolderName"] = FName;
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
        public ActionResult BulkUpdate(HttpPostedFileBase CSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            string MPMasterJson = string.Empty;
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

                    if (CSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(CSVFile.FileName);
                        var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
                        _filePath = System.IO.Path.Combine(originalDirectory.ToString(), _FileName);
                        CSVFile.SaveAs(_filePath);
                    }


                    List<MedicalProviderMaster> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<MedicalProviderMaster>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (System.Transactions.TransactionScope transactionScope = new System.Transactions.TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                MPMasterJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = objGLIMasterBAL.BulkInsertMPMaster("", MPMasterJson, loginID, out ErrorMsg);
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

            return RedirectToAction("MedicalProviderMaster", "GLIMaster");

        }


        public static MedicalProviderMaster FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            MedicalProviderMaster objCsvFileBulkUplaod = new MedicalProviderMaster();

            objCsvFileBulkUplaod.MedicalProvider = values[0];
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

            return objCsvFileBulkUplaod;
        }


    }
}
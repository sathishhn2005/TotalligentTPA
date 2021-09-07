using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO.Compression;
using Totalligent.BusinessEntities;
using Totalligent.BAL;
using Newtonsoft.Json;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class ProducerMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ProducerMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateProducerMaster(ProducerMaster objProducerMaster, string Action, string FolderName)
        {
            string msg = "";
            long ProducerMasterID = 0;
            int ResultRow = 0;
            string loginID = string.Empty;
            string UserName = string.Empty;
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
            string FileFolderPath = GetFolderPath(FolderName);

            objProducerMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objProducerMaster);

            ProducerMasterID = objGLIMasterBAL.DMLProducerMaster(Action, JParamVal);


            if (Action == "Create" && ProducerMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);
                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["ProducerMasterKYCFilesPath"]) + FolderName + "_" + ProducerMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathProducerMaster(ProducerMasterID, KYCzipPath);
                    dir.Delete(true);
                }

                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && ProducerMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);

                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["ProducerMasterKYCFilesPath"]) + FolderName + "_" + ProducerMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathProducerMaster(ProducerMasterID, KYCzipPath);
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
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string FName = TempData["PMFolderName"].ToString();
            TempData["PMFolderName"] = FName;
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

        [HttpPost]
        public JsonResult GetAutocompleteProducerName_Code_City(string prefixText, string Action)
        {
            List<ProducerMaster> lstPMMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteProducerName_Code_City(prefixText, Action, out lstPMMaster);

            return Json(lstPMMaster, JsonRequestBehavior.AllowGet);
        }


        [HttpGet]
        public JsonResult GetPMMaster(string PMName, string PMCode, string City)
        {
            List<ProducerMaster> lstPMMaster = new List<ProducerMaster>();
            int ReturnCode = 0;

           objGLIMasterBAL = new GLIMasterBAL();
           ReturnCode = objGLIMasterBAL.GetProducerMaster(PMName, PMCode, City, out lstPMMaster);
            if (lstPMMaster == null)
            {
                lstPMMaster.Add(new ProducerMaster() { ProducerName = "NoRecordsFound" }) ;
            }

            return Json(lstPMMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivatePMMaster(string PMMasterID)
        {

            int ReturnCode = 0;
            long PMID = PMMasterID == "" || PMMasterID == null ? 0 : Convert.ToInt64(PMMasterID);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivatePMMaster(PMID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult BulkUpdate(HttpPostedFileBase PMCSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            string PMMasterJson = string.Empty;
            string ErrorMsg = string.Empty;

            string _filePath = string.Empty;
            string _FileName = string.Empty;
            string FPath = ConfigurationManager.AppSettings["KYCpath"];

            objGLIMasterBAL = new GLIMasterBAL();
            try
            {
                long loginID =Convert.ToInt64( Session["Loginid"].ToString());

                if (ModelState.IsValid)
                {

                    if (PMCSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(PMCSVFile.FileName);
                        var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
                        _filePath = System.IO.Path.Combine(originalDirectory.ToString(), _FileName);
                        PMCSVFile.SaveAs(_filePath);
                    }


                    List<ProducerMaster> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<ProducerMaster>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (System.Transactions.TransactionScope transactionScope = new System.Transactions.TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                PMMasterJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = objGLIMasterBAL.BulkInsertPMMaster("", PMMasterJson, loginID, out ErrorMsg);
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

            return RedirectToAction("ProducerMaster", "GLIMaster");

        }

        public static ProducerMaster FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            ProducerMaster objCsvFileBulkUplaod = new ProducerMaster();

            objCsvFileBulkUplaod.BusinessTypeName = values[0];
            objCsvFileBulkUplaod.ProducerName = values[1];
            objCsvFileBulkUplaod.ContactPerson = values[2];
            objCsvFileBulkUplaod.MobileNumber = values[3];
            objCsvFileBulkUplaod.EmailId = values[4];
            objCsvFileBulkUplaod.Address = values[5];
            objCsvFileBulkUplaod.City = values[6];
            objCsvFileBulkUplaod.State = values[7];
            objCsvFileBulkUplaod.Zipcode = values[8];
            objCsvFileBulkUplaod.BankName = values[9];
            objCsvFileBulkUplaod.AccountNumber = values[10];
            objCsvFileBulkUplaod.IFSCCode = values[11];

            return objCsvFileBulkUplaod;
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
    }
}
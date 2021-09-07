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
    public class DrugMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/DrugMaster
        [HttpPost]
        public ActionResult AddUpdateDrugMaster(DrugMaster objDM, string Action, string DMFolderName)
        {
            string msg = "";
            int DrugMasterID = 0;
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
            string FileFolderPath = GetFolderPath(DMFolderName);

            objDM.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objDM);

            DrugMasterID = objGLIMasterBAL.DMLDrugMaster(Action, JParamVal);

            if (Action == "Create" && DrugMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);
                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["DrugMasterKYCFilesPath"]) + DMFolderName + "_" + DrugMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathDrugMaster(DrugMasterID, KYCzipPath);

                    dir.Delete(true);
                }
                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && DrugMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);

                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["DrugMasterKYCFilesPath"]) + DMFolderName + "_" + DrugMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathDrugMaster(DrugMasterID, KYCzipPath);


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
        public JsonResult GetAutocompleteDrugNameCode(string prefixText, string Action)
        {
            List<DrugMaster> lstDrugMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetAutocompleteDrugNameCode(prefixText, Action, out lstDrugMaster);

            return Json(lstDrugMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetDrugMaster(string DrugName, string DrugCode)
        {
            List<DrugMaster> lstDrugMaster = null;
            int ReturnCode = 0;

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.GetDM(DrugName, DrugCode,out lstDrugMaster);

            return Json(lstDrugMaster, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeactivateDrugMaster(string DrugId)
        {

            int ReturnCode = 0;

            int RID = DrugId == "" || DrugId == null ? 0 : Convert.ToInt32(DrugId);

            objGLIMasterBAL = new GLIMasterBAL();
            ReturnCode = objGLIMasterBAL.DeactivateDrugMaster(RID);

            string Msg = ReturnCode > 0 ? "DeActivated" : "Error occure,Contact Admin";
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string FName = TempData["DMFolderName"].ToString();
            TempData["DMFolderName"] = FName;
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
        public ActionResult BulkUpdate(HttpPostedFileBase DMCSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            string DrugMasterJson = string.Empty;
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

                    if (DMCSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(DMCSVFile.FileName);
                        var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
                        _filePath = System.IO.Path.Combine(originalDirectory.ToString(), _FileName);
                        DMCSVFile.SaveAs(_filePath);
                    }


                    List<DrugMaster> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<DrugMaster>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (System.Transactions.TransactionScope transactionScope = new System.Transactions.TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                DrugMasterJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = objGLIMasterBAL.BulkInsertDM("", DrugMasterJson, loginID, out ErrorMsg);
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

            return RedirectToAction("DrugMaster", "GLIMaster");

        }


        public static DrugMaster FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            DrugMaster objCsvFileBulkUplaod = new DrugMaster();

            objCsvFileBulkUplaod.DrugName = values[0];
            objCsvFileBulkUplaod.DrugCode = values[1];
          

            return objCsvFileBulkUplaod;
        }

    }
}
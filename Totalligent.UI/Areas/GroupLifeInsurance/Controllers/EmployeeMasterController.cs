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
    public class EmployeeMasterController : Controller
    {
        GLIMasterBAL objGLIMasterBAL;
        // GET: GroupLifeInsurance/ReInsurenceMaster
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUpdateEmpMaster(EmployeeMaster objEmpMaster, string Action, string FolderName)
        {
            string msg = "";
            long EmpMasterID = 0;
            int ResultRow = 0;
            string loginID = Session["Loginid"].ToString() ?? "";
            string UserName = Session["UserName"].ToString();
            objGLIMasterBAL = new GLIMasterBAL();
            string FileFolderPath = GetFolderPath(FolderName);

            objEmpMaster.CreatedBy = Convert.ToString(loginID);
            string JParamVal = JsonConvert.SerializeObject(objEmpMaster);

            EmpMasterID = objGLIMasterBAL.DMLEmpMaster(Action, JParamVal);

            if (Action == "Create" && EmpMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);
                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["EmpMasterKYCFilesPath"]) + FolderName + "_" + EmpMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathEmpMaster(EmpMasterID, KYCzipPath);

                    dir.Delete(true);
                }

                msg = "Inserted Successfully";
            }
            else if (Action == "Update" && EmpMasterID > 0)
            {
                var dir = new DirectoryInfo(FileFolderPath);

                if (Directory.Exists(FileFolderPath) && dir.GetFiles().Length > 0)
                {
                    string KYCzipPath = Server.MapPath(ConfigurationManager.AppSettings["EmpMasterKYCFilesPath"]) + FolderName + "_" + EmpMasterID.ToString() + ".zip";
                    ZipFile.CreateFromDirectory(FileFolderPath, KYCzipPath);
                    ResultRow = objGLIMasterBAL.pUpdateFolderPathEmpMaster(EmpMasterID, KYCzipPath);
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
        [HttpPost]
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string FName = TempData["EMFolderName"].ToString();
            TempData["EMFolderName"] = FName;
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
        public ActionResult BulkUpdate(HttpPostedFileBase EMPCSVFile, string hdnMsgStatus)
        {
            long returnCode = -1;
            string EmpMasterJson = string.Empty;
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

                    if (EMPCSVFile.ContentLength > 0)
                    {
                        _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(EMPCSVFile.FileName);
                        var originalDirectory = new System.IO.DirectoryInfo(string.Format("{0}" + FPath, Server.MapPath(@"\")));
                        _filePath = System.IO.Path.Combine(originalDirectory.ToString(), _FileName);
                        EMPCSVFile.SaveAs(_filePath);
                    }


                    List<EmployeeMaster> lstValues = System.IO.File.ReadAllLines(_filePath)
                                              .Skip(1)
                                              .Select(v => FromCsv(v))
                                              .ToList();

                    List<List<EmployeeMaster>> lstValueList = lstValues.Select((x, i) => new { Index = i, Value = x })
                                                                 .GroupBy(x => x.Index / 5000)
                                                                 .Select(x => x.Select(v => v.Value).ToList()).ToList();

                    using (System.Transactions.TransactionScope transactionScope = new System.Transactions.TransactionScope())
                    {
                        try
                        {
                            for (int i = 0; i < lstValueList.Count; i++)
                            {

                                EmpMasterJson = JsonConvert.SerializeObject(lstValueList[i]);
                                returnCode = objGLIMasterBAL.BulkInsertEmpMaster("", EmpMasterJson, loginID, out ErrorMsg);
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

            return RedirectToAction("EmployeeMaster", "GLIMaster");

        }


        public static EmployeeMaster FromCsv(string csvLineData)
        {
            string[] values = csvLineData.Split(',');


            EmployeeMaster objCsvFileBulkUplaod = new EmployeeMaster();

            objCsvFileBulkUplaod.EmployeeName = values[0];
            objCsvFileBulkUplaod.EmployeeUniqueNumber = values[1];
            objCsvFileBulkUplaod.ClientName = values[2];
            objCsvFileBulkUplaod.Relation = values[3];
            objCsvFileBulkUplaod.Nationality = values[4];
            objCsvFileBulkUplaod.Category = values[5];
            objCsvFileBulkUplaod.DOB = Convert.ToDateTime(values[6]);
            objCsvFileBulkUplaod.Age = Convert.ToInt32(values[7]);
            objCsvFileBulkUplaod.Salary = Convert.ToDecimal(values[8]);
            objCsvFileBulkUplaod.EAW = Convert.ToDecimal(values[9]);
            objCsvFileBulkUplaod.SumAssured = Convert.ToDecimal(values[10]);
            objCsvFileBulkUplaod.EffectiveDate = Convert.ToDateTime(values[11]);
            objCsvFileBulkUplaod.Remarks = values[12];
            objCsvFileBulkUplaod.SpouseAge = Convert.ToInt32(values[13]);
            objCsvFileBulkUplaod.ChildAge = Convert.ToInt32(values[14]);
            objCsvFileBulkUplaod.SpouseCategory = values[15];
            objCsvFileBulkUplaod.ChildCategory = values[16];
            objCsvFileBulkUplaod.SpouseDOB = Convert.ToDateTime(values[17]);
            objCsvFileBulkUplaod.ChildDOB = Convert.ToDateTime(values[18]);
            objCsvFileBulkUplaod.SpouseEffectiveDate = Convert.ToDateTime(values[19]);
            objCsvFileBulkUplaod.ChildEffectiveDate = Convert.ToDateTime(values[20]);
            objCsvFileBulkUplaod.SpouseNationality = values[21];
            objCsvFileBulkUplaod.ChildNationality = values[22];
            objCsvFileBulkUplaod.SpouseRemarks = values[23];
            objCsvFileBulkUplaod.ChildRemarks = values[24];
            objCsvFileBulkUplaod.SpouseSalary = Convert.ToDecimal(values[25]);
            objCsvFileBulkUplaod.ChildSalary = Convert.ToDecimal(values[26]);
            objCsvFileBulkUplaod.SpouseStatus = values[27];
            objCsvFileBulkUplaod.ChildStatus = values[28];
            objCsvFileBulkUplaod.SpouseSumAssured = Convert.ToDecimal(values[29]);
            objCsvFileBulkUplaod.ChildSumAssured = Convert.ToDecimal(values[30]);
            objCsvFileBulkUplaod.BankName = values[31];
            objCsvFileBulkUplaod.AccountNumber = values[32];
            objCsvFileBulkUplaod.IFSCCode = values[33];
            objCsvFileBulkUplaod.Status = values[34];
            objCsvFileBulkUplaod.KYCUploadPath = values[35];
            return objCsvFileBulkUplaod;
        }

    }
}
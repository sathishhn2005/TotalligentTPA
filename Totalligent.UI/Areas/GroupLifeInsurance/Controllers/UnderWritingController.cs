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
using Totalligent.Utilities;
using System.Data;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class UnderWritingController : Controller
    {
        // GET: GroupLifeInsurance/UnderWriting
        public ActionResult Masters()
        {
            return View();
        }
        public ActionResult Quotation()
        {
            MasterSelectedList objCCMasters = new MasterSelectedList();
            QuotationModel obj = new QuotationModel();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            var selectListCCMaster = new List<SelectListItem>();
            var selectListICM = new List<SelectListItem>();
           
            foreach (var element in objCCMasters.lstInsCompddl)
            {
                selectListICM.Add(new SelectListItem
                {
                    Value = element.ICMId.ToString(),
                    Text = element.InsurancecompanyName
                });
                obj.lstInsuranceCompanyMaster = selectListICM;
            }
            foreach (var element in objCCMasters.lstCCMaster)
            {
                selectListCCMaster.Add(new SelectListItem
                {
                    Value = element.ClientCompanyMasterId.ToString(),
                    Text = element.ClientCompanyName
                });
                obj.lstClientMaster = selectListCCMaster;
            }
            return View(obj);
        }
        public ActionResult PolicyIssuance()
        {
            return View();
        }
        public ActionResult CardIssuance()
        {
            return View();
        }
        public ActionResult Endorsement()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Endorsement(Endorsement obj, List<HttpPostedFileBase> fileUploadGLEndorsementPage, HttpPostedFileBase GLpostedFileDoc)
        {

            ExcelSheetToDT objUtility = new ExcelSheetToDT();
            List<Endorsement> lst = null;
            string _filePath = string.Empty;
            string _FileName = string.Empty;

            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();

            try
            {
                foreach (var item in fileUploadGLEndorsementPage)
                {
                    if (fileUploadGLEndorsementPage != null && fileUploadGLEndorsementPage.Count > 0)
                    {
                        string path = Server.MapPath(GetAppSettingsValue.EndorsementPath());

                        if (!Directory.Exists(path))
                        {
                            Directory.CreateDirectory(path);
                        }
                        _filePath = path + Path.GetFileName(item.FileName);
                        string extension = Path.GetExtension(item.FileName);
                        item.SaveAs(_filePath);
                        if (extension.Equals(".xlsx") || extension.Equals(".xls"))
                        {
                            if (item.FileName.Equals("GL_ENDORSEMENT_PAGE.xls"))
                            {
                                dt1 = objUtility.BulkUpload(extension, _filePath);
                                // model.GLEndorsement = dt;
                            }
                            else if (item.FileName.Equals("WC_ENDORSEMENT_PAGE.xls"))
                            {
                                dt2 = objUtility.BulkUpload(extension, _filePath);
                            }
                        }
                    }
                }
                string _ConfigureFilePath = GetAppSettingsValue.GLEndorsementDocumentPath();
                if (GLpostedFileDoc.ContentLength > 0)
                {
                    _FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Path.GetFileName(GLpostedFileDoc.FileName);
                    _filePath = Path.Combine(Server.MapPath(_ConfigureFilePath), Path.GetFileName(_FileName));

                    GLpostedFileDoc.SaveAs(_filePath);
                }

                obj.GlpostedFileDocPath = _filePath;
                TotalligentBALayer objBALTot = new TotalligentBALayer();
                objBALTot.InsertEndorsement(obj, obj.EndorsementId, out lst, dt1, dt2);

            }
            catch (Exception ex)
            {
                throw ex;
            }
            //   return returnCode;
            //return Json(lst, JsonRequestBehavior.AllowGet);
            return View(lst);
        }
    }
}
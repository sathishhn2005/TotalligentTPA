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
using System.Web.Script.Serialization;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;


namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class UnderWritingController : Controller
    {
        ExcelSheetToDT objUtility = new ExcelSheetToDT();
        readonly TotalligentBALayer objBALTot = new TotalligentBALayer();
        // GET: GroupLifeInsurance/UnderWriting
        public ActionResult Masters()
        {
            return View();
        }
        public ActionResult Quotation(long? QId)
        {
            MasterSelectedList objCCMasters = new MasterSelectedList();
            QuotationModel obj = new QuotationModel();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            var selectListCCMaster = new List<SelectListItem>();
            var selectListICM = new List<SelectListItem>();
            var selectListBranchMaster = new List<SelectListItem>();

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
            foreach (var element in objCCMasters.lstBranchMaster)
            {
                selectListBranchMaster.Add(new SelectListItem
                {
                    Value = element.BranchCode,
                    Text = element.BranchName
                });
                obj.lstBranchMaster = selectListBranchMaster;
            }
            if (QId > 0)
            {
                string name = string.Empty;

                long res = objBALTot.EditQutation(name, QId, out List<Quotation> lstQ);
                obj.objQuo = lstQ[0];

                JavaScriptSerializer JSserializer = new JavaScriptSerializer();
                obj.objQuoJson = JSserializer.Serialize(lstQ[0]);
            }
            return View(obj);
        }
        public ActionResult PolicyIssuance(string DraftNo)
        {
            long returnCode = -1;
            List<Quotation> lstQuotation = new List<Quotation>();
            try
            {

                returnCode = objBALTot.GetPolicyIssuance(DraftNo, out lstQuotation);
                if (lstQuotation != null)
                {
                    if (lstQuotation.Count > 0)
                    {
                        return View(lstQuotation);
                    }
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            return View(lstQuotation);
        }
        public ActionResult CardIssuance()
        {
            return View();
        }
        public ActionResult Endorsement()
        {
            List<Endorsement> lst = null;

            try
            {
                objBALTot.GetEndorsement(out lst);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return View(lst);
        }
        [HttpGet]
        public JsonResult GetClientMaster()
        {
            List<ClientCompanyMaster> lst = null;
            try
            {
                objBALTot.GetClientMaster(out lst);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Json(lst, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult GetGLWLPolicyNos(string CompanyName)
        {
            Endorsement objEndor;
            try
            {
                objBALTot.GetGLWLPolicies(out objEndor, CompanyName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Json(objEndor, JsonRequestBehavior.AllowGet);

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
        #region EndorsementPDF

        [HttpPost]
        [ValidateInput(false)]
        public FileResult GenerateGLwLPDF(long EndorsementId, string PdfType)
        {
            long returnCode = -1;
            List<Endorsement> lstEndorsement = null;

            returnCode = objBALTot.GetGL_WL_PDFdata(EndorsementId, PdfType, out lstEndorsement);

            string ExportData = RenderGLWLEndorsementHTML(lstEndorsement);
            using (MemoryStream stream = new System.IO.MemoryStream())
            {
                StringReader reader = new StringReader(ExportData);
                Document PdfFile = new Document(PageSize.A4);
                PdfWriter writer = PdfWriter.GetInstance(PdfFile, stream);
                PdfFile.Open();
                XMLWorkerHelper.GetInstance().ParseXHtml(writer, PdfFile, reader);
                PdfFile.Close();

                return File(stream.ToArray(), "application/pdf", PdfType == "GL" ? "GLEndorsement.pdf" : "WLEndorsement.pdf");
            }

        }

        private string RenderGLWLEndorsementHTML(List<Endorsement> lstEndorsement)
        {
            string GenerateHTML = string.Empty;

            GenerateHTML += "<html><head></head><div>";
            if (lstEndorsement != null)
            {
                GenerateHTML += "<div align='center'> GROUP LIFE  – ENDORSEMENT </div>  <br /> ";
                GenerateHTML += "<table style='width: 80 %;'> <tr style='height: 35px;'><td>Class of Insurance</td> <td>:</td><td>" + lstEndorsement[0].ClssOfInsurance + "</td> </tr >";
                GenerateHTML += "<tr style='height: 35px;'><td>Endorsement No</td><td>:</td><td>" + lstEndorsement[0].EndorsementNo + "</td> </tr>";
                GenerateHTML += "<tr style='height: 35px;'><td>Policy No </td><td>:</td><td>" + lstEndorsement[0].PolicyNo + "</td></tr>";
                GenerateHTML += "<tr style='height: 35px;'><td>Insured</td><td>:</td><td>" + lstEndorsement[0].ClientName + "</td></tr>";
                GenerateHTML += "<tr style='height: 35px;'> <td>Policy Period</td> <td>:</td><td>" + lstEndorsement[0].PolicyPeriod + "</td></tr></table> <br /><br />";
                GenerateHTML += "<div style='height: 75px;'><p> At the request of the Insured, it is hereby agreed to delete the following employees of <b>" + lstEndorsement[0].ClientName + "</b>. to the above-mentioned policy. The details are as mentioned below</p> </div>";

                GenerateHTML += "<table style='width:100 %;border-color:darkgray' border='1' cellpadding='0' cellspacing='0'><thead><tr style='height: 30px;background-color:lightsteelblue'><td>S.No</td><td>Name of Employee</td><td>DOB </td><td>Sum Assured</td> <td>Effective Date</td></tr></thead > <tbody>";
                foreach (Endorsement value in lstEndorsement)
                {

                    GenerateHTML += "<tr style='height:30px;'>";
                    GenerateHTML += "<td>" + value.GLEndorsementId + "</td>";
                    GenerateHTML += "<td>" + value.EmployeeName + "</td>";
                    GenerateHTML += "<td>" + Convert.ToDateTime(value.DOB).ToString("dd-MM-yyyy") + "</td>";
                    GenerateHTML += "<td>" + value.SumAssured + "</td>";
                    GenerateHTML += "<td>" + Convert.ToDateTime(value.EffectiveDate).ToString("dd-MM-yyyy") + "</td></tr>";
                }
                GenerateHTML += "</tbody></table><br /><br />";


                GenerateHTML += "<div> <p>In consideration of the foregoing, a premium of <b>RO.31.931</b> is hereby Credited to the Insured.All other terms, conditions and limitations remain unaltered. </p > </div >";
                GenerateHTML += "<br /><br /><div><div> Authorized Signatory </div><div>  Place: Muscat </div><div>  Date: " + DateTime.Now.ToString() + "</div></div>";

            }
            else
            {
                GenerateHTML += "<div>No Records Found</div>";
            }
            GenerateHTML += "</div></html>";
            return GenerateHTML;
        }
        #endregion
    }
}
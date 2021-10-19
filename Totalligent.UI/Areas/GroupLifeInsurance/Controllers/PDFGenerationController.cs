using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Totalligent.BusinessEntities;
using Totalligent.BAL;
using iTextSharp.tool.xml;
using Totalligent.Utilities;
using System.IO.Compression;
//using System.Drawing;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class PDFGenerationController : Controller
    {
        TotalligentBALayer objTBAL;

        // GET: GroupLifeInsurance/PDFGeneration
        public ActionResult Index()
        {
            return View();
        }
        //public ActionResult Index()
        //{
        //    DownloadPDF();
        //    GlBrokerPDF();
        //    GlRIPDF();
        //    WCBROKERPDF();
        //    GLPOLICYPDF();
        //    WCPOLICYPDF();
        //    return View();
        //}
        private long GetQuotation(string WLPolicyNo, string GLPolicyNo, out List<Quotation> lstQuo)
        {
            // List<Quotation> lstQuo = new List<Quotation>();
            try
            {
                objTBAL = new TotalligentBALayer();
                return objTBAL.GetEndroQuotaiton(WLPolicyNo, GLPolicyNo, out lstQuo);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            // return lstQuo;
        }
        [HttpGet]
        public JsonResult DownLoadPDF(string WLPolicyNo, string GLPolicyNo)
        {
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            //DownloadPDF();
            string HTMLContent = "";

            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=" + "GL Policy Wording.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(GetPDF_GL(HTMLContent));

            Response.End();
            Response.Flush();

            return Json("Success", JsonRequestBehavior.AllowGet);

        }

        [Obsolete]
        public byte[] GetPDF_GL(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);

            // 1: create object of a itextsharp document class  
            Document doc = new Document(PageSize.A4, 25, 25, 30, 30);

            // 2: we create a itextsharp pdfwriter that listens to the document and directs a XML-stream to a file  
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);

            // 3: we create a worker parse the document  
            HTMLWorker htmlWorker = new HTMLWorker(doc);

            // 4: we open document and start the worker on the document  
            doc.Open();
            //htmlWorker.StartDocument();


            //// 5: parse the html into the document  
            //htmlWorker.Parse(txtReader);

            //// 6: close the document and the worker  
            //htmlWorker.EndDocument();
            //htmlWorker.Close();


            #region FontSettings
            string fontpath = Server.MapPath(@"~\fonts\");
            BaseFont customfont = BaseFont.CreateFont(fontpath + "TAHOMA_0.TTF", BaseFont.CP1252, BaseFont.EMBEDDED);
            Font Head_Font = FontFactory.GetFont(Convert.ToString(customfont), 14, Font.BOLD, BaseColor.WHITE);
            Font SubHead_font = FontFactory.GetFont(Convert.ToString(customfont), 10, Font.BOLD, BaseColor.WHITE);
            Font Bold_font = FontFactory.GetFont(Convert.ToString(customfont), 10, Font.BOLD, BaseColor.WHITE);
            Font Normal_font = FontFactory.GetFont(Convert.ToString(customfont), 10, Font.BOLD, BaseColor.WHITE);
            Font Small_font = FontFactory.GetFont(Convert.ToString(customfont), 9, Font.BOLD, BaseColor.WHITE);




            //Font Head_Font = new Font("Times", 14, Font.BOLD | Font.UNDERLINE, BaseColor.BLACK);
            //Font SubHead_font = new Font("Times", 10, Font.BOLD | Font.UNDERLINE, Color.BLACK);
            //Font Bold_font = new Font("Times", 10, Font.BOLD, Color.BLACK);
            //Font Normal_font = new Font(customfont, 10);
            //Font Small_font = new Font(customfont, 9);


            iTextSharp.text.Font Calibri_Font = iTextSharp.text.FontFactory.GetFont("Calibri");
            Calibri_Font.Size = 10f;
            Calibri_Font.SetStyle(1);

            iTextSharp.text.Font Calibri_Nor_Font = iTextSharp.text.FontFactory.GetFont("Calibri");
            Calibri_Nor_Font.Size = 10f;
            Calibri_Nor_Font.SetStyle(0);

            iTextSharp.text.Font Calibri_UL_Font = iTextSharp.text.FontFactory.GetFont("Calibri");
            Calibri_UL_Font.Size = 10f;
            Calibri_UL_Font.SetStyle(Font.UNDERLINE);

            #endregion FontSettings




            #region Head

            PdfPTable P1_Head1 = new PdfPTable(1);
            P1_Head1.TotalWidth = 500;
            P1_Head1.DefaultCell.BorderWidth = 0;
            P1_Head1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;

            P1_Head1.AddCell(new Phrase(new Chunk("Group Life & Workmen’s Compensation Top-up Policy", Head_Font)));

            PdfPCell P1_C1 = new PdfPCell();
            P1_C1.MinimumHeight = 10;
            P1_C1.Border = 0;
            P1_Head1.AddCell(P1_C1);

            doc.Add(P1_Head1);


            PdfPTable P1_Head2 = new PdfPTable(1);
            P1_Head2.TotalWidth = 500;
            P1_Head2.DefaultCell.BorderWidth = 0;
            P1_Head2.DefaultCell.HorizontalAlignment = Element.ALIGN_LEFT;
            P1_Head2.AddCell(new Phrase(new Chunk("Preamble", SubHead_font)));
            P1_Head2.AddCell(P1_C1);

            doc.Add(P1_Head2);


            PdfPTable Row1 = new PdfPTable(2);
            float[] Row1Width = new float[] { 8, 92 };
            Row1.SetWidths(Row1Width);

            PdfPCell R1C1 = new PdfPCell();
            R1C1.Border = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            //Row1Str1.Append("This Takaful Contract (herein after referred to as the “Plan”) is made by and between:");
            //Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), Normal_font)));
            //Row1.AddCell(Row1C1);


            //Row1Str1.Append("1.	Al Madina Insurance Co. (S.A.O.G)");
            //R1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), Bold_font)));            
            //StringBuilder Row1Str2 = new StringBuilder("");
            //Row1Str2.Append("an Omani Company incorporated under the laws of Sultanate of Oman (hereinafter referred to as the “Company” / “First Party”), and acting as an Agent/Wakeel & Mudharib for the Participant’s Takaful Fund (PTF)");
            //R1C1.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), Normal_font)));
            //  Row1.AddCell(Row1C1);

            Phrase R1_P1 = new Phrase();
            PdfPCell R2C1 = new PdfPCell();
            R2C1.Border = 0;
            R1_P1.Add(new Chunk("This Takaful Contract (herein after referred to as the “Plan”) is made by and between:", Normal_font));
            R2C1.Colspan = 2;
            R2C1.AddElement(R1_P1);
            Row1.AddCell(R2C1);


            #region Emptyspace
            PdfPCell P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 5;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            #endregion Emptyspace
            Row1.AddCell(P1_C2);

            //Phrase p1 = new Phrase();
            //p1.Add(new Chunk("1.   Al Madina Insurance Co. (S.A.O.G)", Bold_font));
            //p1.Add(new Chunk(" an Omani Company incorporated under the laws of Sultanate of Oman (hereinafter referred to as the “Company” / “First Party”), and acting as an Agent/Wakeel & Mudharib for the Participant’s Takaful Fund (PTF)", Normal_font));
            //R2C1 = new PdfPCell(p1);
            //R2C1.Border = 0;
            //Row1.AddCell(R2C1);

            //Phrase p2 = new Phrase();
            //p2.Add(new Chunk("2.   And", Normal_font));
            //p2.Add(new Chunk(" Named participant ", Bold_font));
            //p2.Add(new Chunk(" as mentioned in the Schedule (hereinafter referred to as the “Insured” ) ", Normal_font));
            //R2C1 = new PdfPCell(p2);
            //R2C1.Border = 0;
            //Row1.AddCell(R2C1);


            #region Line4

            R2C1 = new PdfPCell((new Phrase(new Chunk("1", Normal_font))));
            R2C1.Border = 0;
            Row1.AddCell(R2C1);

            Phrase p1 = new Phrase();
            p1.Add(new Chunk("Al Madina Insurance Co. (S.A.O.G)", Bold_font));
            p1.Add(new Chunk(" an Omani Company incorporated under the laws of Sultanate of Oman (hereinafter referred to as the “Company” / “First Party”), and acting as an Agent/Wakeel & Mudharib for the Participant’s Takaful Fund (PTF)", Normal_font));
            R2C1 = new PdfPCell(p1);


            R2C1 = new PdfPCell(p1);
            R2C1.Border = 0;
            Row1.AddCell(R2C1);

            #endregion Line4

            #region Line5

            R2C1 = new PdfPCell((new Phrase(new Chunk("2", Normal_font))));
            R2C1.Border = 0;
            Row1.AddCell(R2C1);

            Phrase p2 = new Phrase();
            p2.Add(new Chunk("And", Normal_font));
            p2.Add(new Chunk(" Named participant ", Bold_font));
            p2.Add(new Chunk(" as mentioned in the Schedule (hereinafter referred to as the “Insured” ) ", Normal_font));
            R2C1 = new PdfPCell(p2);

            R2C1.Border = 0;
            Row1.AddCell(R2C1);

            #endregion Line5


            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 5;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace

            Phrase R1_P2 = new Phrase();
            R1_P2.Add(new Chunk("The first party Al Madina Insurance Co. (S.A.O.G) is a Company acting subject to the Islamic Shariah, as an agent for the insured persons to manage insurance operations for fixed agency fees and investing their funds as a “Mudharib” against fixed percentage of the return thereof.", Normal_font));
            R2C1 = new PdfPCell(R1_P2);
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            //R2C1.AddElement(R1_P2);
            Row1.AddCell(R2C1);

            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 5;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace

            Phrase p3 = new Phrase();
            p3.Add(new Chunk("Whereas the Contributor (Insured)  ", Bold_font));
            p3.Add(new Chunk(" named in the Schedule hereto has made to the Al Madina Insurance Co. (S.A.O.G) (Hereinafter called “the Company”) a written proposal by completing a questionnaire which, together with any other statement made in writing by the Insured for the purpose of this Policy, is deemed to be incorporated herein.", Normal_font));
            R2C1 = new PdfPCell(p3);
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            //R2C1.AddElement(p3);
            Row1.AddCell(R2C1);


            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 5;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace

            Phrase p4 = new Phrase();
            p4.Add(new Chunk("POLICY NUMBER    :  ", SubHead_font));
            p4.Add(new Chunk(" P/004/11/19/3301/00001", SubHead_font));
            R2C1 = new PdfPCell();
            R2C1.Border = 0;
            R2C1.AddElement(p4);
            R2C1.Colspan = 2;
            Row1.AddCell(R2C1);

            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 5;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace


            Phrase p5 = new Phrase();
            p5.Add(new Chunk("IT IS DECLARED  ", Bold_font));
            p5.Add(new Chunk(" that in consideration of the payment of the first Premium and on condition that the subsequent Premium be paid in accordance with the provisions of the Second Schedule, the MEMBERS SHALL BE ENTITLED TO receive from the Company Life benefits as described in the Third Schedule or in any endorsements attached hereto always provided that this Policy should be subjected to the conditions stated in the Second Schedule hereto and any conditions and provisions endorsed or written hereon and signed for the Company as being relative hereto.", Normal_font));
            R2C1 = new PdfPCell(p5);
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            //R2C1.AddElement(p5);
            Row1.AddCell(R2C1);

            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 10;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace

            Phrase p6 = new Phrase();
            p6.Add(new Chunk("All terms, conditions and exclusions as per our standard Policy & Endorsement wording attached.", Bold_font));
            R2C1 = new PdfPCell();
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            R2C1.AddElement(p6);
            Row1.AddCell(R2C1);

            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 10;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace


            R2C1 = new PdfPCell((new Phrase(new Chunk("Signed for & on behalf of", Normal_font))));
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            Row1.AddCell(R2C1);

            R2C1 = new PdfPCell((new Phrase(new Chunk("AL MADINA INSURANCE CO SAOG", Bold_font))));
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            Row1.AddCell(R2C1);


            #region Emptyspace
            P1_C2 = new PdfPCell();
            P1_C2.MinimumHeight = 40;
            P1_C2.Border = 0;
            P1_C2.Colspan = 2;
            Row1.AddCell(P1_C2);
            #endregion Emptyspace

            R2C1 = new PdfPCell((new Phrase(new Chunk("Authorized Signatory", Bold_font))));
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            Row1.AddCell(R2C1);

            R2C1 = new PdfPCell((new Phrase(new Chunk("Place:  Muscat,", Bold_font))));
            R2C1.Border = 0;
            R2C1.Colspan = 2;
            Row1.AddCell(R2C1);

            //Phrase p7 = new Phrase();
            //p7.Add(new Chunk("Date: ", Bold_font));
            //p7.Add(new Chunk("  07/01/2021", Normal_font));
            //R2C1 = new PdfPCell();
            //R2C1.Border = 0;
            //R2C1.AddElement(p7);
            //Row1.AddCell(R2C1);
            doc.Add(Row1);


            PdfPTable Row2 = new PdfPTable(2);
            float[] Row2Width = new float[] { 7, 93 };
            Row2.SetWidths(Row2Width);
            PdfPCell R3C1 = new PdfPCell((new Phrase(new Chunk("Date: ", Bold_font))));
            R3C1.Border = 0;
            Row2.AddCell(R3C1);

            PdfPCell R3C2 = new PdfPCell((new Phrase(new Chunk("07/01/2021", Bold_font))));
            R3C2.Border = 0;
            Row2.AddCell(R3C2);
            doc.Add(Row2);

            PdfPTable Row3 = new PdfPTable(1);
            float[] Row3Width = new float[] { 100 };
            Row3.SetWidths(Row3Width);

            #region Emptyspace
            PdfPCell P3_C2 = new PdfPCell();
            P3_C2.MinimumHeight = 10;
            P3_C2.Border = 0;
            Row3.AddCell(P3_C2);
            #endregion Emptyspace

            PdfPCell R4C1 = new PdfPCell((new Phrase(new Chunk("Kindly check the contents of this policy and its enclosures carefully and revert if any changes required within 15 days of issue. In the absence of any comment and/or advice from you to the contrary, we consider that it reflects precisely your instructions and requirements.", Small_font))));
            R4C1.Border = 0;
            Row3.AddCell(R4C1);

            doc.Add(Row3);

            //Paragraph paragraph = new Paragraph(" 2.	And", Normal_font);
            //paragraph.Add(new Phrase("    \u2022  \u00a0" + "Al Madina Insurance Co. (S.A.O.G)" + "\n", Bold_font));
            //paragraph.Add(new Phrase(" " + "an Omani Company incorporated under the laws of Sultanate of Oman (hereinafter referred to as the “Company” / “First Party”), and acting as an Agent/Wakeel & Mudharib for the Participant’s Takaful Fund (PTF)" + "\n", Normal_font));
            //Row1.AddCell(paragraph);
            //doc.Add(Row1);

            #endregion

            doc.NewPage();

            #region 2nd Page

            PdfPTable P2_T1 = new PdfPTable(3);
            float[] P2_Row1Width = new float[] { 25, 15, 60 };
            P2_T1.SetWidths(P2_Row1Width);


            PdfPCell P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("FIRST SCHEDULE", SubHead_font))));
            P2_R1_C1.PaddingTop = 50;
            P2_R1_C1.Border = 0;
            P2_R1_C1.Colspan = 3;
            P2_T1.AddCell(P2_R1_C1);

            //PdfPCell P2_R1_C2 = new PdfPCell((new Phrase(new Chunk("07/01/2021", Bold_font))));
            //P2_R1_C2.Border = 0;
            //P2_T1.AddCell(P2_R1_C2);
            //doc.Add(P2_T1);



            #region Emptyspace
            PdfPCell P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);
            #endregion Emptyspace

            #region Line1

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("THE GRANTEES", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("M/s. RABEE ALSHIMAL ALMUTHAEDA", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line1

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line2

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("DATE OF PROPOSAL & DECLARATION", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("01.04.2021", Normal_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line2

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line3

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("THE SCHEME ", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("Group Life Benefits Scheme", Normal_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line3

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line4

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("PARTICIPANT", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            //P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("Employees of M/s. RABEE ALSHIMAL ALMUTHAEDA", Normal_font))));
            //P2_R1_C1.Border = 0;
            //P2_T1.AddCell(P2_R1_C1);

            Phrase P2_p1 = new Phrase();
            P2_p1.Add(new Chunk("Employees of ", Normal_font));
            P2_p1.Add(new Chunk("M/s. RABEE ALSHIMAL ALMUTHAEDA", Bold_font));
            P2_R1_C1 = new PdfPCell();
            P2_R1_C1.Border = 0;
            P2_R1_C1.AddElement(P2_p1);
            P2_T1.AddCell(P2_R1_C1);



            #endregion Line4

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line5

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("MAIN RESIDENCE", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("Sultanate of Oman", Normal_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line5

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line6

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("GEOGRAPHICAL LIMITS", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("Worldwide", Normal_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line6

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            #region Line7

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("BENEFICIARY", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            P2_R1_C1 = new PdfPCell((new Phrase(new Chunk("The Grantees on behalf of their employees or their legal dependents.", Normal_font))));
            P2_R1_C1.Border = 0;
            P2_T1.AddCell(P2_R1_C1);

            #endregion Line7

            P2_R1_C0 = new PdfPCell();
            P2_R1_C0.MinimumHeight = 30;
            P2_R1_C0.Border = 0;
            P2_R1_C0.Colspan = 3;
            P2_T1.AddCell(P2_R1_C0);

            doc.Add(P2_T1);

            #endregion 2nd Page

            doc.NewPage();

            #region 3rd Page

            PdfPTable P3_T1 = new PdfPTable(6);
            //float[] P3_Row1Width = new float[] {5,15, 20,5, 55 };
            float[] P3_Row1Width = new float[] { 5, 5, 5, 25, 5, 55 };
            P3_T1.SetWidths(P3_Row1Width);

            #region Line1

            PdfPCell P3_R1_C1 = new PdfPCell((new Phrase(new Chunk("SECOND SCHEDULE", SubHead_font))));
            P3_R1_C1.PaddingTop = 60;
            P3_R1_C1.Border = 0;
            P3_R1_C1.Colspan = 6;
            P3_T1.AddCell(P3_R1_C1);

            #endregion Line1
            #region Line2
            PdfPCell P3_R2_C1 = new PdfPCell((new Phrase(new Chunk("1", Normal_font))));
            P3_R2_C1.PaddingTop = 20;
            P3_R2_C1.Border = 0;
            P3_T1.AddCell(P3_R2_C1);

            PdfPCell P3_R2_C2 = new PdfPCell((new Phrase(new Chunk("In this Scheme the following words and phrases shall have the following meanings hereby assigned to them:", Normal_font))));
            P3_R2_C2.PaddingTop = 20;
            P3_R2_C2.Border = 0;
            P3_R2_C2.Colspan = 5;
            P3_T1.AddCell(P3_R2_C2);
            #endregion Line2


            #region line3

            PdfPCell P3_R3_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R3_C1.PaddingTop = 16;
            P3_R3_C1.Border = 0;
            P3_T1.AddCell(P3_R3_C1);

            PdfPCell P3_R3_C2 = new PdfPCell((new Phrase(new Chunk("THE GRANTEE", Bold_font))));
            P3_R3_C2.PaddingTop = 16;
            P3_R3_C2.Border = 0;
            P3_R3_C2.Colspan = 3;
            P3_T1.AddCell(P3_R3_C2);

            PdfPCell P3_R3_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R3_C3.PaddingTop = 20;
            P3_R3_C3.Border = 0;
            P3_T1.AddCell(P3_R3_C3);

            PdfPCell P3_R3_C4 = new PdfPCell((new Phrase(new Chunk("Shall mean the participants described in the first schedule or any assignees of the participants under or an assigned of which the company shall have notice.", Normal_font))));
            P3_R3_C4.PaddingTop = 16;
            P3_R3_C4.Border = 0;
            //P3_R3_C4.HorizontalAlignment = 1; //1-center
            P3_T1.AddCell(P3_R3_C4);
            #endregion line3

            #region line4

            PdfPCell P3_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R4_C1.PaddingTop = 16;
            P3_R4_C1.Border = 0;
            P3_T1.AddCell(P3_R4_C1);

            PdfPCell P3_R4_C2 = new PdfPCell((new Phrase(new Chunk("THE SCHEME", Bold_font))));
            P3_R4_C2.PaddingTop = 16;
            P3_R4_C2.Border = 0;
            P3_R4_C2.Colspan = 3;
            P3_T1.AddCell(P3_R4_C2);

            PdfPCell P3_R4_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R4_C3.PaddingTop = 16;
            P3_R4_C3.Border = 0;
            P3_T1.AddCell(P3_R4_C3);

            PdfPCell P3_R4_C4 = new PdfPCell((new Phrase(new Chunk("As described in the First Schedule.", Normal_font))));
            P3_R4_C4.PaddingTop = 16;
            P3_R4_C4.Border = 0;
            P3_T1.AddCell(P3_R4_C4);
            #endregion line4

            #region line5

            PdfPCell P3_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R5_C1.PaddingTop = 16;
            P3_R5_C1.Border = 0;
            P3_T1.AddCell(P3_R5_C1);

            PdfPCell P3_R5_C2 = new PdfPCell((new Phrase(new Chunk("A MEMBER", Bold_font))));
            P3_R5_C2.PaddingTop = 16;
            P3_R5_C2.Border = 0;
            P3_R5_C2.Colspan = 3;
            P3_T1.AddCell(P3_R5_C2);

            PdfPCell P3_R5_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R5_C3.PaddingTop = 16;
            P3_R5_C3.Border = 0;
            P3_T1.AddCell(P3_R5_C3);

            PdfPCell P3_R5_C4 = new PdfPCell((new Phrase(new Chunk("Any Person who is included in the Scheme", Normal_font))));
            P3_R5_C4.PaddingTop = 16;
            P3_R5_C4.Border = 0;
            P3_T1.AddCell(P3_R5_C4);
            #endregion line5

            #region line6

            PdfPCell P3_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R6_C1.PaddingTop = 16;
            P3_R6_C1.Border = 0;
            P3_T1.AddCell(P3_R6_C1);

            PdfPCell P3_R6_C2 = new PdfPCell((new Phrase(new Chunk("COMMENCEMENT DATE", Bold_font))));
            P3_R6_C2.PaddingTop = 16;
            P3_R6_C2.Border = 0;
            P3_R6_C2.Colspan = 3;
            P3_T1.AddCell(P3_R6_C2);

            PdfPCell P3_R6_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R6_C3.PaddingTop = 16;
            P3_R6_C3.Border = 0;
            P3_T1.AddCell(P3_R6_C3);


            Phrase P3_R6_P = new Phrase();
            P3_R6_P.Add(new Chunk("01.04.2021  ", Normal_font));
            P3_R6_P.Add(new Chunk("to ", Normal_font));
            P3_R6_P.Add(new Chunk("01.04.2022", Normal_font));

            PdfPCell P3_R6_C4 = new PdfPCell(P3_R6_P);
            P3_R6_C4.PaddingTop = 16;
            P3_R6_C4.Border = 0;
            P3_T1.AddCell(P3_R6_C4);
            #endregion line6

            #region line7

            PdfPCell P3_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R7_C1.PaddingTop = 16;
            P3_R7_C1.Border = 0;
            P3_T1.AddCell(P3_R7_C1);

            PdfPCell P3_R7_C2 = new PdfPCell((new Phrase(new Chunk("SCHEME ANNIVERSARY", Bold_font))));
            P3_R7_C2.PaddingTop = 16;
            P3_R7_C2.Border = 0;
            P3_R7_C2.Colspan = 3;
            P3_T1.AddCell(P3_R7_C2);

            PdfPCell P3_R7_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R7_C3.PaddingTop = 16;
            P3_R7_C3.Border = 0;
            P3_T1.AddCell(P3_R7_C3);

            PdfPCell P3_R7_C4 = new PdfPCell((new Phrase(new Chunk("01.04.2022", Normal_font))));
            P3_R7_C4.PaddingTop = 16;
            P3_R7_C4.Border = 0;
            P3_T1.AddCell(P3_R7_C4);
            #endregion line7

            #region line8

            PdfPCell P3_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R8_C1.PaddingTop = 16;
            P3_R8_C1.Border = 0;
            P3_T1.AddCell(P3_R8_C1);

            PdfPCell P3_R8_C2 = new PdfPCell((new Phrase(new Chunk("SCHEME YEAR", Bold_font))));
            P3_R8_C2.PaddingTop = 16;
            P3_R8_C2.Border = 0;
            P3_R8_C2.Colspan = 3;
            P3_T1.AddCell(P3_R8_C2);

            PdfPCell P3_R8_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R8_C3.PaddingTop = 16;
            P3_R8_C3.Border = 0;
            P3_T1.AddCell(P3_R8_C3);

            PdfPCell P3_R8_C4 = new PdfPCell((new Phrase(new Chunk("Shall be of any period of twelve months commencing at any Scheme Anniversary.", Normal_font))));
            P3_R8_C4.PaddingTop = 16;
            P3_R8_C4.Border = 0;
            P3_T1.AddCell(P3_R8_C4);
            #endregion line8

            #region line9

            PdfPCell P3_R9_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R9_C1.PaddingTop = 16;
            P3_R9_C1.Border = 0;
            P3_T1.AddCell(P3_R9_C1);

            PdfPCell P3_R9_C2 = new PdfPCell((new Phrase(new Chunk("REVISION DATE", Bold_font))));
            P3_R9_C2.PaddingTop = 16;
            P3_R9_C2.Border = 0;
            P3_R9_C2.Colspan = 3;
            P3_T1.AddCell(P3_R9_C2);

            PdfPCell P3_R9_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R9_C3.PaddingTop = 16;
            P3_R9_C3.Border = 0;
            P3_T1.AddCell(P3_R9_C3);


            Phrase P3_R9_P = new Phrase();
            P3_R9_P.Add(new Chunk("01.04.2022", Normal_font));
            P3_R9_P.Add(new Chunk("or if total numbers of scheme fall / rise by 20%, whichever is earlier. Addition / deletion will be subject to revision in terms.", Normal_font));

            PdfPCell P3_R9_C4 = new PdfPCell(P3_R9_P);
            P3_R9_C4.PaddingTop = 16;
            P3_R9_C4.Border = 0;
            P3_T1.AddCell(P3_R9_C4);
            #endregion line9

            #region line10

            PdfPCell P3_R10_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R10_C1.PaddingTop = 16;
            P3_R10_C1.Border = 0;
            P3_T1.AddCell(P3_R10_C1);

            PdfPCell P3_R10_C2 = new PdfPCell((new Phrase(new Chunk("NORMAL RETIREMENT AGE ", Bold_font))));
            P3_R10_C2.PaddingTop = 16;
            P3_R10_C2.Border = 0;
            P3_R10_C2.Colspan = 3;
            P3_T1.AddCell(P3_R10_C2);

            PdfPCell P3_R10_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R10_C3.PaddingTop = 16;
            P3_R10_C3.Border = 0;
            P3_T1.AddCell(P3_R10_C3);

            PdfPCell P3_R10_C4 = new PdfPCell((new Phrase(new Chunk("65th Birthday", Normal_font))));
            P3_R10_C4.PaddingTop = 16;
            P3_R10_C4.Border = 0;
            P3_T1.AddCell(P3_R10_C4);
            #endregion line10

            #region line11

            PdfPCell P3_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R11_C1.PaddingTop = 16;
            P3_R11_C1.Border = 0;
            P3_T1.AddCell(P3_R11_C1);

            PdfPCell P3_R11_C2 = new PdfPCell((new Phrase(new Chunk("THE NORMAL INCLUSION DATE", Bold_font))));
            P3_R11_C2.PaddingTop = 16;
            P3_R11_C2.Border = 0;
            P3_R11_C2.Colspan = 3;
            P3_T1.AddCell(P3_R11_C2);

            PdfPCell P3_R11_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R11_C3.PaddingTop = 16;
            P3_R11_C3.Border = 0;
            P3_T1.AddCell(P3_R11_C3);

            PdfPCell P3_R11_C4 = new PdfPCell((new Phrase(new Chunk("The first date on which an employee has the right to be included in the Scheme.", Normal_font))));
            P3_R11_C4.PaddingTop = 16;
            P3_R11_C4.Border = 0;
            P3_T1.AddCell(P3_R11_C4);
            #endregion line11

            #region line12

            PdfPCell P3_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R12_C1.PaddingTop = 16;
            P3_R12_C1.Border = 0;
            P3_T1.AddCell(P3_R12_C1);

            PdfPCell P3_R12_C2 = new PdfPCell((new Phrase(new Chunk("THE DATE OF ENTRY", Bold_font))));
            P3_R12_C2.PaddingTop = 16;
            P3_R12_C2.Border = 0;
            P3_R12_C2.Colspan = 3;
            P3_T1.AddCell(P3_R12_C2);

            PdfPCell P3_R12_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R12_C3.PaddingTop = 16;
            P3_R12_C3.Border = 0;
            P3_T1.AddCell(P3_R12_C3);

            PdfPCell P3_R12_C4 = new PdfPCell((new Phrase(new Chunk("Shall mean the date on which the member is first included in the Scheme.", Normal_font))));
            P3_R12_C4.PaddingTop = 16;
            P3_R12_C4.Border = 0;
            P3_T1.AddCell(P3_R12_C4);
            #endregion line12

            #region line13

            PdfPCell P3_R13_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R13_C1.PaddingTop = 16;
            P3_R13_C1.Border = 0;
            P3_T1.AddCell(P3_R13_C1);

            PdfPCell P3_R13_C2 = new PdfPCell((new Phrase(new Chunk("THE SCHEME", Bold_font))));
            P3_R13_C2.PaddingTop = 16;
            P3_R13_C2.Border = 0;
            P3_R13_C2.Colspan = 3;
            P3_T1.AddCell(P3_R13_C2);

            PdfPCell P3_R13_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R13_C3.PaddingTop = 16;
            P3_R13_C3.Border = 0;
            P3_T1.AddCell(P3_R13_C3);

            Phrase P3_R13_P = new Phrase();
            P3_R13_P.Add(new Chunk("Shall mean the Policy No. ", Normal_font));
            P3_R13_P.Add(new Chunk("P/004/04/18/3301/00005 ", Bold_font));
            P3_R13_P.Add(new Chunk("together with any endorsements issued by the Company for attachment hereto.", Normal_font));



            PdfPCell P3_R13_C4 = new PdfPCell(P3_R13_P);
            P3_R13_C4.PaddingTop = 16;
            P3_R13_C4.Border = 0;
            P3_T1.AddCell(P3_R13_C4);
            #endregion line13

            #region line14

            PdfPCell P3_R14_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R14_C1.PaddingTop = 16;
            P3_R14_C1.Border = 0;
            P3_T1.AddCell(P3_R14_C1);

            PdfPCell P3_R14_C2 = new PdfPCell((new Phrase(new Chunk("THE DATE OF ENTRY:", Bold_font))));
            P3_R14_C2.PaddingTop = 16;
            P3_R14_C2.Border = 0;
            P3_R14_C2.Colspan = 3;
            P3_T1.AddCell(P3_R14_C2);

            PdfPCell P3_R14_C3 = new PdfPCell((new Phrase(new Chunk(":", Bold_font))));
            P3_R14_C3.PaddingTop = 16;
            P3_R14_C3.Border = 0;
            P3_T1.AddCell(P3_R14_C3);

            PdfPCell P3_R14_C4 = new PdfPCell((new Phrase(new Chunk("Shall mean the date on which the member is first included in the Scheme.", Normal_font))));
            P3_R14_C4.PaddingTop = 16;
            P3_R14_C4.Border = 0;
            P3_T1.AddCell(P3_R14_C4);
            #endregion line14


            #region Line15
            PdfPCell P3_R15_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R15_C1.PaddingTop = 10;
            P3_R15_C1.Border = 0;
            P3_T1.AddCell(P3_R15_C1);

            PdfPCell P3_R15_C2 = new PdfPCell((new Phrase(new Chunk("In this scheme, where the context admits, words importing the masculine gender shall include the feminine gender and words importing the singular number shall include the plural and vice versa.", Normal_font))));
            P3_R15_C2.PaddingTop = 10;
            P3_R15_C2.Border = 0;
            P3_R15_C2.Colspan = 5;
            P3_T1.AddCell(P3_R15_C2);
            #endregion Line15

            #region Line16
            PdfPCell P3_R16_C1 = new PdfPCell((new Phrase(new Chunk("2", Normal_font))));
            P3_R16_C1.PaddingTop = 10;
            P3_R16_C1.Border = 0;
            P3_T1.AddCell(P3_R16_C1);

            PdfPCell P3_R16_C2 = new PdfPCell((new Phrase(new Chunk("A member shall be included in this scheme on the date on which he becomes a member of the scheme without the provision of medical or other evidence of his insurability being required except as provided in any one or more of the following clauses which may apply to the member:", Normal_font))));
            P3_R16_C2.PaddingTop = 10;
            P3_R16_C2.Border = 0;
            P3_R16_C2.Colspan = 5;
            P3_T1.AddCell(P3_R16_C2);
            #endregion Line16

            #region Line17
            PdfPCell P3_R17_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R17_C1.PaddingTop = 16;
            P3_R17_C1.Border = 0;
            P3_R17_C1.Colspan = 2;
            P3_T1.AddCell(P3_R17_C1);

            PdfPCell P3_R17_C2 = new PdfPCell((new Phrase(new Chunk("a", Normal_font))));
            P3_R17_C2.PaddingTop = 16;
            P3_R17_C2.Border = 0;
            P3_T1.AddCell(P3_R17_C2);


            Phrase P3_R17_P = new Phrase();
            P3_R17_P.Add(new Chunk("Any Life benefit of a member in excess of", Normal_font));
            P3_R17_P.Add(new Chunk(" R.O 5,000/-", Bold_font));
            P3_R17_P.Add(new Chunk(" (hereinafter called the", Normal_font));
            P3_R17_P.Add(new Chunk(" Free Cover Limit) or", Bold_font));
            P3_R17_P.Add(new Chunk(" in excess of the normal life assurance benefit applicable to the member in accordance with the provisions of the Third Schedule, will be subject to acceptance by the Company.", Normal_font));

            PdfPCell P3_R17_C3 = new PdfPCell(P3_R17_P);
            P3_R17_C3.PaddingTop = 16;
            P3_R17_C3.Border = 0;
            P3_R17_C3.Colspan = 3;
            P3_T1.AddCell(P3_R17_C3);
            #endregion Line17

            #region Line18
            PdfPCell P3_R18_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P3_R18_C1.PaddingTop = 16;
            P3_R18_C1.Border = 0;
            P3_R18_C1.Colspan = 2;
            P3_T1.AddCell(P3_R18_C1);

            PdfPCell P3_R18_C2 = new PdfPCell((new Phrase(new Chunk("b", Normal_font))));
            P3_R18_C2.PaddingTop = 16;
            P3_R18_C2.Border = 0;
            P3_T1.AddCell(P3_R18_C2);


            PdfPCell P3_R18_C3 = new PdfPCell(new Phrase(new Chunk("If any member is not actively at work or on normal leave on the Normal Inclusion Date his Life benefit will not come into force until he has returned to work and has been actively employed for a continuous period of at least two weeks to validate cover. and may be subject to the production to the Company of such evidence of the member’s insurability as the Company may require.", Normal_font)));
            P3_R18_C3.PaddingTop = 16;
            P3_R18_C3.Border = 0;
            P3_R18_C3.Colspan = 3;
            P3_T1.AddCell(P3_R18_C3);
            #endregion Line18

            doc.Add(P3_T1);
            #endregion 3rd Page

            #region Page4



            PdfPTable P4_T1 = new PdfPTable(7);
            //float[] P3_Row1Width = new float[] {5,15, 20,5, 55 };
            float[] P4_Row1Width = new float[] { 4, 4, 4, 4, 24, 5, 55 };
            P4_T1.SetWidths(P4_Row1Width);

            #region Line1

            PdfPCell P4_R1_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R1_C1.PaddingTop = 16;
            P4_R1_C1.Border = 0;
            P4_R1_C1.Colspan = 2;
            P4_T1.AddCell(P4_R1_C1);

            PdfPCell P4_R1_C2 = new PdfPCell((new Phrase(new Chunk("c", Normal_font))));
            P4_R1_C2.PaddingTop = 16;
            P4_R1_C2.Border = 0;
            P4_T1.AddCell(P4_R1_C2);


            PdfPCell P4_R1_C3 = new PdfPCell(new Phrase(new Chunk("If, in respect of the member, the Date of Entry is not the Normal Inclusion Date, any Life benefits of the member will be subject to acceptance by the Company provided that", Normal_font)));
            P4_R1_C3.PaddingTop = 16;
            P4_R1_C3.Border = 0;
            P4_R1_C3.Colspan = 4;
            P4_T1.AddCell(P4_R1_C3);

            #endregion Line1

            #region Line2

            PdfPCell P4_R2_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R2_C1.PaddingTop = 16;
            P4_R2_C1.Border = 0;
            P4_R2_C1.Colspan = 3;
            P4_T1.AddCell(P4_R2_C1);

            PdfPCell P4_R2_C2 = new PdfPCell((new Phrase(new Chunk("i", Normal_font))));
            P4_R2_C2.PaddingTop = 16;
            P4_R2_C2.Border = 0;
            P4_T1.AddCell(P4_R2_C2);


            PdfPCell P4_R2_C3 = new PdfPCell(new Phrase(new Chunk("Increases in Life benefit for such a member who is accepted by the Company on 	normal terms at the Date of Entry shall not be subject to further acceptance unless his benefit exceeds the free cover limit as defined in a. above ", Normal_font)));
            P4_R2_C3.PaddingTop = 16;
            P4_R2_C3.Border = 0;
            P4_R2_C3.Colspan = 3;
            P4_T1.AddCell(P4_R2_C3);

            #endregion Line2

            #region Line3
            PdfPCell P4_R3_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R3_C1.PaddingTop = 16;
            P4_R3_C1.Border = 0;
            P4_R3_C1.Colspan = 3;
            P4_T1.AddCell(P4_R3_C1);

            PdfPCell P4_R3_C2 = new PdfPCell((new Phrase(new Chunk("ii", Normal_font))));
            P4_R3_C2.PaddingTop = 16;
            P4_R3_C2.Border = 0;
            P4_T1.AddCell(P4_R3_C2);


            PdfPCell P4_R3_C3 = new PdfPCell(new Phrase(new Chunk("If the Date of Entry is before the Normal Inclusion Date, the member shall be included in the policy as from the Normal Inclusion date on terms not less favorable than would apply if he were first included on that date. ", Normal_font)));
            P4_R3_C3.PaddingTop = 16;
            P4_R3_C3.Border = 0;
            P4_R3_C3.Colspan = 3;
            P4_T1.AddCell(P4_R3_C3);
            #endregion Line3

            #region Line4
            PdfPCell P4_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R4_C1.PaddingTop = 16;
            P4_R4_C1.Border = 0;
            P4_T1.AddCell(P4_R4_C1);

            PdfPCell P4_R4_C2 = new PdfPCell((new Phrase(new Chunk("Acceptance by the Company will be subject to the production to the Company of such evidence of the member’s insurability as the Company may require.", Normal_font))));
            P4_R4_C2.PaddingTop = 16;
            P4_R4_C2.Border = 0;
            P4_R4_C2.Colspan = 6;
            P4_T1.AddCell(P4_R4_C2);
            #endregion Line4

            #region Line5
            PdfPCell P4_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R5_C1.PaddingTop = 16;
            P4_R5_C1.Border = 0;
            P4_T1.AddCell(P4_R5_C1);

            PdfPCell P4_R5_C2 = new PdfPCell((new Phrase(new Chunk("Any member not acceptable by the Company for Life benefit on normal terms in respect of the whole or any part of the benefits provided herein, may be included in this scheme on such special terms as may be agreed between the Participant and the Company.", Normal_font))));
            P4_R5_C2.PaddingTop = 16;
            P4_R5_C2.Border = 0;
            P4_R5_C2.Colspan = 6;
            P4_T1.AddCell(P4_R5_C2);
            #endregion Line5

            #region Line6
            PdfPCell P4_R6_C1 = new PdfPCell((new Phrase(new Chunk("3", Normal_font))));
            P4_R6_C1.PaddingTop = 16;
            P4_R6_C1.Border = 0;
            P4_T1.AddCell(P4_R6_C1);

            PdfPCell P4_R6_C2 = new PdfPCell((new Phrase(new Chunk("Evidence of age of a member satisfactory to the Company will be required before any benefit in respect of him is paid under this Scheme and if after commencement of the Scheme provided hereunder on the life of any member of his date of birth proves to have been incorrectly notified to the Company shall notify the Participant of the adjustments to be made under the scheme in respect of such incorrect notification.", Normal_font))));
            P4_R6_C2.PaddingTop = 16;
            P4_R6_C2.Border = 0;
            P4_R6_C2.Colspan = 6;
            P4_T1.AddCell(P4_R6_C2);
            #endregion Line6

            #region Line7
            PdfPCell P4_R7_C1 = new PdfPCell((new Phrase(new Chunk("4", Normal_font))));
            P4_R7_C1.PaddingTop = 16;
            P4_R7_C1.Border = 0;
            P4_T1.AddCell(P4_R7_C1);

            PdfPCell P4_R7_C2 = new PdfPCell((new Phrase(new Chunk("The scheme and the terms and conditions therefore shall attach and take effect in all respects as if the same had been in full force and effect on and after the Commencement Date and the rights and liabilities of the parties hereof shall be construed and take effect accordingly.", Normal_font))));
            P4_R7_C2.PaddingTop = 16;
            P4_R7_C2.Border = 0;
            P4_R7_C2.Colspan = 6;
            P4_T1.AddCell(P4_R7_C2);
            #endregion Line7

            #region Line8
            PdfPCell P4_R8_C1 = new PdfPCell((new Phrase(new Chunk("5", Normal_font))));
            P4_R8_C1.PaddingTop = 16;
            P4_R8_C1.Border = 0;
            P4_T1.AddCell(P4_R8_C1);

            PdfPCell P4_R8_C2 = new PdfPCell((new Phrase(new Chunk("On each Scheme anniversary date an annual Premium shall be calculated by the Company in respect of the scheme year commencing on that date by applying the Premium rate set out in the Third Schedule to the Total Life benefits in respect of all members whose Life benefits are covered by the scheme on that scheme anniversary.  The total annual Premium in respect of any scheme year shall be payable annually in advance on the scheme anniversary date.", Normal_font))));
            P4_R8_C2.PaddingTop = 16;
            P4_R8_C2.Border = 0;
            P4_R8_C2.Colspan = 6;
            P4_T1.AddCell(P4_R8_C2);
            #endregion Line8

            #region Line9
            PdfPCell P4_R9_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R9_C1.PaddingTop = 16;
            P4_R9_C1.Border = 0;
            P4_T1.AddCell(P4_R9_C1);

            PdfPCell P4_R9_C2 = new PdfPCell((new Phrase(new Chunk("Notwithstanding the above any extra contribution payable in respect of any member accepted by the Company other than at standard rates shall be determined by the Company.", Normal_font))));
            P4_R9_C2.PaddingTop = 16;
            P4_R9_C2.Border = 0;
            P4_R9_C2.Colspan = 6;
            P4_T1.AddCell(P4_R9_C2);
            #endregion Line9

            #region Line10
            PdfPCell P4_R10_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R10_C1.PaddingTop = 16;
            P4_R10_C1.Border = 0;
            P4_T1.AddCell(P4_R10_C1);

            PdfPCell P4_R10_C2 = new PdfPCell((new Phrase(new Chunk("Thirty days of grace are allowed for the payment of Premium under this Scheme.  If any Premium is not paid within the 30 days of grace or such extended time as the Company may allow, the amount of such Premium shall be increased by such amount as the Company may consider appropriate having regard to the period from the due date until the date of payment.", Normal_font))));
            P4_R10_C2.PaddingTop = 16;
            P4_R10_C2.Border = 0;
            P4_R10_C2.Colspan = 6;
            P4_T1.AddCell(P4_R10_C2);
            #endregion Line10

            #region Line11
            PdfPCell P4_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R11_C1.PaddingTop = 16;
            P4_R11_C1.Border = 0;
            P4_T1.AddCell(P4_R11_C1);

            PdfPCell P4_R11_C2 = new PdfPCell((new Phrase(new Chunk("Providing that if any Premium remains outstanding after the expiry of the time allowed by the Company, the Company shall have the right to cancel the scheme.", Normal_font))));
            P4_R11_C2.PaddingTop = 16;
            P4_R11_C2.Border = 0;
            P4_R11_C2.Colspan = 6;
            P4_T1.AddCell(P4_R11_C2);
            #endregion Line10

            #region Line12
            PdfPCell P4_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P4_R10_C1.PaddingTop = 16;
            P4_R10_C1.Border = 0;
            P4_T1.AddCell(P4_R10_C1);

            PdfPCell P4_R12_C2 = new PdfPCell((new Phrase(new Chunk("The Participant shall then pay a proportion of the Premium to cover the period to the date of cancellation.", Normal_font))));
            P4_R12_C2.PaddingTop = 16;
            P4_R12_C2.Border = 0;
            P4_R12_C2.Colspan = 6;
            P4_T1.AddCell(P4_R12_C2);
            #endregion Line12

            doc.Add(P4_T1);
            #endregion Page4

            doc.NewPage();

            #region Page5


            PdfPTable P5_T1 = new PdfPTable(2);
            //float[] P3_Row1Width = new float[] {5,15, 20,5, 55 };
            float[] P5_Row1Width = new float[] { 4, 96 };
            P5_T1.SetWidths(P5_Row1Width);

            #region Line1
            PdfPCell P5_R1_C1 = new PdfPCell((new Phrase(new Chunk("6", Normal_font))));
            P5_R1_C1.PaddingTop = 20;
            P5_R1_C1.Border = 0;
            P5_T1.AddCell(P5_R1_C1);

            PdfPCell P5_R1_C2 = new PdfPCell((new Phrase(new Chunk("The rate(s) of Premium specified in the Third Schedule shall be applicable until the Revision Date. On each Revision Date the Company shall advise the Participant of the rate(s) of Premium to apply during the ensuing period, subject always to Provision Number 7 below.  The Premium rates in respect of any additional accident or disability benefits are guaranteed for one year only.", Normal_font))));
            P5_R1_C2.PaddingTop = 20;
            P5_R1_C2.Border = 0;
            P5_T1.AddCell(P5_R1_C2);
            #endregion Line1

            #region Line2
            PdfPCell P5_R2_C1 = new PdfPCell((new Phrase(new Chunk("7", Normal_font))));
            P5_R2_C1.PaddingTop = 18;
            P5_R2_C1.Border = 0;
            P5_T1.AddCell(P5_R2_C1);

            PdfPCell P5_R2_C2 = new PdfPCell((new Phrase(new Chunk("The Company reserves the right to vary the terms and provisions of this scheme on any Revision Date provided that an amendment may be made at any time, in the event of any or all the following occurring:", Normal_font))));
            P5_R2_C2.PaddingTop = 18;
            P5_R2_C2.Border = 0;
            P5_T1.AddCell(P5_R2_C2);
            #endregion Line2

            #region Line3
            PdfPCell P5_R3_C1 = new PdfPCell((new Phrase(new Chunk("a", Normal_font))));
            P5_R3_C1.PaddingTop = 18;
            P5_R3_C1.Border = 0;
            P5_T1.AddCell(P5_R3_C1);

            PdfPCell P5_R3_C2 = new PdfPCell((new Phrase(new Chunk("If there is a change in the basis used for calculating the benefits under the Scheme.", Normal_font))));
            P5_R3_C2.PaddingTop = 18;
            P5_R3_C2.Border = 0;
            P5_T1.AddCell(P5_R3_C2);
            #endregion Line3

            #region Line4
            PdfPCell P5_R4_C1 = new PdfPCell((new Phrase(new Chunk("b", Normal_font))));
            P5_R4_C1.PaddingTop = 18;
            P5_R4_C1.Border = 0;
            P5_T1.AddCell(P5_R4_C1);

            PdfPCell P5_R4_C2 = new PdfPCell((new Phrase(new Chunk("If there is a change in the eligibility conditions for entering into the Scheme.", Normal_font))));
            P5_R4_C2.PaddingTop = 18;
            P5_R4_C2.Border = 0;
            P5_T1.AddCell(P5_R4_C2);
            #endregion Line4

            #region Line5
            PdfPCell P5_R5_C1 = new PdfPCell((new Phrase(new Chunk("c", Normal_font))));
            P5_R5_C1.PaddingTop = 18;
            P5_R5_C1.Border = 0;
            P5_T1.AddCell(P5_R5_C1);

            PdfPCell P5_R5_C2 = new PdfPCell((new Phrase(new Chunk("If an additional participant is admitted to the Scheme, a participant withdraws from the Scheme, or there is a change to whichever participant is the principal participant.", Normal_font))));
            P5_R5_C2.PaddingTop = 18;
            P5_R5_C2.Border = 0;
            P5_T1.AddCell(P5_R5_C2);
            #endregion Line5

            #region Line6
            PdfPCell P5_R6_C1 = new PdfPCell((new Phrase(new Chunk("d", Normal_font))));
            P5_R6_C1.PaddingTop = 18;
            P5_R6_C1.Border = 0;
            P5_T1.AddCell(P5_R6_C1);

            PdfPCell P5_R6_C2 = new PdfPCell((new Phrase(new Chunk("If the total number of members of the Scheme falls by 20% or increased by 20%.", Normal_font))));
            P5_R6_C2.PaddingTop = 18;
            P5_R6_C2.Border = 0;
            P5_T1.AddCell(P5_R6_C2);
            #endregion Line6

            #region Line7
            PdfPCell P5_R7_C1 = new PdfPCell((new Phrase(new Chunk("8", Normal_font))));
            P5_R7_C1.PaddingTop = 18;
            P5_R7_C1.Border = 0;
            P5_T1.AddCell(P5_R7_C1);

            PdfPCell P5_R7_C2 = new PdfPCell((new Phrase(new Chunk("a)	   The cover on a member shall terminate on the date on which he ceases to be actively employed by the Participant except that, subject to the continued payment of contributions, the cover in respect of a member shall continue  :", Normal_font))));
            P5_R7_C2.PaddingTop = 18;
            P5_R7_C2.Border = 0;
            P5_T1.AddCell(P5_R7_C2);
            #endregion Line7

            #region Line8
            PdfPCell P5_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P5_R8_C1.PaddingTop = 18;
            P5_R8_C1.Border = 0;
            P5_T1.AddCell(P5_R8_C1);

            PdfPCell P5_R8_C2 = new PdfPCell((new Phrase(new Chunk("(i)	   In the event of temporary suspension or if leave of absence has been granted for a reason other than ill health or disablement, for a maximum period of 30 days.", Normal_font))));
            P5_R8_C2.PaddingTop = 18;
            P5_R8_C2.Border = 0;
            P5_T1.AddCell(P5_R8_C2);
            #endregion Line8

            #region Line9
            PdfPCell P5_R9_C1 = new PdfPCell((new Phrase(new Chunk("or", Normal_font))));
            P5_R9_C1.PaddingTop = 18;
            P5_R9_C1.HorizontalAlignment = Element.ALIGN_CENTER;
            P5_R9_C1.Border = 0;
            P5_R9_C1.Colspan = 2;
            P5_T1.AddCell(P5_R9_C1);
            #endregion Line9

            #region Line10
            PdfPCell P5_R10_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P5_R10_C1.PaddingTop = 18;
            P5_R10_C1.Border = 0;
            P5_T1.AddCell(P5_R10_C1);

            PdfPCell P5_R10_C2 = new PdfPCell((new Phrase(new Chunk("(ii)	   If the absence was caused by ill health or disablement for so long as the member is regarded as an employee of the Participant for the purposes of PASI/ National Insurance Payments / Social Security Payments/Payroll tax or similar criteria", Normal_font))));
            P5_R10_C2.PaddingTop = 18;
            P5_R10_C2.Border = 0;
            P5_T1.AddCell(P5_R10_C2);
            #endregion Line10

            #region Line11
            PdfPCell P5_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P5_R11_C1.PaddingTop = 18;
            P5_R11_C1.Border = 0;
            P5_T1.AddCell(P5_R11_C1);

            PdfPCell P5_R11_C2 = new PdfPCell((new Phrase(new Chunk("Provided also that the Life benefits on the member shall terminate on the date on which he ceases to be actively employed by the Participant or is engaged in or taking part in any naval, military or air force operations.", Normal_font))));
            P5_R11_C2.PaddingTop = 18;
            P5_R11_C2.Border = 0;
            P5_T1.AddCell(P5_R11_C2);
            #endregion Line11

            #region Line12
            PdfPCell P5_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P5_R12_C1.PaddingTop = 18;
            P5_R12_C1.Border = 0;
            P5_T1.AddCell(P5_R12_C1);

            PdfPCell P5_R12_C2 = new PdfPCell((new Phrase(new Chunk("b)	   Notwithstanding anything contained in section (a) of this Provision the benefit in respect of any member shall in no event continue after the member’s Normal Retirement Age or on such earlier date at which he ceases to be a member.", Normal_font))));
            P5_R12_C2.PaddingTop = 18;
            P5_R12_C2.Border = 0;
            P5_T1.AddCell(P5_R12_C2);
            #endregion Line12

            #region Line13
            PdfPCell P5_R13_C1 = new PdfPCell((new Phrase(new Chunk("9", Normal_font))));
            P5_R13_C1.PaddingTop = 18;
            P5_R13_C1.Border = 0;
            P5_T1.AddCell(P5_R13_C1);

            PdfPCell P5_R13_C2 = new PdfPCell((new Phrase(new Chunk("All benefits payable to or by the Company under this Scheme shall be paid at the principal office of the Company as set out above in Omani Riyal.  The payment by the Company to the Participant of any sum due under the scheme shall constitute a full and sufficient discharge to the Company in respect of that benefit.", Normal_font))));
            P5_R13_C2.PaddingTop = 18;
            P5_R13_C2.Border = 0;
            P5_T1.AddCell(P5_R13_C2);
            #endregion Line13



            #region Line14
            PdfPCell P5_R14_C1 = new PdfPCell((new Phrase(new Chunk("10", Normal_font))));
            P5_R14_C1.PaddingTop = 18;
            P5_R14_C1.Border = 0;
            P5_T1.AddCell(P5_R14_C1);

            PdfPCell P5_R14_C2 = new PdfPCell((new Phrase(new Chunk("The Participant shall hold the scheme and all benefits payable there under upon trust to provide the benefits under the Scheme.", Normal_font))));
            P5_R14_C2.PaddingTop = 18;
            P5_R14_C2.Border = 0;
            P5_T1.AddCell(P5_R14_C2);
            #endregion Line14

            #region Line15
            PdfPCell P5_R15_C1 = new PdfPCell((new Phrase(new Chunk("11", Normal_font))));
            P5_R15_C1.PaddingTop = 18;
            P5_R15_C1.Border = 0;
            P5_T1.AddCell(P5_R15_C1);

            PdfPCell P5_R15_C2 = new PdfPCell((new Phrase(new Chunk("The Company reserves the right at any time to require that the age of any members included in the Policy shall be proved to its satisfaction", Normal_font))));
            P5_R15_C2.PaddingTop = 18;
            P5_R15_C2.Border = 0;
            P5_T1.AddCell(P5_R15_C2);
            #endregion Line15

            #region Line16
            PdfPCell P5_R16_C1 = new PdfPCell((new Phrase(new Chunk("12", Normal_font))));
            P5_R16_C1.PaddingTop = 18;
            P5_R16_C1.Border = 0;
            P5_T1.AddCell(P5_R16_C1);

            PdfPCell P5_R16_C2 = new PdfPCell((new Phrase(new Chunk("The Participant shall furnish to the Company all such data, information and evidence as the Company may reasonably require upon or with regard to the happening of any event affecting or relating to this scheme.", Normal_font))));
            P5_R16_C2.PaddingTop = 18;
            P5_R16_C2.Border = 0;
            P5_T1.AddCell(P5_R16_C2);
            #endregion Line16

            doc.Add(P5_T1);
            #endregion Page5

            doc.NewPage();

            #region Page6

            PdfPTable P6_T1 = new PdfPTable(2);
            //float[] P3_Row1Width = new float[] {5,15, 20,5, 55 };
            float[] P6_Row1Width = new float[] { 4, 96 };
            P6_T1.SetWidths(P6_Row1Width);

            #region Line1
            PdfPCell P6_R1_C1 = new PdfPCell((new Phrase(new Chunk("13", Normal_font))));
            P6_R1_C1.PaddingTop = 50;
            P6_R1_C1.Border = 0;
            P6_T1.AddCell(P6_R1_C1);

            PdfPCell P6_R1_C2 = new PdfPCell((new Phrase(new Chunk("In the event of any claim arising under this scheme or any of the Endorsements attached hereto, it shall be notified to the Company as soon as possible but in any event not more than 30 days after the occurrence of the incident giving rise to the claim, and such supporting evidence as the company may require must also be submitted.(the claim shall be considered time barred and will not be payable if intimated after 180 days (max) from day of incident).", Normal_font))));
            P6_R1_C2.PaddingTop = 50;
            P6_R1_C2.Border = 0;
            P6_T1.AddCell(P6_R1_C2);
            #endregion Line1

            #region Line2
            PdfPCell P6_R2_C1 = new PdfPCell((new Phrase(new Chunk("14", Normal_font))));
            P6_R2_C1.PaddingTop = 10;
            P6_R2_C1.Border = 0;
            P6_T1.AddCell(P6_R2_C1);

            PdfPCell P6_R2_C2 = new PdfPCell((new Phrase(new Chunk("Jurisdiction and Applicable Laws: Omani laws ", Normal_font))));
            P6_R2_C2.PaddingTop = 10;
            P6_R2_C2.Border = 0;
            P6_T1.AddCell(P6_R2_C2);
            #endregion Line2

            #region Line3
            PdfPCell P6_R3_C1 = new PdfPCell((new Phrase(new Chunk("15", Normal_font))));
            P6_R3_C1.PaddingTop = 10;
            P6_R3_C1.Border = 0;
            P6_T1.AddCell(P6_R3_C1);

            PdfPCell P6_R3_C2 = new PdfPCell((new Phrase(new Chunk("If any difference shall arise as to the amount to be paid under this Policy (liability being otherwise admitted) such difference shall be referred to the decision of an Arbitrator to be appointed in writing by the parties in difference or if they cannot agree upon a single Arbitrator to the decision of two Arbitrators, one to be appointed in writing by each of the parties, within one calendar month after having been required in writing so to do by either of the parties, or, in case the Arbitrators do not agree, of an Umpire to be appointed in writing by the Arbitrators before entering upon the reference. The Umpire shall sit with the Arbitrators and preside at their meetings. The making of an award shall be a condition precedent to any right of action against the Company.", Normal_font))));
            P6_R3_C2.PaddingTop = 10;
            P6_R3_C2.Border = 0;
            P6_T1.AddCell(P6_R3_C2);
            #endregion Line3

            #region Line3
            PdfPCell P6_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Normal_font))));
            P6_R4_C1.PaddingTop = 10;
            P6_R4_C1.Border = 0;
            P6_T1.AddCell(P6_R4_C1);

            PdfPCell P6_R4_C2 = new PdfPCell((new Phrase(new Chunk("If a claim is in any respect fraudulent, or if any false declaration is made or used in support thereof or if any fraudulent means or devices are used by the Insured or anyone acting on his behalf to obtain any benefit under this Policy, or if a claim is made and rejected and no action or suit is commenced within three months after such rejection or, in case of arbitration taking place as provided herein, within three months after the Arbitrator or Arbitrators or Umpire have made their award, all benefit under this Policy shall be forfeited.", Normal_font))));
            P6_R4_C2.PaddingTop = 10;
            P6_R4_C2.Border = 0;
            P6_T1.AddCell(P6_R4_C2);
            #endregion Line3
            doc.Add(P6_T1);
            #endregion Page6

            doc.NewPage();

            #region Page7

            PdfPTable P7_T1 = new PdfPTable(8);
            float[] P7_Row1Width = new float[] { 25, 3, 4, 4, 17, 27, 9, 11 };
            P7_T1.SetWidths(P7_Row1Width);

            #region Line1

            PdfPCell P7_R1_C1 = new PdfPCell((new Phrase(new Chunk("THIRD SCHEDULE", SubHead_font))));
            P7_R1_C1.PaddingTop = 50;
            P7_R1_C1.PaddingLeft = 20;
            P7_R1_C1.Border = 0;
            P7_R1_C1.Colspan = 8;
            P7_T1.AddCell(P7_R1_C1);
            #endregion Line1

            #region Line2

            PdfPCell P7_R2_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P7_R2_C1.MinimumHeight = 10;
            P7_R2_C1.Border = 0;
            P7_R2_C1.Colspan = 8;
            P7_T1.AddCell(P7_R2_C1);

            #endregion Line2

            #region Line3
            PdfPCell P7_R3_C1 = new PdfPCell((new Phrase(new Chunk("Client Name", Calibri_Font))));
            P7_T1.AddCell(P7_R3_C1);
            PdfPCell P7_R3_C2 = new PdfPCell((new Phrase(new Chunk("TECHNOFIT TRADING LLC", Calibri_Font))));
            P7_R3_C2.Colspan = 7;
            P7_T1.AddCell(P7_R3_C2);
            #endregion Line3

            #region Line4
            PdfPCell P7_R4_C1 = new PdfPCell((new Phrase(new Chunk("Period of Insurance", Calibri_Font))));
            P7_T1.AddCell(P7_R4_C1);
            Phrase P7_R4_P = new Phrase();
            P7_R4_P.Add(new Chunk("01/09/2021 ", Calibri_Font));
            P7_R4_P.Add(new Chunk(" to ", Calibri_Nor_Font));
            P7_R4_P.Add(new Chunk(" 31/08/2022", Calibri_Font));

            PdfPCell P7_R4_C2 = new PdfPCell(P7_R4_P);
            P7_R4_C2.Colspan = 7;
            P7_T1.AddCell(P7_R4_C2);
            #endregion Line4

            #region Line5
            PdfPCell P7_R5_C1 = new PdfPCell((new Phrase(new Chunk("Total No of Members", Calibri_Font))));
            P7_T1.AddCell(P7_R5_C1);
            PdfPCell P7_R5_C2 = new PdfPCell((new Phrase(new Chunk("21 members", Calibri_Nor_Font))));
            P7_R5_C2.Colspan = 7;
            P7_T1.AddCell(P7_R5_C2);
            #endregion Line5

            #region Line6
            PdfPCell P7_R6_C1 = new PdfPCell((new Phrase(new Chunk("Sum Assured (SA)", Calibri_Font))));
            P7_T1.AddCell(P7_R6_C1);
            Phrase P7_R6_P = new Phrase();
            P7_R6_P.Add(new Chunk("RO.", Calibri_Font));
            P7_R6_P.Add(new Chunk("5,000", Calibri_Font));
            P7_R6_P.Add(new Chunk("/- per person", Calibri_Font));

            PdfPCell P7_R6_C2 = new PdfPCell(P7_R6_P);
            P7_R6_C2.Colspan = 7;
            P7_T1.AddCell(P7_R6_C2);
            #endregion Line6

            #region Line7
            PdfPCell P7_R7_C1 = new PdfPCell((new Phrase(new Chunk("Total Sum Insured", Calibri_Font))));
            P7_T1.AddCell(P7_R7_C1);
            Phrase P7_R7_P = new Phrase();
            P7_R7_P.Add(new Chunk("RO.", Calibri_Font));
            P7_R7_P.Add(new Chunk("105,000.000", Calibri_Font));
            P7_R7_P.Add(new Chunk("/-", Calibri_Font));

            PdfPCell P7_R7_C2 = new PdfPCell(P7_R7_P);
            P7_R7_C2.Colspan = 7;
            P7_T1.AddCell(P7_R7_C2);
            #endregion Line7

            #region Line8
            PdfPCell P7_R8_C1 = new PdfPCell((new Phrase(new Chunk("Eligibility Criteria", Calibri_Font))));
            P7_T1.AddCell(P7_R8_C1);
            PdfPCell P7_R8_C2 = new PdfPCell((new Phrase(new Chunk("All full-time permanent employees “Actively at work” on the inception of cover in the policy holders’ offices in Oman", Calibri_Nor_Font))));
            P7_R8_C2.Colspan = 7;
            P7_T1.AddCell(P7_R8_C2);
            #endregion Line8

            #region Line9
            PdfPCell P7_R9_C1 = new PdfPCell((new Phrase(new Chunk("Cover Details", Calibri_Font))));
            P7_R9_C1.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R9_C1.VerticalAlignment = Element.ALIGN_BOTTOM;
            P7_R9_C1.Colspan = 6;
            P7_T1.AddCell(P7_R9_C1);

            PdfPCell P7_R9_C2 = new PdfPCell((new Phrase(new Chunk("Rate %", Calibri_Nor_Font))));
            P7_R9_C2.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_T1.AddCell(P7_R9_C2);

            PdfPCell P7_R9_C3 = new PdfPCell((new Phrase(new Chunk("Premium (RO)", Calibri_Nor_Font))));
            P7_R9_C3.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_T1.AddCell(P7_R9_C3);
            #endregion Line9

            #region Line10
            PdfPCell P7_R10_C1 = new PdfPCell((new Phrase(new Chunk("Group Life Benefits", Calibri_Font))));
            P7_R10_C1.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R10_C1);


            //PdfPTable P7_T1_Nested = new PdfPTable(1);
            //PdfPCell P7_R10_C2_Nested = new PdfPCell((new Phrase(new Chunk("Death Due to Any Cause (DAC)", Calibri_Nor_Font))));
            //P7_T1_Nested.AddCell(P7_R10_C2_Nested);
            //P7_R10_C2_Nested = new PdfPCell((new Phrase(new Chunk("Suicide or Gross negligence ", Calibri_Nor_Font))));
            //P7_T1_Nested.AddCell(P7_R10_C2_Nested);
            //P7_R10_C2_Nested = new PdfPCell((new Phrase(new Chunk("HIV/AIDS or related conditions", Calibri_Nor_Font))));
            //P7_T1_Nested.AddCell(P7_R10_C2_Nested);

            //PdfPCell P7_R10_C2 = new PdfPCell(P7_T1_Nested);
            //P7_R10_C2.Padding = 0f;            
            //P7_R10_C2.Colspan = 4;
            //P7_T1.AddCell(P7_R10_C2);



            PdfPCell P7_R10_C2 = new PdfPCell((new Phrase(new Chunk("Death Due to Any Cause (DAC)", Calibri_Nor_Font))));
            P7_R10_C2.Colspan = 4;
            P7_T1.AddCell(P7_R10_C2);



            PdfPCell P7_R10_C3 = new PdfPCell((new Phrase(new Chunk("100% of Sum Insured", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R10_C3);

            PdfPCell P7_R10_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R10_C4.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R10_C4);

            PdfPCell P7_R10_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R10_C5.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R10_C5);

            #endregion Line10

            #region Line11
            PdfPCell P7_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P7_R11_C1.BorderWidthBottom = 0f;
            P7_R11_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R11_C1);

            PdfPCell P7_R11_C2 = new PdfPCell((new Phrase(new Chunk("Suicide or Gross negligence", Calibri_Nor_Font))));
            P7_R11_C2.Colspan = 4;
            P7_T1.AddCell(P7_R11_C2);

            PdfPCell P7_R11_C3 = new PdfPCell((new Phrase(new Chunk("Covered for DAC for existing members however 12 months waiting period for new employees ", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R11_C3);

            PdfPCell P7_R11_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R11_C4.BorderWidthBottom = 0f;
            P7_R11_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R11_C4);

            PdfPCell P7_R11_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R11_C5.BorderWidthBottom = 0f;
            P7_R11_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R11_C5);

            #endregion Line11

            #region Line12
            PdfPCell P7_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            //P7_R12_C1.BorderWidthBottom = 0f;
            P7_R12_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R12_C1);

            PdfPCell P7_R12_C2 = new PdfPCell((new Phrase(new Chunk("HIV/AIDS or related conditions", Calibri_Nor_Font))));
            P7_R12_C2.Colspan = 4;
            P7_T1.AddCell(P7_R12_C2);

            PdfPCell P7_R12_C3 = new PdfPCell((new Phrase(new Chunk("Covered ", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R12_C3);

            PdfPCell P7_R12_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R12_C4.BorderWidthBottom = 0f;
            P7_R12_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R12_C4);

            PdfPCell P7_R12_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R12_C5.BorderWidthBottom = 0f;
            P7_R12_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R12_C5);

            #endregion Line12


            #region Line13
            PdfPCell P7_R13_C1 = new PdfPCell((new Phrase(new Chunk("Permanent Total Disability (PTD)", Calibri_Font))));
            P7_R13_C1.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R13_C1);

            PdfPCell P7_R13_C2 = new PdfPCell((new Phrase(new Chunk("Due to Accident and Sickness", Calibri_Nor_Font))));
            P7_R13_C2.Colspan = 4;
            P7_T1.AddCell(P7_R13_C2);



            PdfPCell P7_R13_C3 = new PdfPCell((new Phrase(new Chunk("100% of Sum Insured", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R13_C3);

            PdfPCell P7_R13_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R13_C4.BorderWidthBottom = 0f;
            P7_R13_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R13_C4);

            PdfPCell P7_R13_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R13_C5.BorderWidthBottom = 0f;
            P7_R13_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R13_C5);

            #endregion Line13

            #region Line14
            PdfPCell P7_R14_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P7_R14_C1.BorderWidthBottom = 0f;
            P7_R14_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R14_C1);

            PdfPCell P7_R14_C2 = new PdfPCell((new Phrase(new Chunk("Definition of Disability", Calibri_Nor_Font))));
            P7_R14_C2.Colspan = 4;
            P7_T1.AddCell(P7_R14_C2);

            PdfPCell P7_R14_C3 = new PdfPCell((new Phrase(new Chunk("Own or Suited ", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R14_C3);

            PdfPCell P7_R14_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R14_C4.BorderWidthBottom = 0f;
            P7_R14_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R14_C4);

            PdfPCell P7_R14_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R14_C5.BorderWidthBottom = 0f;
            P7_R14_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R14_C5);

            #endregion Line14

            #region Line15
            PdfPCell P7_R15_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P7_R15_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R15_C1);

            PdfPCell P7_R15_C2 = new PdfPCell((new Phrase(new Chunk("Deferment Period ", Calibri_Nor_Font))));
            P7_R15_C2.Colspan = 4;
            P7_T1.AddCell(P7_R15_C2);

            PdfPCell P7_R15_C3 = new PdfPCell((new Phrase(new Chunk("12 Months", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R15_C3);

            PdfPCell P7_R15_C4 = new PdfPCell((new Phrase(new Chunk("0.195", Calibri_Nor_Font))));
            P7_R15_C4.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R15_C4.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_R15_C4.BorderWidthBottom = 0f;
            P7_R15_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R15_C4);

            PdfPCell P7_R15_C5 = new PdfPCell((new Phrase(new Chunk("204.750", Calibri_Nor_Font))));
            P7_R15_C5.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R15_C5.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_R15_C5.BorderWidthBottom = 0f;
            P7_R15_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R15_C5);

            #endregion Line12


            #region Line16
            PdfPCell P7_R16_C1 = new PdfPCell((new Phrase(new Chunk("Permanent Partial Disability (PPD)", Calibri_Font))));
            P7_R16_C1.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R16_C1);

            PdfPCell P7_R16_C2 = new PdfPCell((new Phrase(new Chunk("Due to Accident and Sickness", Calibri_Nor_Font))));
            P7_R16_C2.Colspan = 4;
            P7_T1.AddCell(P7_R16_C2);



            PdfPCell P7_R16_C3 = new PdfPCell((new Phrase(new Chunk("As per Disability Scale", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R16_C3);

            PdfPCell P7_R16_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R16_C4.BorderWidthBottom = 0f;
            P7_R16_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R16_C4);

            PdfPCell P7_R16_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R16_C5.BorderWidthBottom = 0f;
            P7_R16_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R16_C5);

            #endregion Line16

            #region Line17
            PdfPCell P7_R17_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P7_R17_C1.BorderWidthBottom = 0f;
            P7_R17_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R17_C1);

            PdfPCell P7_R17_C2 = new PdfPCell((new Phrase(new Chunk("Scale of Disability (% of SA)", Calibri_Nor_Font))));
            P7_R17_C2.Colspan = 4;
            P7_T1.AddCell(P7_R17_C2);

            PdfPCell P7_R17_C3 = new PdfPCell((new Phrase(new Chunk("As per disability scale (in line with Oman labor law)", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R17_C3);

            PdfPCell P7_R17_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R17_C4.BorderWidthBottom = 0f;
            P7_R17_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R17_C4);

            PdfPCell P7_R17_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R17_C5.BorderWidthBottom = 0f;
            P7_R17_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R17_C5);

            #endregion Line17

            #region Line18
            PdfPCell P7_R18_C1 = new PdfPCell((new Phrase(new Chunk("TEMPORARY TOTAL DISABLEMENT", Calibri_Font))));
            P7_R18_C1.BorderWidthBottom = 0f;
            P7_T1.AddCell(P7_R18_C1);

            PdfPCell P7_R18_C2 = new PdfPCell((new Phrase(new Chunk("Due to Accident and Sickness", Calibri_Nor_Font))));
            P7_R18_C2.Colspan = 4;
            P7_T1.AddCell(P7_R18_C2);



            PdfPCell P7_R18_C3 = new PdfPCell((new Phrase(new Chunk("As per Disability Scale", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R18_C3);

            PdfPCell P7_R18_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R18_C4.BorderWidthBottom = 0f;
            P7_R18_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R18_C4);

            PdfPCell P7_R18_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R18_C5.BorderWidthBottom = 0f;
            P7_R18_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R18_C5);

            #endregion Line18

            #region Line19
            PdfPCell P7_R19_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            //P7_R19_C1.BorderWidthBottom = 0f;
            P7_R19_C1.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R19_C1);

            PdfPCell P7_R19_C2 = new PdfPCell((new Phrase(new Chunk("Scale of Disability (% of SA)", Calibri_Nor_Font))));
            P7_R19_C2.Colspan = 4;
            P7_T1.AddCell(P7_R19_C2);

            PdfPCell P7_R19_C3 = new PdfPCell((new Phrase(new Chunk("As per disability scale (in line with Oman labor law)", Calibri_Nor_Font))));
            P7_T1.AddCell(P7_R19_C3);

            PdfPCell P7_R19_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R19_C4.BorderWidthBottom = 0f;
            P7_R19_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R19_C4);

            PdfPCell P7_R19_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R19_C5.BorderWidthBottom = 0f;
            P7_R19_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R19_C5);

            #endregion Line19

            #region Line20
            PdfPCell P7_R20_C1 = new PdfPCell((new Phrase(new Chunk("Repatriation Expenses Benefit", Calibri_Font))));
            P7_T1.AddCell(P7_R20_C1);

            PdfPCell P7_R20_C2 = new PdfPCell((new Phrase(new Chunk("Reimbursement of travelling expenses incurred for the repatriation of body of the employee to his/her home country (Including Embalming, Cost of Coffin, Airline Charges & 1 Escort)", Calibri_Nor_Font))));
            P7_R20_C2.Colspan = 4;
            P7_T1.AddCell(P7_R20_C2);


            Phrase P7_R20_P = new Phrase();
            P7_R20_P.Add(new Chunk("Up to RO ", Calibri_Nor_Font));
            P7_R20_P.Add(new Chunk(" 1,000 ", Calibri_Nor_Font));
            P7_R20_P.Add(new Chunk(" Per Employee", Calibri_Nor_Font));

            PdfPCell P7_R20_C3 = new PdfPCell(P7_R20_P);
            P7_T1.AddCell(P7_R20_C3);

            PdfPCell P7_R20_C4 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R20_C4.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R20_C4);

            PdfPCell P7_R20_C5 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R20_C5.BorderWidthTop = 0f;
            P7_T1.AddCell(P7_R20_C5);

            #endregion Line20

            #region Line21
            PdfPCell P7_R21_C1 = new PdfPCell((new Phrase(new Chunk("Workmen’s Compensation (Top up on Group Life)", Calibri_Font))));
            P7_T1.AddCell(P7_R21_C1);



            PdfPCell P7_R21_C2 = new PdfPCell((new Phrase(new Chunk("Covered as per Sultani Decree 40/1977 (Product specifications as below)", Calibri_Nor_Font))));
            P7_R21_C2.Colspan = 4;
            P7_T1.AddCell(P7_R21_C2);


            Phrase P7_R21_P = new Phrase();
            P7_R21_P.Add(new Chunk("Estimated Annual Wages RO. ", Calibri_Nor_Font));
            P7_R21_P.Add(new Chunk(" 198,420", Calibri_Font));
            P7_R21_P.Add(new Chunk("/-", Calibri_Nor_Font));
            PdfPCell P7_R21_C3 = new PdfPCell(P7_R21_P);
            P7_T1.AddCell(P7_R21_C3);

            PdfPCell P7_R21_C4 = new PdfPCell((new Phrase(new Chunk("0.092", Calibri_Nor_Font))));
            P7_R21_C4.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R21_C4.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_T1.AddCell(P7_R21_C4);

            PdfPCell P7_R21_C5 = new PdfPCell((new Phrase(new Chunk("182.546", Calibri_Nor_Font))));
            P7_R21_C5.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R21_C5.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_T1.AddCell(P7_R21_C5);

            #endregion Line18

            #region Line22
            PdfPCell P7_R22_C1 = new PdfPCell((new Phrase(new Chunk("Total Premium inclusive of taxes", Calibri_Font))));
            P7_R22_C1.Colspan = 6;
            P7_R22_C1.BorderWidthBottom = 0;
            P7_T1.AddCell(P7_R22_C1);

            PdfPCell P7_R22_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R22_C2.Colspan = 2;
            P7_R22_C2.BorderWidthBottom = 0;
            P7_T1.AddCell(P7_R22_C2);
            #endregion Line22

            #region Line23
            PdfPCell P7_R23_C1 = new PdfPCell((new Phrase(new Chunk("(GL Tax applied @0.55% + RO.1/- Policy Fee)", Calibri_Nor_Font))));
            P7_R23_C1.Colspan = 6;
            P7_R23_C1.BorderWidthTop = 0;
            P7_R23_C1.BorderWidthBottom = 0;
            P7_T1.AddCell(P7_R23_C1);

            PdfPCell P7_R23_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R23_C2.Colspan = 2;
            P7_R23_C2.BorderWidthTop = 0;
            P7_R23_C2.BorderWidthBottom = 0;
            P7_T1.AddCell(P7_R23_C2);
            #endregion Line23

            #region Line24
            PdfPCell P7_R24_C1 = new PdfPCell((new Phrase(new Chunk("(WC Tax applied @1.6% + RO.1/- Policy fee + VAT 5%)", Calibri_Nor_Font))));
            P7_R24_C1.Colspan = 6;
            P7_R24_C1.BorderWidthTop = 0;
            P7_T1.AddCell(P7_R24_C1);

            PdfPCell P7_R24_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R24_C2.BorderWidthTop = 0;
            P7_R24_C2.BorderWidthRight = 0;
            P7_T1.AddCell(P7_R24_C2);

            PdfPCell P7_R24_C3 = new PdfPCell((new Phrase(new Chunk("402.667", Calibri_Font))));
            P7_R24_C3.BorderWidthTop = 0;
            P7_R24_C3.BorderWidthLeft = 0;
            P7_R24_C3.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R24_C3.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_T1.AddCell(P7_R24_C3);
            #endregion Line24

            #region Line25
            PdfPCell P7_R25_C1 = new PdfPCell((new Phrase(new Chunk("Product Specifications – Group Life", Calibri_Font))));
            P7_R25_C1.PaddingTop = 8;
            P7_R25_C1.PaddingBottom = 8;
            P7_R25_C1.HorizontalAlignment = Element.ALIGN_CENTER;
            P7_R25_C1.VerticalAlignment = Element.ALIGN_MIDDLE;
            P7_R25_C1.Colspan = 8;
            P7_T1.AddCell(P7_R25_C1);
            #endregion Line25

            #region Line26
            PdfPCell P7_R26_C1 = new PdfPCell((new Phrase(new Chunk("Scope of Coverage", Calibri_Font))));
            P7_R26_C1.Colspan = 2;
            P7_T1.AddCell(P7_R26_C1);

            PdfPCell P7_R26_C2 = new PdfPCell((new Phrase(new Chunk("Worldwide, provided scheme member is resident of Oman.", Calibri_Nor_Font))));
            P7_R26_C2.Colspan = 6;
            P7_T1.AddCell(P7_R26_C2);
            #endregion Line26

            #region Line27
            PdfPCell P7_R27_C1 = new PdfPCell((new Phrase(new Chunk("Jurisdiction", Calibri_Font))));
            P7_R27_C1.Colspan = 2;
            P7_T1.AddCell(P7_R27_C1);

            PdfPCell P7_R27_C2 = new PdfPCell((new Phrase(new Chunk("Sultanate of Oman", Calibri_Nor_Font))));
            P7_R27_C2.Colspan = 6;
            P7_T1.AddCell(P7_R27_C2);
            #endregion Line27

            #region Line28
            PdfPCell P7_R28_C1 = new PdfPCell((new Phrase(new Chunk("Policy Currency", Calibri_Font))));
            P7_R28_C1.Colspan = 2;
            P7_T1.AddCell(P7_R28_C1);

            PdfPCell P7_R28_C2 = new PdfPCell((new Phrase(new Chunk("Omani Riyal (RO)", Calibri_Nor_Font))));
            P7_R28_C2.Colspan = 6;
            P7_T1.AddCell(P7_R28_C2);
            #endregion Line28

            #region Line29
            PdfPCell P7_R29_C1 = new PdfPCell((new Phrase(new Chunk("Age Limit", Calibri_Font))));
            P7_R29_C1.BorderWidthBottom = 0;
            P7_R29_C1.Colspan = 2;
            P7_T1.AddCell(P7_R29_C1);

            PdfPCell P7_R29_C2 = new PdfPCell((new Phrase(new Chunk("65 years for all benefits. Any employee who completes 65 years during period of insurance is covered until expiry of the policy", Calibri_Nor_Font))));
            P7_R29_C2.Colspan = 6;
            P7_R29_C2.BorderWidthBottom = 0;
            P7_T1.AddCell(P7_R29_C2);
            #endregion Line29

            #region Line30
            PdfPCell P7_R30_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R30_C1.Colspan = 2;
            P7_R30_C1.BorderWidthBottom = 0;
            P7_R30_C1.BorderWidthTop = 0;
            P7_T1.AddCell(P7_R30_C1);

            PdfPCell P7_R30_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R30_C2.Border = 0;
            P7_T1.AddCell(P7_R30_C2);

            PdfPCell P7_R30_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P7_R30_C3.Border = 0;
            P7_T1.AddCell(P7_R30_C3);


            Phrase P7_R30_P = new Phrase();
            P7_R30_P.Add(new Chunk("Minimum Age at entry-", Calibri_Nor_Font));
            P7_R30_P.Add(new Chunk(" 18 ", Calibri_Nor_Font));
            P7_R30_P.Add(new Chunk("years", Calibri_Nor_Font));

            PdfPCell P7_R30_C4 = new PdfPCell(P7_R30_P);
            P7_R30_C4.Colspan = 4;
            P7_R30_C4.BorderWidthBottom = 0;
            P7_R30_C4.BorderWidthLeft = 0;
            P7_R30_C4.BorderWidthTop = 0;
            P7_T1.AddCell(P7_R30_C4);
            #endregion Line30

            #region Line31
            PdfPCell P7_R31_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R31_C1.Colspan = 2;
            P7_R31_C1.BorderWidthTop = 0;
            P7_T1.AddCell(P7_R31_C1);

            PdfPCell P7_R31_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P7_R31_C2.BorderWidthTop = 0;
            P7_R31_C2.BorderWidthLeft = 0;
            P7_R31_C2.BorderWidthRight = 0;
            P7_T1.AddCell(P7_R31_C2);

            PdfPCell P7_R31_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P7_R31_C3.BorderWidthTop = 0;
            P7_R31_C3.BorderWidthLeft = 0;
            P7_R31_C3.BorderWidthRight = 0;
            P7_T1.AddCell(P7_R31_C3);


            Phrase P7_R31_P = new Phrase();
            P7_R31_P.Add(new Chunk("Maximum  Age at entry-", Calibri_Nor_Font));
            P7_R31_P.Add(new Chunk(" 64 ", Calibri_Nor_Font));
            P7_R31_P.Add(new Chunk("years", Calibri_Nor_Font));

            PdfPCell P7_R31_C4 = new PdfPCell(P7_R31_P);
            P7_R31_C4.Colspan = 4;
            P7_R31_C4.BorderWidthTop = 0;
            P7_R31_C4.BorderWidthLeft = 0;
            P7_T1.AddCell(P7_R31_C4);
            #endregion Line31

            doc.Add(P7_T1);
            #endregion Page7

            doc.NewPage();

            #region Page8

            PdfPTable P8_T1 = new PdfPTable(8);
            P8_T1.SetWidths(P7_Row1Width);

            #region Line1
            PdfPCell P8_R1_C1 = new PdfPCell((new Phrase(new Chunk("Free Cover Limit (FCL)", Calibri_Font))));
            P8_R1_C1.Colspan = 2;
            P8_T1.AddCell(P8_R1_C1);

            Phrase P8_R1_P = new Phrase();
            P8_R1_P.Add(new Chunk("RO.", Calibri_Font));
            P8_R1_P.Add(new Chunk("5,000", Calibri_Font));
            P8_R1_P.Add(new Chunk("/- ", Calibri_Font));
            P8_R1_P.Add(new Chunk("(to age ", Calibri_Nor_Font));
            P8_R1_P.Add(new Chunk("64 ", Calibri_Nor_Font));
            P8_R1_P.Add(new Chunk("maximum) The limit up to which all employees who are actively at work on the inception of cover will be automatically covered without having to provide medical evidence of insurability)", Calibri_Nor_Font));
            P8_R1_P.Add(new Chunk(" Nil for employees above age 64 years.", Calibri_Font));

            PdfPCell P8_R1_C2 = new PdfPCell(P8_R1_P);
            P8_R1_C2.Colspan = 6;
            P8_T1.AddCell(P8_R1_C2);
            #endregion Line1

            #region Line2
            PdfPCell P8_R2_C1 = new PdfPCell((new Phrase(new Chunk("Premium Payment Warranty", Calibri_Font))));
            P8_R2_C1.Colspan = 2;
            P8_T1.AddCell(P8_R2_C1);

            //Phrase P8_R2_P = new Phrase();
            //P8_R2_P.Add(new Chunk("30 days from the date of confirmation of business.", Calibri_UL_Font));
            //P8_R2_P.Add(new Chunk("\n"));
            //P8_R2_P.Add(new Chunk("\n"));
            //P8_R2_P.Add(new Chunk("The premium has to be paid within the agreed credit period with client /broker. If premium is not paid during the agreed period, the policy will be considered void and no claim will be honored.30 days’ notice period will not be applicable in this case.", Calibri_Nor_Font));


            //PdfPCell P8_R2_C2 = new PdfPCell(P8_R2_P);
            //P8_R2_C2.Colspan = 6;
            //P8_T1.AddCell(P8_R2_C2);




            PdfPCell P8_R2_C2 = new PdfPCell();
            P8_R2_C2.Colspan = 6;
            StringBuilder P8_R2_Str1 = new StringBuilder("");
            P8_R2_Str1.Append("30 days from the date of confirmation of business.");
            P8_R2_C2.AddElement(new Phrase(new Chunk(P8_R2_Str1.ToString(), Calibri_UL_Font)));
            StringBuilder P8_R2_2 = new StringBuilder("");
            P8_R2_2.Append("The premium has to be paid within the agreed credit period with client /broker. If premium is not paid during the agreed period, the policy will be considered void and no claim will be honored.30 days’ notice period will not be applicable in this case.");
            P8_R2_C2.AddElement(new Phrase(new Chunk(P8_R2_2.ToString(), Calibri_Nor_Font)));


            //StringBuilder P8_R2_Str1 = new StringBuilder("");
            //P8_R2_Str1.Append("30 days from the date of confirmation of business.");
            //Phrase P8_R2_P = new Phrase();
            //P8_R2_P.Add(new Chunk(P8_R2_Str1.ToString(), Calibri_UL_Font));
            //P8_R2_P.Add(new Chunk("\n"));
            //P8_R2_P.Add(new Chunk("The premium has to be paid within the agreed credit period with client /broker. If premium is not paid during the agreed period, the policy will be considered void and no claim will be honored.30 days’ notice period will not be applicable in this case.", Calibri_Nor_Font));
            //PdfPCell P8_R2_C2 = new PdfPCell(P8_R2_P);
            //P8_R2_C2.Colspan = 6;



            P8_T1.AddCell(P8_R2_C2);

            #endregion Line2

            #region Line3
            PdfPCell P8_R3_C1 = new PdfPCell((new Phrase(new Chunk("Policy Administration", Calibri_Font))));
            P8_R3_C1.Colspan = 2;
            P8_T1.AddCell(P8_R3_C1);

            Phrase P8_R3_P = new Phrase();
            P8_R3_P.Add(new Chunk("Automatic additions, deletions & salary change at pro-rata additional premium and subject to written declaration and ", Calibri_Nor_Font));
            P8_R3_P.Add(new Chunk(" premium adjustment within 30 days", Calibri_Font));

            PdfPCell P8_R3_C2 = new PdfPCell(P8_R3_P);
            P8_R3_C2.Colspan = 6;
            P8_T1.AddCell(P8_R3_C2);
            #endregion Line3

            #region Line4
            PdfPCell P8_R4_C1 = new PdfPCell((new Phrase(new Chunk("Evidence of Insurability Requirements", Calibri_Font))));
            P8_R4_C1.Colspan = 2;
            P8_R4_C1.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R4_C1);

            PdfPCell P8_R4_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R4_C2.BorderWidthTop = 0;
            P8_R4_C2.BorderWidthLeft = 0;
            P8_R4_C2.BorderWidthRight = 0;
            P8_R4_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R4_C2);

            PdfPCell P8_R4_C3 = new PdfPCell((new Phrase(new Chunk("1", Calibri_Nor_Font))));
            P8_R4_C3.BorderWidthTop = 0;
            P8_R4_C3.BorderWidthLeft = 0;
            P8_R4_C3.BorderWidthRight = 0;
            P8_R4_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R4_C3);

            PdfPCell P8_R4_C4 = new PdfPCell((new Phrase(new Chunk("Employees over 65 years of age and up to 70 years May be covered for Death any cause subject to satisfactory Evidence of Insurability (Health declaration &/ or Medical Examination).", Calibri_Nor_Font))));
            P8_R4_C4.Colspan = 4;
            P8_R4_C4.BorderWidthTop = 0;
            P8_R4_C4.BorderWidthLeft = 0;
            P8_R4_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R4_C4);
            #endregion Line4

            #region Line5
            PdfPCell P8_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R5_C1.Colspan = 2;
            P8_R5_C1.BorderWidthBottom = 0;
            P8_R5_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R5_C1);

            PdfPCell P8_R5_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R5_C2.BorderWidthTop = 0;
            P8_R5_C2.BorderWidthLeft = 0;
            P8_R5_C2.BorderWidthRight = 0;
            P8_R5_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R5_C2);

            PdfPCell P8_R5_C3 = new PdfPCell((new Phrase(new Chunk("2", Calibri_Nor_Font))));
            P8_R5_C3.BorderWidthTop = 0;
            P8_R5_C3.BorderWidthLeft = 0;
            P8_R5_C3.BorderWidthRight = 0;
            P8_R5_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R5_C3);

            PdfPCell P8_R5_C4 = new PdfPCell((new Phrase(new Chunk("And all expenses relating to any Medical Examination shall be borne by the Insured. Underwriter reserve the right to request additional medical reports as necessary.", Calibri_Nor_Font))));
            P8_R5_C4.Colspan = 4;
            P8_R5_C4.BorderWidthTop = 0;
            P8_R5_C4.BorderWidthLeft = 0;
            P8_R5_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R5_C4);
            #endregion Line5

            #region Line6
            PdfPCell P8_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R6_C1.Colspan = 2;
            P8_R6_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R6_C1);

            PdfPCell P8_R6_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R6_C2.BorderWidthTop = 0;
            P8_R6_C2.BorderWidthLeft = 0;
            P8_R6_C2.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R6_C2);

            PdfPCell P8_R6_C3 = new PdfPCell((new Phrase(new Chunk("3", Calibri_Nor_Font))));
            P8_R6_C3.BorderWidthTop = 0;
            P8_R6_C3.BorderWidthLeft = 0;
            P8_R6_C3.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R6_C3);

            PdfPCell P8_R6_C4 = new PdfPCell((new Phrase(new Chunk("Al Madina will hold final decision on inclusion of member", Calibri_Nor_Font))));
            P8_R6_C4.Colspan = 4;
            P8_R6_C4.BorderWidthTop = 0;
            P8_R6_C4.BorderWidthLeft = 0;

            P8_T1.AddCell(P8_R6_C4);
            #endregion Line6

            #region Line7
            PdfPCell P8_R7_C1 = new PdfPCell((new Phrase(new Chunk("Claim Settlement", Calibri_Font))));
            P8_R7_C1.Colspan = 2;
            P8_T1.AddCell(P8_R7_C1);

            PdfPCell P8_R7_C2 = new PdfPCell((new Phrase(new Chunk("Claim settlements are made based on the salary/Sum Assured actually declared by the policyholder to the insurer and which is reflected in the policy schedule/Endorsements.", Calibri_Nor_Font))));
            P8_R7_C2.Colspan = 6;
            P8_T1.AddCell(P8_R7_C2);
            #endregion Line7



            #region Line8
            PdfPCell P8_R8_C1 = new PdfPCell((new Phrase(new Chunk("Special Conditions", Calibri_Font))));
            P8_R8_C1.Colspan = 2;
            P8_R8_C1.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R8_C1);

            PdfPCell P8_R8_C2 = new PdfPCell((new Phrase(new Chunk("The above rates are guaranteed for 1-year subject to the scheme not changing significantly, i.e", Calibri_Nor_Font))));
            P8_R8_C2.BorderWidthTop = 0;
            P8_R8_C2.BorderWidthLeft = 0;
            P8_R8_C2.BorderWidthBottom = 0;
            P8_R8_C2.Colspan = 6;
            P8_T1.AddCell(P8_R8_C2);

            #endregion Line8

            #region Line9
            PdfPCell P8_R9_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R9_C1.Colspan = 2;
            P8_R9_C1.BorderWidthBottom = 0;
            P8_R9_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R9_C1);

            PdfPCell P8_R9_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R9_C2.BorderWidthTop = 0;
            P8_R9_C2.BorderWidthLeft = 0;
            P8_R9_C2.BorderWidthRight = 0;
            P8_R9_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R9_C2);

            PdfPCell P8_R9_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R9_C3.BorderWidthTop = 0;
            P8_R9_C3.BorderWidthLeft = 0;
            P8_R9_C3.BorderWidthRight = 0;
            P8_R9_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R9_C3);

            PdfPCell P8_R9_C4 = new PdfPCell((new Phrase(new Chunk("Change in the number of members more than 20%", Calibri_Nor_Font))));
            P8_R9_C4.Colspan = 4;
            P8_R9_C4.BorderWidthTop = 0;
            P8_R9_C4.BorderWidthLeft = 0;
            P8_R9_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R9_C4);
            #endregion Line9

            #region Line10
            PdfPCell P8_R10_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R10_C1.Colspan = 2;
            P8_R10_C1.BorderWidthBottom = 0;
            P8_R10_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R10_C1);

            PdfPCell P8_R10_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R10_C2.BorderWidthTop = 0;
            P8_R10_C2.BorderWidthLeft = 0;
            P8_R10_C2.BorderWidthRight = 0;
            P8_R10_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R10_C2);

            PdfPCell P8_R10_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R10_C3.BorderWidthTop = 0;
            P8_R10_C3.BorderWidthLeft = 0;
            P8_R10_C3.BorderWidthRight = 0;
            P8_R10_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R10_C3);

            PdfPCell P8_R10_C4 = new PdfPCell((new Phrase(new Chunk("Change in benefit formulas", Calibri_Nor_Font))));
            P8_R10_C4.Colspan = 4;
            P8_R10_C4.BorderWidthTop = 0;
            P8_R10_C4.BorderWidthLeft = 0;
            P8_R10_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R10_C4);
            #endregion Line10

            #region Line11
            PdfPCell P8_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R11_C1.Colspan = 2;
            P8_R11_C1.BorderWidthBottom = 0;
            P8_R11_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R11_C1);

            PdfPCell P8_R11_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R11_C2.BorderWidthTop = 0;
            P8_R11_C2.BorderWidthLeft = 0;
            P8_R11_C2.BorderWidthRight = 0;
            P8_R11_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R11_C2);

            PdfPCell P8_R11_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R11_C3.BorderWidthTop = 0;
            P8_R11_C3.BorderWidthLeft = 0;
            P8_R11_C3.BorderWidthRight = 0;
            P8_R11_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R11_C3);

            PdfPCell P8_R11_C4 = new PdfPCell((new Phrase(new Chunk("Change in business activities of group", Calibri_Nor_Font))));
            P8_R11_C4.Colspan = 4;
            P8_R11_C4.BorderWidthTop = 0;
            P8_R11_C4.BorderWidthLeft = 0;
            P8_R11_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R11_C4);
            #endregion Line11

            #region Line12
            PdfPCell P8_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R12_C1.Colspan = 2;
            P8_R12_C1.BorderWidthBottom = 0;
            P8_R12_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R12_C1);

            PdfPCell P8_R12_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R12_C2.BorderWidthTop = 0;
            P8_R12_C2.BorderWidthLeft = 0;
            P8_R12_C2.BorderWidthRight = 0;
            P8_R12_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R12_C2);

            PdfPCell P8_R12_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R12_C3.BorderWidthTop = 0;
            P8_R12_C3.BorderWidthLeft = 0;
            P8_R12_C3.BorderWidthRight = 0;
            P8_R12_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R12_C3);

            PdfPCell P8_R12_C4 = new PdfPCell((new Phrase(new Chunk("Change in employees Sum Insured over 10% per annum", Calibri_Nor_Font))));
            P8_R12_C4.Colspan = 4;
            P8_R12_C4.BorderWidthTop = 0;
            P8_R12_C4.BorderWidthLeft = 0;
            P8_R12_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R12_C4);
            #endregion Line12

            #region Line13
            PdfPCell P8_R13_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R13_C1.Colspan = 2;
            P8_R13_C1.BorderWidthBottom = 0;
            P8_R13_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R13_C1);

            PdfPCell P8_R13_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R13_C2.BorderWidthTop = 0;
            P8_R13_C2.BorderWidthLeft = 0;
            P8_R13_C2.BorderWidthRight = 0;
            P8_R13_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R13_C2);

            PdfPCell P8_R13_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R13_C3.BorderWidthTop = 0;
            P8_R13_C3.BorderWidthLeft = 0;
            P8_R13_C3.BorderWidthRight = 0;
            P8_R13_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R13_C3);

            PdfPCell P8_R13_C4 = new PdfPCell((new Phrase(new Chunk("Change in average age of the group by more than 10%", Calibri_Nor_Font))));
            P8_R13_C4.Colspan = 4;
            P8_R13_C4.BorderWidthTop = 0;
            P8_R13_C4.BorderWidthLeft = 0;
            P8_R13_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R13_C4);
            #endregion Line13

            #region Line14
            PdfPCell P8_R14_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R14_C1.Colspan = 2;
            P8_R14_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R14_C1);

            PdfPCell P8_R14_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R14_C2.BorderWidthTop = 0;
            P8_R14_C2.BorderWidthLeft = 0;
            P8_R14_C2.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R14_C2);

            PdfPCell P8_R14_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Font))));
            P8_R14_C3.BorderWidthTop = 0;
            P8_R14_C3.BorderWidthLeft = 0;
            P8_R14_C3.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R14_C3);

            PdfPCell P8_R14_C4 = new PdfPCell((new Phrase(new Chunk("Change in eligibility conditions of the scheme", Calibri_Nor_Font))));
            P8_R14_C4.Colspan = 4;
            P8_R14_C4.BorderWidthTop = 0;
            P8_R14_C4.BorderWidthLeft = 0;
            P8_T1.AddCell(P8_R14_C4);
            #endregion Line14

            #region Line15
            PdfPCell P8_R15_C1 = new PdfPCell((new Phrase(new Chunk("Pre-existing condition", Calibri_Font))));
            P8_R15_C1.Colspan = 2;
            P8_T1.AddCell(P8_R15_C1);

            PdfPCell P8_R15_C2 = new PdfPCell((new Phrase(new Chunk("The claim is payable if the insured person dies or becomes disabled as a result of a pre-existing illness or condition, provided however that such an event happens after 12 months from inception of cover. If however the policyholder was previously covered for pre-existing illness or condition and the Insured person has completed 12 continuous month of full time employment with the policy holder he/she is covered under the policy.", Calibri_Nor_Font))));
            P8_R15_C2.Colspan = 6;
            P8_T1.AddCell(P8_R15_C2);
            #endregion Line15

            #region Line16
            PdfPCell P8_R16_C1 = new PdfPCell((new Phrase(new Chunk("Other Conditions", Calibri_Font))));
            P8_R16_C1.Colspan = 2;
            P8_R16_C1.BorderWidthBottom = 0;
            P8_R16_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R16_C1);

            PdfPCell P8_R16_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R16_C2.BorderWidthTop = 0;
            P8_R16_C2.BorderWidthLeft = 0;
            P8_R16_C2.BorderWidthRight = 0;
            P8_R16_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R16_C2);

            PdfPCell P8_R16_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R16_C3.BorderWidthTop = 0;
            P8_R16_C3.BorderWidthLeft = 0;
            P8_R16_C3.BorderWidthRight = 0;
            P8_R16_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R16_C3);

            PdfPCell P8_R16_C4 = new PdfPCell((new Phrase(new Chunk("Repatriation is paid only in conjunction with Death/PTD claim", Calibri_Nor_Font))));
            P8_R16_C4.Colspan = 4;
            P8_R16_C4.BorderWidthTop = 0;
            P8_R16_C4.BorderWidthLeft = 0;
            P8_R16_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R16_C4);
            #endregion Line16

            #region Line17
            PdfPCell P8_R17_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R17_C1.Colspan = 2;
            P8_R17_C1.BorderWidthBottom = 0;
            P8_R17_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R17_C1);

            PdfPCell P8_R17_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R17_C2.BorderWidthTop = 0;
            P8_R17_C2.BorderWidthLeft = 0;
            P8_R17_C2.BorderWidthRight = 0;
            P8_R17_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R17_C2);

            PdfPCell P8_R17_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R17_C3.BorderWidthTop = 0;
            P8_R17_C3.BorderWidthLeft = 0;
            P8_R17_C3.BorderWidthRight = 0;
            P8_R17_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R17_C3);

            PdfPCell P8_R17_C4 = new PdfPCell((new Phrase(new Chunk("Cover ceases after settlement of PTD claim", Calibri_Nor_Font))));
            P8_R17_C4.Colspan = 4;
            P8_R17_C4.BorderWidthTop = 0;
            P8_R17_C4.BorderWidthLeft = 0;
            P8_R17_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R17_C4);
            #endregion Line17

            #region Line18
            PdfPCell P8_R18_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R18_C1.Colspan = 2;
            P8_R18_C1.BorderWidthBottom = 0;
            P8_R18_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R18_C1);

            PdfPCell P8_R18_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R18_C2.BorderWidthTop = 0;
            P8_R18_C2.BorderWidthLeft = 0;
            P8_R18_C2.BorderWidthRight = 0;
            P8_R18_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R18_C2);

            PdfPCell P8_R18_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R18_C3.BorderWidthTop = 0;
            P8_R18_C3.BorderWidthLeft = 0;
            P8_R18_C3.BorderWidthRight = 0;
            P8_R18_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R18_C3);

            PdfPCell P8_R18_C4 = new PdfPCell((new Phrase(new Chunk("No cover is effective unless Underwriter has been advised in writing to go on risk and unless the Underwriter has confirmed the cover in writing.", Calibri_Nor_Font))));
            P8_R18_C4.Colspan = 4;
            P8_R18_C4.BorderWidthTop = 0;
            P8_R18_C4.BorderWidthLeft = 0;
            P8_R18_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R18_C4);
            #endregion Line18

            #region Line19
            PdfPCell P8_R19_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R19_C1.Colspan = 2;
            P8_R19_C1.BorderWidthBottom = 0;
            P8_R19_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R19_C1);

            PdfPCell P8_R19_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R19_C2.BorderWidthTop = 0;
            P8_R19_C2.BorderWidthLeft = 0;
            P8_R19_C2.BorderWidthRight = 0;
            P8_R19_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R19_C2);

            PdfPCell P8_R19_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R19_C3.BorderWidthTop = 0;
            P8_R19_C3.BorderWidthLeft = 0;
            P8_R19_C3.BorderWidthRight = 0;
            P8_R19_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R19_C3);

            PdfPCell P8_R19_C4 = new PdfPCell((new Phrase(new Chunk("Claims adjudication will in all cases rest with insurers, unless agreed otherwise in writing by insurers. Disability awards by Government or similarly approved medical committees shall not be treated as the final decision, unless agreed otherwise by Insurers at outset.", Calibri_Nor_Font))));
            P8_R19_C4.Colspan = 4;
            P8_R19_C4.BorderWidthTop = 0;
            P8_R19_C4.BorderWidthLeft = 0;
            P8_R19_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R19_C4);
            #endregion Line19

            #region Line20
            PdfPCell P8_R20_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R20_C1.Colspan = 2;
            P8_R20_C1.BorderWidthBottom = 0;
            P8_R20_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R20_C1);

            PdfPCell P8_R20_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R20_C2.BorderWidthTop = 0;
            P8_R20_C2.BorderWidthLeft = 0;
            P8_R20_C2.BorderWidthRight = 0;
            P8_R20_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R20_C2);

            PdfPCell P8_R20_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Nor_Font))));
            P8_R20_C3.BorderWidthTop = 0;
            P8_R20_C3.BorderWidthLeft = 0;
            P8_R20_C3.BorderWidthRight = 0;
            P8_R20_C3.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R20_C3);

            PdfPCell P8_R20_C4 = new PdfPCell((new Phrase(new Chunk("Claims notification period of 180 days after which claims will be considered time barred and not payable.", Calibri_Nor_Font))));
            P8_R20_C4.Colspan = 4;
            P8_R20_C4.BorderWidthTop = 0;
            P8_R20_C4.BorderWidthLeft = 0;
            P8_R20_C4.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R20_C4);
            #endregion Line20

            #region Line21
            PdfPCell P8_R21_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R21_C1.Colspan = 2;
            P8_R21_C1.BorderWidthTop = 0;
            P8_R21_C1.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R21_C1);

            PdfPCell P8_R21_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R21_C2.BorderWidthTop = 0;
            P8_R21_C2.BorderWidthLeft = 0;
            P8_R21_C2.BorderWidthRight = 0;
            P8_R21_C2.BorderWidthBottom = 0;
            P8_T1.AddCell(P8_R21_C2);

            PdfPCell P8_R21_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Font))));
            P8_R21_C3.BorderWidthTop = 0;
            P8_R21_C3.BorderWidthBottom = 0;
            P8_R21_C3.BorderWidthLeft = 0;
            P8_R21_C3.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R21_C3);

            PdfPCell P8_R21_C4 = new PdfPCell((new Phrase(new Chunk("All related documents to be submitted within 180 days of such intimation, after which claim will not be payable ", Calibri_Nor_Font))));
            P8_R21_C4.Colspan = 4;
            P8_R21_C4.BorderWidthTop = 0;
            P8_R21_C4.BorderWidthBottom = 0;
            P8_R21_C4.BorderWidthLeft = 0;
            P8_T1.AddCell(P8_R21_C4);
            #endregion Line21

            #region Line22
            PdfPCell P8_R22_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R22_C1.Colspan = 2;
            P8_R22_C1.BorderWidthTop = 0;
            P8_T1.AddCell(P8_R22_C1);

            PdfPCell P8_R22_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P8_R22_C2.BorderWidthTop = 0;
            P8_R22_C2.BorderWidthLeft = 0;
            P8_R22_C2.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R22_C2);

            PdfPCell P8_R22_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Font))));
            P8_R22_C3.BorderWidthTop = 0;
            P8_R22_C3.BorderWidthLeft = 0;
            P8_R22_C3.BorderWidthRight = 0;
            P8_T1.AddCell(P8_R22_C3);

            PdfPCell P8_R22_C4 = new PdfPCell((new Phrase(new Chunk("The onus of accuracy and correctness of the Data (member list)/ any other material details  lies with the insured and the Insurance company will not be held responsible  for any such false declarations in the event of a claim. The record should be verified by insured before sending to Al Madina for policy issuance. In case of any discrepancy observed insured should inform within 15 days of policy issuance to AMI for rectification. In case they fail to do so AMI will be not responsible for any data mismatch whatsoever. ", Calibri_Nor_Font))));
            P8_R22_C4.Colspan = 4;
            P8_R22_C4.BorderWidthTop = 0;
            P8_R22_C4.BorderWidthLeft = 0;
            P8_T1.AddCell(P8_R22_C4);
            #endregion Line22


            #endregion Page8
            doc.Add(P8_T1);

            doc.NewPage();

            #region Page9

            PdfPTable P9_T1 = new PdfPTable(8);
            P9_T1.SetWidths(P7_Row1Width);

            #region Line1
            PdfPCell P9_R1_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R1_C1.Colspan = 2;
            P9_T1.AddCell(P9_R1_C1);

            PdfPCell P9_R1_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R1_C2.BorderWidthLeft = 0;
            P9_R1_C2.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R1_C2);

            PdfPCell P9_R1_C3 = new PdfPCell((new Phrase(new Chunk("•", Calibri_Font))));
            P9_R1_C3.BorderWidthLeft = 0;
            P9_R1_C3.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R1_C3);

            PdfPCell P9_R1_C4 = new PdfPCell((new Phrase(new Chunk("No insurer shall be deemed to provide cover and no insurer shall be liable to pay any claim or provide any benefit hereunder to the extent that the provision of such cover, payment of such claim or provision of such benefit would expose that insurer to any sanction, prohibition or restriction under United Nations resolutions or the trade or economic sanctions, laws or regulations of the European Union, France, Germany or United states of America.", Calibri_Nor_Font))));
            P9_R1_C4.Colspan = 4;
            P9_R1_C4.BorderWidthLeft = 0;
            P9_T1.AddCell(P9_R1_C4);
            #endregion Line1

            #region Line2
            PdfPCell P9_R2_C1 = new PdfPCell((new Phrase(new Chunk("Standard Exclusions", Calibri_Font))));
            P9_R2_C1.Colspan = 2;
            P9_R2_C1.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R2_C1);

            PdfPCell P9_R2_C2 = new PdfPCell((new Phrase(new Chunk("Exclusions for Death and Supplementary Benefits", Calibri_Font))));
            P9_R2_C2.BorderWidthTop = 0;
            P9_R2_C2.BorderWidthLeft = 0;
            P9_R2_C2.BorderWidthBottom = 0;
            P9_R2_C2.Colspan = 6;
            P9_T1.AddCell(P9_R2_C2);

            #endregion Line2

            #region Line3
            PdfPCell P9_R3_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R3_C1.Colspan = 2;
            P9_R3_C1.BorderWidthBottom = 0;
            P9_R3_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R3_C1);

            PdfPCell P9_R3_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R3_C2.BorderWidthTop = 0;
            P9_R3_C2.BorderWidthLeft = 0;
            P9_R3_C2.BorderWidthRight = 0;
            P9_R3_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R3_C2);

            PdfPCell P9_R3_C3 = new PdfPCell((new Phrase(new Chunk("1", Calibri_Nor_Font))));
            P9_R3_C3.BorderWidthTop = 0;
            P9_R3_C3.BorderWidthLeft = 0;
            P9_R3_C3.BorderWidthRight = 0;
            P9_R3_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R3_C3);

            PdfPCell P9_R3_C4 = new PdfPCell((new Phrase(new Chunk("War Exclusion", Calibri_Nor_Font))));
            P9_R3_C4.Colspan = 4;
            P9_R3_C4.BorderWidthTop = 0;
            P9_R3_C4.BorderWidthLeft = 0;
            P9_R3_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R3_C4);
            #endregion Line3

            #region Line4
            PdfPCell P9_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R4_C1.Colspan = 2;
            P9_R4_C1.BorderWidthBottom = 0;
            P9_R4_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R4_C1);

            PdfPCell P9_R4_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R4_C2.BorderWidthTop = 0;
            P9_R4_C2.BorderWidthLeft = 0;
            P9_R4_C2.BorderWidthRight = 0;
            P9_R4_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R4_C2);

            PdfPCell P9_R4_C3 = new PdfPCell((new Phrase(new Chunk("2", Calibri_Nor_Font))));
            P9_R4_C3.BorderWidthTop = 0;
            P9_R4_C3.BorderWidthLeft = 0;
            P9_R4_C3.BorderWidthRight = 0;
            P9_R4_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R4_C3);

            PdfPCell P9_R4_C4 = new PdfPCell((new Phrase(new Chunk("Atomic, Biological and Chemical/Nuclear Exclusion", Calibri_Nor_Font))));
            P9_R4_C4.Colspan = 4;
            P9_R4_C4.BorderWidthTop = 0;
            P9_R4_C4.BorderWidthLeft = 0;
            P9_R4_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R4_C4);
            #endregion Line4

            #region Line5
            PdfPCell P9_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R5_C1.Colspan = 2;
            P9_R5_C1.BorderWidthBottom = 0;
            P9_R5_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R5_C1);

            PdfPCell P9_R5_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R5_C2.BorderWidthTop = 0;
            P9_R5_C2.BorderWidthLeft = 0;
            P9_R5_C2.BorderWidthRight = 0;
            P9_R5_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R5_C2);

            PdfPCell P9_R5_C3 = new PdfPCell((new Phrase(new Chunk("3", Calibri_Nor_Font))));
            P9_R5_C3.BorderWidthTop = 0;
            P9_R5_C3.BorderWidthLeft = 0;
            P9_R5_C3.BorderWidthRight = 0;
            P9_R5_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R5_C3);

            PdfPCell P9_R5_C4 = new PdfPCell((new Phrase(new Chunk("Criminal Act Exclusion", Calibri_Nor_Font))));
            P9_R5_C4.Colspan = 4;
            P9_R5_C4.BorderWidthTop = 0;
            P9_R5_C4.BorderWidthLeft = 0;
            P9_R5_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R5_C4);
            #endregion Line5

            #region Line6
            PdfPCell P9_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R6_C1.Colspan = 2;
            P9_R6_C1.BorderWidthBottom = 0;
            P9_R6_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R6_C1);

            PdfPCell P9_R6_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R6_C2.BorderWidthTop = 0;
            P9_R6_C2.BorderWidthLeft = 0;
            P9_R6_C2.BorderWidthRight = 0;
            P9_R6_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R6_C2);

            PdfPCell P9_R6_C3 = new PdfPCell((new Phrase(new Chunk("4", Calibri_Nor_Font))));
            P9_R6_C3.BorderWidthTop = 0;
            P9_R6_C3.BorderWidthLeft = 0;
            P9_R6_C3.BorderWidthRight = 0;
            P9_R6_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R6_C3);

            PdfPCell P9_R6_C4 = new PdfPCell((new Phrase(new Chunk("Hazardous Sports Exclusion (As per AMI wordings)", Calibri_Nor_Font))));
            P9_R6_C4.Colspan = 4;
            P9_R6_C4.BorderWidthTop = 0;
            P9_R6_C4.BorderWidthLeft = 0;
            P9_R6_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R6_C4);
            #endregion Line6

            #region Line7
            PdfPCell P9_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R7_C1.Colspan = 2;
            P9_R7_C1.BorderWidthBottom = 0;
            P9_R7_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R7_C1);

            PdfPCell P9_R7_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R7_C2.BorderWidthTop = 0;
            P9_R7_C2.BorderWidthLeft = 0;
            P9_R7_C2.BorderWidthRight = 0;
            P9_R7_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R7_C2);

            PdfPCell P9_R7_C3 = new PdfPCell((new Phrase(new Chunk("5", Calibri_Nor_Font))));
            P9_R7_C3.BorderWidthTop = 0;
            P9_R7_C3.BorderWidthLeft = 0;
            P9_R7_C3.BorderWidthRight = 0;
            P9_R7_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R7_C3);

            PdfPCell P9_R7_C4 = new PdfPCell((new Phrase(new Chunk("Aviation Exclusion (as per AMI wordings)", Calibri_Nor_Font))));
            P9_R7_C4.Colspan = 4;
            P9_R7_C4.BorderWidthTop = 0;
            P9_R7_C4.BorderWidthLeft = 0;
            P9_R7_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R7_C4);
            #endregion Line7

            #region Line8
            PdfPCell P9_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R8_C1.Colspan = 2;
            P9_R8_C1.BorderWidthTop = 0;
            P9_R8_C1.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R8_C1);

            PdfPCell P9_R8_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R8_C2.BorderWidthTop = 0;
            P9_R8_C2.BorderWidthLeft = 0;
            P9_R8_C2.BorderWidthRight = 0;
            P9_R8_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R8_C2);

            PdfPCell P9_R8_C3 = new PdfPCell((new Phrase(new Chunk("6", Calibri_Nor_Font))));
            P9_R8_C3.BorderWidthTop = 0;
            P9_R8_C3.BorderWidthLeft = 0;
            P9_R8_C3.BorderWidthRight = 0;
            P9_R8_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R8_C3);

            PdfPCell P9_R8_C4 = new PdfPCell((new Phrase(new Chunk("Intentionally self-inflicted injury, suicide or attempted suicide (whether sane or insane) ", Calibri_Nor_Font))));
            P9_R8_C4.Colspan = 4;
            P9_R8_C4.BorderWidthTop = 0;
            P9_R8_C4.BorderWidthLeft = 0;
            P9_R8_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R8_C4);
            #endregion Line8

            #region Line9
            PdfPCell P9_R9_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R9_C1.Colspan = 2;
            P9_R9_C1.BorderWidthTop = 0;
            P9_R9_C1.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R9_C1);

            PdfPCell P9_R9_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R9_C2.BorderWidthTop = 0;
            P9_R9_C2.BorderWidthBottom = 0;
            P9_R9_C2.BorderWidthLeft = 0;
            P9_R9_C2.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R9_C2);

            PdfPCell P9_R9_C3 = new PdfPCell((new Phrase(new Chunk("7", Calibri_Font))));
            P9_R9_C3.BorderWidthTop = 0;
            P9_R9_C3.BorderWidthBottom = 0;
            P9_R9_C3.BorderWidthLeft = 0;
            P9_R9_C3.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R9_C3);

            PdfPCell P9_R9_C4 = new PdfPCell((new Phrase(new Chunk("Pandemic/Epidemic conditions are excluded except COVID-19", Calibri_Font))));
            P9_R9_C4.Colspan = 4;
            P9_R9_C4.BorderWidthTop = 0;
            P9_R9_C4.BorderWidthBottom = 0;
            P9_R9_C4.BorderWidthLeft = 0;
            P9_T1.AddCell(P9_R9_C4);
            #endregion Line9

            #region Line10
            PdfPCell P9_R10_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P9_R10_C1.Colspan = 2;
            P9_R10_C1.BorderWidthBottom = 0;
            P9_R10_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R10_C1);

            PdfPCell P9_R10_C2 = new PdfPCell((new Phrase(new Chunk("Exclusion’s applicable for supplementary benefits", Calibri_Font))));
            P9_R10_C2.BorderWidthTop = 0;
            P9_R10_C2.BorderWidthLeft = 0;
            P9_R10_C2.PaddingTop = 30;
            P9_R10_C2.BorderWidthBottom = 0;
            P9_R10_C2.Colspan = 6;
            P9_T1.AddCell(P9_R10_C2);
            #endregion Line10

            #region Line11
            PdfPCell P9_R11_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R11_C1.Colspan = 2;
            P9_R11_C1.BorderWidthBottom = 0;
            P9_R11_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R11_C1);

            PdfPCell P9_R11_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R11_C2.BorderWidthTop = 0;
            P9_R11_C2.BorderWidthLeft = 0;
            P9_R11_C2.BorderWidthRight = 0;
            P9_R11_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R11_C2);

            PdfPCell P9_R11_C3 = new PdfPCell((new Phrase(new Chunk("1", Calibri_Nor_Font))));
            P9_R11_C3.BorderWidthTop = 0;
            P9_R11_C3.BorderWidthLeft = 0;
            P9_R11_C3.BorderWidthRight = 0;
            P9_R11_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R11_C3);

            PdfPCell P9_R11_C4 = new PdfPCell((new Phrase(new Chunk("Misuse of drugs or alcohol, Intoxication, insanity", Calibri_Nor_Font))));
            P9_R11_C4.Colspan = 4;
            P9_R11_C4.BorderWidthTop = 0;
            P9_R11_C4.BorderWidthLeft = 0;
            P9_R11_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R11_C4);
            #endregion Line11

            #region Line12
            PdfPCell P9_R12_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R12_C1.Colspan = 2;
            P9_R12_C1.BorderWidthBottom = 0;
            P9_R12_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R12_C1);

            PdfPCell P9_R12_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R12_C2.BorderWidthTop = 0;
            P9_R12_C2.BorderWidthLeft = 0;
            P9_R12_C2.BorderWidthRight = 0;
            P9_R12_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R12_C2);

            PdfPCell P9_R12_C3 = new PdfPCell((new Phrase(new Chunk("2", Calibri_Nor_Font))));
            P9_R12_C3.BorderWidthTop = 0;
            P9_R12_C3.BorderWidthLeft = 0;
            P9_R12_C3.BorderWidthRight = 0;
            P9_R12_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R12_C3);

            PdfPCell P9_R12_C4 = new PdfPCell((new Phrase(new Chunk("Involvement in any underwater activity or training for any dangerous sport or riding or driving in any form of race or competition.", Calibri_Nor_Font))));
            P9_R12_C4.Colspan = 4;
            P9_R12_C4.BorderWidthTop = 0;
            P9_R12_C4.BorderWidthLeft = 0;
            P9_R12_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R12_C4);
            #endregion Line12

            #region Line13
            PdfPCell P9_R13_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R13_C1.Colspan = 2;
            P9_R13_C1.BorderWidthBottom = 0;
            P9_R13_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R13_C1);

            PdfPCell P9_R13_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R13_C2.BorderWidthTop = 0;
            P9_R13_C2.BorderWidthLeft = 0;
            P9_R13_C2.BorderWidthRight = 0;
            P9_R13_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R13_C2);

            PdfPCell P9_R13_C3 = new PdfPCell((new Phrase(new Chunk("3", Calibri_Nor_Font))));
            P9_R13_C3.BorderWidthTop = 0;
            P9_R13_C3.BorderWidthLeft = 0;
            P9_R13_C3.BorderWidthRight = 0;
            P9_R13_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R13_C3);

            PdfPCell P9_R13_C4 = new PdfPCell((new Phrase(new Chunk("Any breach of the law, Illegal act or criminal act by the member insured or any assault provoked by the member.", Calibri_Nor_Font))));
            P9_R13_C4.Colspan = 4;
            P9_R13_C4.BorderWidthTop = 0;
            P9_R13_C4.BorderWidthLeft = 0;
            P9_R13_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R13_C4);
            #endregion Line13

            #region Line14
            PdfPCell P9_R14_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R14_C1.Colspan = 2;
            P9_R14_C1.BorderWidthBottom = 0;
            P9_R14_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R14_C1);

            PdfPCell P9_R14_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R14_C2.BorderWidthTop = 0;
            P9_R14_C2.BorderWidthLeft = 0;
            P9_R14_C2.BorderWidthRight = 0;
            P9_R14_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R14_C2);

            PdfPCell P9_R14_C3 = new PdfPCell((new Phrase(new Chunk("4", Calibri_Nor_Font))));
            P9_R14_C3.BorderWidthTop = 0;
            P9_R14_C3.BorderWidthLeft = 0;
            P9_R14_C3.BorderWidthRight = 0;
            P9_R14_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R14_C3);

            PdfPCell P9_R14_C4 = new PdfPCell((new Phrase(new Chunk("Serving in any capacity of armed forces.", Calibri_Nor_Font))));
            P9_R14_C4.Colspan = 4;
            P9_R14_C4.BorderWidthTop = 0;
            P9_R14_C4.BorderWidthLeft = 0;
            P9_R14_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R14_C4);
            #endregion Line14

            #region Line15
            PdfPCell P9_R15_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R15_C1.Colspan = 2;
            P9_R15_C1.BorderWidthBottom = 0;
            P9_R15_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R15_C1);

            PdfPCell P9_R15_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R15_C2.BorderWidthTop = 0;
            P9_R15_C2.BorderWidthLeft = 0;
            P9_R15_C2.BorderWidthRight = 0;
            P9_R15_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R15_C2);

            PdfPCell P9_R15_C3 = new PdfPCell((new Phrase(new Chunk("5", Calibri_Nor_Font))));
            P9_R15_C3.BorderWidthTop = 0;
            P9_R15_C3.BorderWidthLeft = 0;
            P9_R15_C3.BorderWidthRight = 0;
            P9_R15_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R15_C3);

            PdfPCell P9_R15_C4 = new PdfPCell((new Phrase(new Chunk("Disability occasioned or contributed to by HIV infection, AIDS or an AIDS related condition ", Calibri_Nor_Font))));
            P9_R15_C4.Colspan = 4;
            P9_R15_C4.BorderWidthTop = 0;
            P9_R15_C4.BorderWidthLeft = 0;
            P9_R15_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R15_C4);
            #endregion Line15

            #region Line16
            PdfPCell P9_R16_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R16_C1.Colspan = 2;
            P9_R16_C1.BorderWidthTop = 0;
            P9_R16_C1.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R16_C1);

            PdfPCell P9_R16_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R16_C2.BorderWidthTop = 0;
            P9_R16_C2.BorderWidthLeft = 0;
            P9_R16_C2.BorderWidthRight = 0;
            P9_R16_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R16_C2);

            PdfPCell P9_R16_C3 = new PdfPCell((new Phrase(new Chunk("6", Calibri_Nor_Font))));
            P9_R16_C3.BorderWidthTop = 0;
            P9_R16_C3.BorderWidthLeft = 0;
            P9_R16_C3.BorderWidthRight = 0;
            P9_R16_C3.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R16_C3);

            PdfPCell P9_R16_C4 = new PdfPCell((new Phrase(new Chunk("Pregnancy, childbirth or abortion or any complications arising therefrom", Calibri_Nor_Font))));
            P9_R16_C4.Colspan = 4;
            P9_R16_C4.BorderWidthTop = 0;
            P9_R16_C4.BorderWidthLeft = 0;
            P9_R16_C4.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R16_C4);
            #endregion Line16

            #region Line17
            PdfPCell P9_R17_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R17_C1.Colspan = 2;
            P9_R17_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R17_C1);

            PdfPCell P9_R17_C2 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P9_R17_C2.BorderWidthTop = 0;
            P9_R17_C2.BorderWidthLeft = 0;
            P9_R17_C2.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R17_C2);

            PdfPCell P9_R17_C3 = new PdfPCell((new Phrase(new Chunk("7", Calibri_Nor_Font))));
            P9_R17_C3.BorderWidthTop = 0;
            P9_R17_C3.BorderWidthLeft = 0;
            P9_R17_C3.BorderWidthRight = 0;
            P9_T1.AddCell(P9_R17_C3);

            PdfPCell P9_R17_C4 = new PdfPCell((new Phrase(new Chunk("Mental Illness or Mental disease or Nervous conditions.", Calibri_Nor_Font))));
            P9_R17_C4.Colspan = 4;
            P9_R17_C4.BorderWidthTop = 0;
            P9_R17_C4.BorderWidthLeft = 0;
            P9_T1.AddCell(P9_R17_C4);
            #endregion Line17

            #region Line18
            PdfPCell P9_R18_C1 = new PdfPCell((new Phrase(new Chunk("Important Definitions", Calibri_Font))));
            P9_R18_C1.Colspan = 8;
            P9_R18_C1.PaddingTop = 8;
            P9_R18_C1.PaddingBottom = 8;
            P9_R18_C1.HorizontalAlignment = Element.ALIGN_CENTER;
            P9_R18_C1.VerticalAlignment = Element.ALIGN_MIDDLE;
            P9_T1.AddCell(P9_R18_C1);
            #endregion Line18

            #region Line19
            PdfPCell P9_R19_C1 = new PdfPCell((new Phrase(new Chunk("Actively at Work", Calibri_Font))));
            P9_R19_C1.Colspan = 2;
            P9_T1.AddCell(P9_R19_C1);

            PdfPCell P9_R19_C2 = new PdfPCell((new Phrase(new Chunk("The employee(s) is actually at work on the inception of cover and performing each and every duty of their present occupation on a customary and full time basis. Any employee shall be deemed actively at work  if he/she is on annual leave or on normal field break or is not absent from work due to sickness, injury or other form of disability. If an employee is not actively at work on the inception date he/she will be covered under the policy when he/she has returned to work and has completed 14 days of uninterrupted work in his/her normal capacity", Calibri_Nor_Font))));
            P9_R19_C2.Colspan = 6;
            P9_T1.AddCell(P9_R19_C2);
            #endregion Line19

            #region Line20
            PdfPCell P9_R20_C1 = new PdfPCell((new Phrase(new Chunk("Permanent Total Disability (Accident/Sickness)", Calibri_Font))));
            P9_R20_C1.Colspan = 2;
            P9_T1.AddCell(P9_R20_C1);

            PdfPCell P9_R20_C2 = new PdfPCell((new Phrase(new Chunk("PTD means that the member is “unable to follow own occupation or similar occupation to which reasonably suited by reason of training, education or experience”. PTD benefits are subject to deferment of benefit until 12 months following the event giving rise to the claim", Calibri_Nor_Font))));
            P9_R20_C2.Colspan = 6;
            P9_T1.AddCell(P9_R20_C2);
            #endregion Line20

            #region Line21
            PdfPCell P9_R21_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P9_R21_C1.MinimumHeight = 30;
            P9_R21_C1.Border = 0;
            P9_R21_C1.Colspan = 8;
            P9_T1.AddCell(P9_R21_C1);

            #endregion Line21

            #region Line22
            PdfPCell P9_R22_C1 = new PdfPCell((new Phrase(new Chunk("Eligibility", Calibri_Font))));
            P9_R22_C1.Colspan = 2;
            P9_R22_C1.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R22_C1);

            PdfPCell P9_R22_C2 = new PdfPCell((new Phrase(new Chunk("All eligible members of the insured actively at work up to attainment of age 65 years for death and disability benefits. Members above age 65 and up to 70 years will be covered for DAC only subject to being actively at work and Medical Underwriting.", Calibri_Nor_Font))));
            P9_R22_C2.Colspan = 6;
            P9_R22_C2.BorderWidthBottom = 0;
            P9_T1.AddCell(P9_R22_C2);
            #endregion Line22

            #region Line23
            PdfPCell P9_R23_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Font))));
            P9_R23_C1.Colspan = 2;
            P9_R23_C1.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R23_C1);

            PdfPCell P9_R23_C2 = new PdfPCell((new Phrase(new Chunk("Eligible are such members proposed by the PARTICIPANT, whether listed on the original Census Sheet at the time of commencement of the Scheme or at the time of the Scheme Anniversary and who are working on a full-time basis with the Participant and whose lives the Company has agreed to assure.  Members not actively at work on the commencement date of the Scheme shall only be included after he has returned to work and has been actively employed for a continuous period of at least two weeks after which only this scheme will validate cover for that member.", Calibri_Nor_Font))));
            P9_R23_C2.Colspan = 6;
            P9_R23_C2.PaddingTop = 15;
            P9_R23_C2.BorderWidthTop = 0;
            P9_T1.AddCell(P9_R23_C2);
            #endregion Line23

            doc.Add(P9_T1);
            #endregion Page9

            doc.NewPage();

            #region Page10

            PdfPTable P10_T1 = new PdfPTable(8);
            P10_T1.SetWidths(P7_Row1Width);

            #region Line1
            PdfPCell P10_R1_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R1_C1.Colspan = 2;
            P10_T1.AddCell(P10_R1_C1);

            PdfPCell P10_R1_C2 = new PdfPCell((new Phrase(new Chunk("No assurance shall be granted for a member of the Scheme or for an increase in a Sum Assured for which no information has been notified as aforesaid.", Calibri_Nor_Font))));
            P10_R1_C2.BorderWidthLeft = 0;
            P10_R1_C2.Colspan = 6;
            P10_T1.AddCell(P10_R1_C2);
            #endregion Line1

            #region Line2
            PdfPCell P10_R2_C1 = new PdfPCell((new Phrase(new Chunk("Repatriation Expenses of Deceased Employee Clause", Calibri_Font))));
            P10_R2_C1.Colspan = 2;
            P10_R2_C1.BorderWidthBottom = 0;
            P10_T1.AddCell(P10_R2_C1);

            Phrase P10_R2_P = new Phrase();
            P10_R2_P.Add(new Chunk("Level of Benefits : RO.", Normal_font));
            P10_R2_P.Add(new Chunk("1,000", Bold_font));
            P10_R2_P.Add(new Chunk("/- per member", Normal_font));

            PdfPCell P10_R2_C2 = new PdfPCell(P10_R2_P);
            P10_R2_C2.PaddingTop = 10;
            P10_R2_C2.BorderWidthLeft = 0;
            P10_R2_C2.BorderWidthBottom = 0;
            P10_R2_C2.BorderWidthTop = 0;
            P10_R2_C2.Colspan = 6;
            P10_T1.AddCell(P10_R2_C2);
            #endregion Line2

            #region Line3
            PdfPCell P10_R3_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R3_C1.Colspan = 2;
            P10_R3_C1.BorderWidthBottom = 0;
            P10_R3_C1.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R3_C1);

            PdfPCell P10_R3_C2 = new PdfPCell((new Phrase(new Chunk("Payable :To the grantee following Death as per Third Schedule", Calibri_Nor_Font))));
            P10_R3_C2.BorderWidthLeft = 0;
            P10_R3_C2.BorderWidthTop = 0;
            P10_R3_C2.BorderWidthBottom = 0;
            P10_R3_C2.Colspan = 6;
            P10_T1.AddCell(P10_R3_C2);
            #endregion Line3

            #region Line4
            PdfPCell P10_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R4_C1.Colspan = 2;
            P10_R4_C1.BorderWidthBottom = 0;
            P10_R4_C1.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R4_C1);

            PdfPCell P10_R4_C2 = new PdfPCell((new Phrase(new Chunk("Special provisions:", Calibri_Nor_Font))));
            P10_R4_C2.PaddingTop = 10;
            P10_R4_C2.BorderWidthLeft = 0;
            P10_R4_C2.BorderWidthBottom = 0;
            P10_R4_C2.BorderWidthTop = 0;
            P10_R4_C2.Colspan = 6;
            P10_T1.AddCell(P10_R4_C2);
            #endregion Line4

            #region Line5
            PdfPCell P10_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R5_C1.Colspan = 2;
            P10_R5_C1.BorderWidthBottom = 0;
            P10_R5_C1.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R5_C1);

            PdfPCell P10_R5_C2 = new PdfPCell((new Phrase(new Chunk("1", Calibri_Nor_Font))));
            P10_R5_C2.Border = 0;
            P10_T1.AddCell(P10_R5_C2);

            PdfPCell P10_R5_C3 = new PdfPCell((new Phrase(new Chunk("It is hereby declared and agreed that the Policy is extended to cover expenses incurred in repatriating either an Insured person or his or her mortal remains to his or her home Country.", Calibri_Nor_Font))));
            P10_R5_C3.BorderWidthLeft = 0;
            P10_R5_C3.BorderWidthBottom = 0;
            P10_R5_C3.BorderWidthTop = 0;
            P10_R5_C3.Colspan = 6;
            P10_T1.AddCell(P10_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P10_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R6_C1.Colspan = 2;
            P10_R6_C1.BorderWidthBottom = 0;
            P10_R6_C1.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R6_C1);

            PdfPCell P10_R6_C2 = new PdfPCell((new Phrase(new Chunk("2", Calibri_Nor_Font))));
            P10_R6_C2.Border = 0;
            P10_T1.AddCell(P10_R6_C2);

            PdfPCell P10_R6_C3 = new PdfPCell((new Phrase(new Chunk("Recoverable Expenses shall be restricted to costs, including coffin and airline charges and the airfare of an escort.", Calibri_Nor_Font))));
            P10_R6_C3.BorderWidthLeft = 0;
            P10_R6_C3.BorderWidthBottom = 0;
            P10_R6_C3.BorderWidthTop = 0;
            P10_R6_C3.Colspan = 6;
            P10_T1.AddCell(P10_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P10_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Calibri_Nor_Font))));
            P10_R7_C1.Colspan = 2;
            P10_R7_C1.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R7_C1);

            PdfPCell P10_R7_C2 = new PdfPCell((new Phrase(new Chunk("3", Calibri_Nor_Font))));
            P10_R7_C2.BorderWidthLeft = 0;
            P10_R7_C2.BorderWidthRight = 0;
            P10_R7_C2.BorderWidthTop = 0;
            P10_T1.AddCell(P10_R7_C2);

            PdfPCell P10_R7_C3 = new PdfPCell((new Phrase(new Chunk("Cover shall not include any expenses incurred in addition to minimum required by the said regulations nor any funeral or other expenses incurred after delivering of the deceased to deceased’s place of origin(or such other place as shall specifically agree by the Company)", Calibri_Nor_Font))));
            P10_R7_C3.BorderWidthLeft = 0;
            P10_R7_C3.BorderWidthTop = 0;
            P10_R7_C3.Colspan = 6;
            P10_T1.AddCell(P10_R7_C3);
            #endregion Line7

            doc.Add(P10_T1);
            #endregion Page10

            doc.NewPage();

            #region Page11
            PdfPTable P11_T1 = new PdfPTable(3);
            float[] P11_Row1Width = new float[] { 8, 8, 84 };
            P11_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P11_R1_C1 = new PdfPCell((new Phrase(new Chunk("Following exclusion wordings which are applicable to the Group Life Scheme:", Bold_font))));
            P11_R1_C1.PaddingTop = 30;
            P11_R1_C1.PaddingBottom = 15;
            P11_R1_C1.Border = 0;
            P11_R1_C1.Colspan = 3;
            P11_T1.AddCell(P11_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P11_R2_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R2_C1.PaddingBottom = 15;
            P11_R2_C1.Border = 0;
            P11_R2_C1.Colspan = 2;
            P11_T1.AddCell(P11_R2_C1);

            PdfPCell P11_R2_C2 = new PdfPCell((new Phrase(new Chunk("No Life Benefits shall be payable if death or disability results directly or indirectly from:", Normal_font))));
            P11_R2_C2.PaddingBottom = 15;
            P11_R2_C2.Border = 0;
            P11_T1.AddCell(P11_R2_C2);
            #endregion Line2

            #region Line3
            PdfPCell P11_R3_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R3_C1.Border = 0;
            P11_R3_C1.Colspan = 2;
            P11_T1.AddCell(P11_R3_C1);

            Phrase P11_R3_P = new Phrase();
            P11_R3_P.Add(new Chunk("War Exclusion", Normal_font));
            P11_R3_P.Add(new Chunk("(Passive War ", Bold_font));
            P11_R3_P.Add(new Chunk("(to be deleted if passive war is covered, Active war should remain) /Active War)", Normal_font));
            P11_R3_P.Add(new Chunk("\n", Normal_font));
            P11_R3_P.Add(new Chunk("War, invasion, act of foreign enemies, hostilities or warlike operations (whether war be declared or not), including civil war, mutiny, riot, civil commotion assuming the proportions of or amounting to a popular rising, military rising, insurrection, revolution, rebellion, conspiracy, military or usurped power, martial law or state of siege, or any acts of any person acting on behalf of or in connection with any organization actively directed towards the overthrow by force of any Government or to the influencing of it by terrorism or violence.  ", Normal_font));

            PdfPCell P11_R3_C2 = new PdfPCell(P11_R3_P);
            P11_R3_C2.Border = 0;
            P11_T1.AddCell(P11_R3_C2);
            #endregion Line3

            #region Line4
            PdfPCell P11_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R4_C1.Border = 0;
            P11_T1.AddCell(P11_R4_C1);

            PdfPCell P11_R4_C2 = new PdfPCell((new Phrase(new Chunk("a)", Normal_font))));
            P11_R4_C2.Border = 0;
            P11_R4_C2.PaddingTop = 10;
            P11_T1.AddCell(P11_R4_C2);

            Phrase P11_R4_P1 = new Phrase();
            P11_R4_P1.Add(new Chunk("Atomic, Biological and Chemical/Nuclear Exclusion", Normal_font));
            P11_R4_P1.Add(new Chunk("\n", Normal_font));
            P11_R4_P1.Add(new Chunk("This scheme does not cover any claim(s) in any way caused or contributed to by or resulting from or arising out of or in connection with biological, chemical, nuclear fission, nuclear fusion or nuclear explosion, pollution, contamination and / or radioactive contamination, fire following thereon.", Normal_font));

            PdfPCell P11_R4_C3 = new PdfPCell(P11_R4_P1);
            P11_R4_C3.Border = 0;
            P11_R4_C3.PaddingTop = 10;
            P11_T1.AddCell(P11_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P11_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R5_C1.Border = 0;
            P11_T1.AddCell(P11_R5_C1);

            PdfPCell P11_R5_C2 = new PdfPCell((new Phrase(new Chunk("b)", Normal_font))));
            P11_R5_C2.Border = 0;
            P11_R5_C2.PaddingTop = 10;
            P11_T1.AddCell(P11_R5_C2);

            Phrase P11_R5_P1 = new Phrase();
            P11_R5_P1.Add(new Chunk("Criminal Act Exclusion ", Normal_font));
            P11_R5_P1.Add(new Chunk("\n", Normal_font));
            P11_R5_P1.Add(new Chunk("Any breach of law by the insured. The committing or attempting to commit or the aiding or abetting by the insured person of any unlawful act- even if, in doing so, there was no intention by the life insured to cause himself or herself injury or illness.", Normal_font));

            PdfPCell P11_R5_C3 = new PdfPCell(P11_R5_P1);
            P11_R5_C3.Border = 0;
            P11_R5_C3.PaddingTop = 10;
            P11_T1.AddCell(P11_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P11_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R6_C1.Border = 0;
            P11_T1.AddCell(P11_R6_C1);

            PdfPCell P11_R6_C2 = new PdfPCell((new Phrase(new Chunk("c)", Normal_font))));
            P11_R6_C2.Border = 0;
            P11_R6_C2.PaddingTop = 10;
            P11_T1.AddCell(P11_R6_C2);

            Phrase P11_R6_P1 = new Phrase();
            P11_R6_P1.Add(new Chunk("Hazardous Sports Exclusion", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Engaging in or training for any dangerous or hazardous sport, competitions or activities. Hazardous sports or activities may include the following: ", Normal_font));
            P11_R6_P1.Add(new Chunk("\n\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Winter sports such as sleighing, Ski jumping, Ice hockey etc.", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Water sports such as powerboats, water skiing, Jet Skiing, diving etc.", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Climbing activities such as mountaineering, Rock climbing etc.", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Any form of aerial flight including light aircraft, parachuting, hang-gliding, monoplanes etc. ", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Any form of racing by horse or by Motor vehicle “or any other similar activities”.", Normal_font));
            P11_R6_P1.Add(new Chunk("\n", Normal_font));
            P11_R6_P1.Add(new Chunk("Any other hazardous sports or activities apart from mentioned above", Normal_font));

            PdfPCell P11_R6_C3 = new PdfPCell(P11_R6_P1);
            P11_R6_C3.Border = 0;
            P11_R6_C3.PaddingTop = 10;
            P11_T1.AddCell(P11_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P11_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P11_R7_C1.Border = 0;
            P11_T1.AddCell(P11_R7_C1);

            PdfPCell P11_R7_C2 = new PdfPCell((new Phrase(new Chunk("d)", Normal_font))));
            P11_R7_C2.Border = 0;
            P11_R7_C2.PaddingTop = 10;
            P11_T1.AddCell(P11_R7_C2);

            Phrase P11_R7_P1 = new Phrase();
            P11_R7_P1.Add(new Chunk("Aviation Exclusion", Normal_font));
            P11_R7_P1.Add(new Chunk("\n", Normal_font));
            P11_R7_P1.Add(new Chunk("Engaging in aviation other than as a fare-paying passenger on a regular route of a recognized airline;", Normal_font));

            PdfPCell P11_R7_C3 = new PdfPCell(P11_R7_P1);
            P11_R7_C3.Border = 0;
            P11_R7_C3.PaddingTop = 10;
            P11_T1.AddCell(P11_R7_C3);
            #endregion Line7

            #region Line8
            PdfPCell P11_R8_C1 = new PdfPCell((new Phrase(new Chunk("Notwithstanding anything contained in Provision 6 Premium rates for additional benefits will be applicable for one year only and the Company shall have the right to alter these rates at any Scheme Anniversary.", Normal_font))));
            P11_R8_C1.Border = 0;
            P11_R8_C1.PaddingTop = 15;
            P11_R8_C1.Colspan = 3;
            P11_T1.AddCell(P11_R8_C1);
            #endregion Line8

            #region Line9
            PdfPCell P11_R9_C1 = new PdfPCell((new Phrase(new Chunk("*************", Normal_font))));
            P11_R9_C1.Border = 0;
            P11_R9_C1.HorizontalAlignment = Element.ALIGN_CENTER;
            P11_R9_C1.Colspan = 3;
            P11_T1.AddCell(P11_R9_C1);
            #endregion Line9

            doc.Add(P11_T1);
            #endregion Page11

            doc.NewPage();
            #region Page12

            PdfPTable P12_T1 = new PdfPTable(3);
            P12_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P12_R1_C1 = new PdfPCell((new Phrase(new Chunk("ENDORSEMENT No.    001", SubHead_font))));
            P12_R1_C1.PaddingTop = 30;
            P12_R1_C1.Border = 0;
            P12_R1_C1.Colspan = 3;
            P12_T1.AddCell(P12_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P12_R2_C1 = new PdfPCell((new Phrase(new Chunk("PERMANENT TOTAL DISABILITY BENEFITS (ACCIDENT ONLY)", SubHead_font))));
            P12_R2_C1.PaddingBottom = 20;
            P12_R2_C1.Border = 0;
            P12_R2_C1.Colspan = 3;
            P12_T1.AddCell(P12_R2_C1);
            #endregion Line2

            #region Line3
            PdfPCell P12_R3_C1 = new PdfPCell((new Phrase(new Chunk("It is hereby declared that in the event of the member being totally and permanently disabled as a result of accident and being unable to follow his own occupation or suited occupation to which suited by reason of training, education, or experience the Company shall, following completion of 12 (Twelve) months disability as herein defined pay the benefits under the scheme which will automatically terminate the Life cover therein, providing that   :", Normal_font))));
            P12_R3_C1.PaddingBottom = 10;
            P12_R3_C1.Border = 0;
            P12_R3_C1.Colspan = 3;
            P12_T1.AddCell(P12_R3_C1);
            #endregion Line3

            #region Line4
            PdfPCell P12_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P12_R4_C1.Border = 0;
            P12_T1.AddCell(P12_R4_C1);

            PdfPCell P12_R4_C2 = new PdfPCell((new Phrase(new Chunk("1.", Normal_font))));
            P12_R4_C2.Border = 0;
            P12_R4_C2.PaddingBottom = 10;
            P12_T1.AddCell(P12_R4_C2);

            PdfPCell P12_R4_C3 = new PdfPCell((new Phrase(new Chunk("This Scheme was in force and the claimant was a scheme member at the date upon which the member first becomes disabled.", Normal_font))));
            P12_R4_C3.Border = 0;
            P12_R4_C3.PaddingBottom = 10;
            P12_T1.AddCell(P12_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P12_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P12_R5_C1.Border = 0;
            P12_T1.AddCell(P12_R5_C1);

            PdfPCell P12_R5_C2 = new PdfPCell((new Phrase(new Chunk("2.", Normal_font))));
            P12_R5_C2.Border = 0;
            P12_R5_C2.PaddingBottom = 10;
            P12_T1.AddCell(P12_R5_C2);

            PdfPCell P12_R5_C3 = new PdfPCell((new Phrase(new Chunk("The first day of disablement occurred prior to the attainment of the claimant of age 65.", Normal_font))));
            P12_R5_C3.Border = 0;
            P12_R5_C3.PaddingBottom = 10;
            P12_T1.AddCell(P12_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P12_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P12_R6_C1.Border = 0;
            P12_T1.AddCell(P12_R6_C1);

            PdfPCell P12_R6_C2 = new PdfPCell((new Phrase(new Chunk("3.", Normal_font))));
            P12_R6_C2.Border = 0;
            P12_R6_C2.PaddingBottom = 10;
            P12_T1.AddCell(P12_R6_C2);

            PdfPCell P12_R6_C3 = new PdfPCell((new Phrase(new Chunk("The member has been disabled and totally unable to follow his normal occupation for a minimum period of Twelve months consecutively.", Normal_font))));
            P12_R6_C3.Border = 0;
            P12_R6_C3.PaddingBottom = 10;
            P12_T1.AddCell(P12_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P12_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P12_R7_C1.Border = 0;
            P12_T1.AddCell(P12_R7_C1);

            PdfPCell P12_R7_C2 = new PdfPCell((new Phrase(new Chunk("4.", Normal_font))));
            P12_R7_C2.Border = 0;
            P12_R7_C2.PaddingBottom = 10;
            P12_T1.AddCell(P12_R7_C2);

            PdfPCell P12_R7_C3 = new PdfPCell((new Phrase(new Chunk("The disability resulted solely, directly and independently of all other causes, from bodily injury effected through external, violent and visible means within 30 	days of such accident and intimation within maximum 180 days beyond which claim is time barred.", Normal_font))));
            P12_R7_C3.Border = 0;
            P12_R7_C3.PaddingBottom = 10;
            P12_T1.AddCell(P12_R7_C3);
            #endregion Line7

            #region Line8
            PdfPCell P12_R8_C1 = new PdfPCell((new Phrase(new Chunk("This endorsement shall not apply if the accident occurred either directly or indirectly from any of the exclusions as applying to ancillary benefits.", Normal_font))));
            P12_R8_C1.PaddingBottom = 10;
            P12_R8_C1.Border = 0;
            P12_R8_C1.Colspan = 3;
            P12_T1.AddCell(P12_R8_C1);
            #endregion Line8

            #region Line9
            PdfPCell P12_R9_C1 = new PdfPCell((new Phrase(new Chunk("If the assured qualifies for payment both under this section and the Permanent Partial Disability Section of the Policy, then the total payment shall not exceed the greater of the sum assured.", Normal_font))));
            P12_R9_C1.PaddingBottom = 10;
            P12_R9_C1.Border = 0;
            P12_R9_C1.Colspan = 3;
            P12_T1.AddCell(P12_R9_C1);
            #endregion Line9

            doc.Add(P12_T1);
            #endregion Page12

            doc.NewPage();
            #region Page13

            PdfPTable P13_T1 = new PdfPTable(3);
            P13_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P13_R1_C1 = new PdfPCell((new Phrase(new Chunk("ENDORSEMENT No.    002", SubHead_font))));
            P13_R1_C1.PaddingTop = 30;
            P13_R1_C1.Border = 0;
            P13_R1_C1.Colspan = 3;
            P13_T1.AddCell(P13_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P13_R2_C1 = new PdfPCell((new Phrase(new Chunk("PERMANENT TOTAL DISABILITY BENEFITS (SICKNESS ONLY)", SubHead_font))));
            P13_R2_C1.PaddingBottom = 20;
            P13_R2_C1.Border = 0;
            P13_R2_C1.Colspan = 3;
            P13_T1.AddCell(P13_R2_C1);
            #endregion Line2

            #region Line3
            PdfPCell P13_R3_C1 = new PdfPCell((new Phrase(new Chunk("It is hereby declared that in the event of the member being totally and permanently disabled as a result of sickness and being unable to follow his own occupation or suited occupation to which suited by reason of training, education, or experience the Company shall, following completion of 12 (Twelve) months disability as herein defined, pay the benefits under the scheme which will automatically terminate the Life cover therein, providing that:", Normal_font))));
            P13_R3_C1.PaddingBottom = 10;
            P13_R3_C1.Border = 0;
            P13_R3_C1.Colspan = 3;
            P13_T1.AddCell(P13_R3_C1);
            #endregion Line3

            #region Line4
            PdfPCell P13_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P13_R4_C1.Border = 0;
            P13_T1.AddCell(P13_R4_C1);

            PdfPCell P13_R4_C2 = new PdfPCell((new Phrase(new Chunk("1.", Normal_font))));
            P13_R4_C2.Border = 0;
            P13_R4_C2.PaddingBottom = 10;
            P13_T1.AddCell(P13_R4_C2);

            PdfPCell P13_R4_C3 = new PdfPCell((new Phrase(new Chunk("This Scheme was in force and the claimant was a scheme member at the date upon which the member first becomes disabled.", Normal_font))));
            P13_R4_C3.Border = 0;
            P13_R4_C3.PaddingBottom = 10;
            P13_T1.AddCell(P13_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P13_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P13_R5_C1.Border = 0;
            P13_T1.AddCell(P13_R5_C1);

            PdfPCell P13_R5_C2 = new PdfPCell((new Phrase(new Chunk("2.", Normal_font))));
            P13_R5_C2.Border = 0;
            P13_R5_C2.PaddingBottom = 10;
            P13_T1.AddCell(P13_R5_C2);

            PdfPCell P13_R5_C3 = new PdfPCell((new Phrase(new Chunk("The first day of disablement occurred prior to the attainment of the claimant of age 65.", Normal_font))));
            P13_R5_C3.Border = 0;
            P13_R5_C3.PaddingBottom = 10;
            P13_T1.AddCell(P13_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P13_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P13_R6_C1.Border = 0;
            P13_T1.AddCell(P13_R6_C1);

            PdfPCell P13_R6_C2 = new PdfPCell((new Phrase(new Chunk("3.", Normal_font))));
            P13_R6_C2.Border = 0;
            P13_R6_C2.PaddingBottom = 10;
            P13_T1.AddCell(P13_R6_C2);

            PdfPCell P13_R6_C3 = new PdfPCell((new Phrase(new Chunk("The member has been disabled and totally unable to follow his normal occupation for a minimum period of Twelve months consecutively.", Normal_font))));
            P13_R6_C3.Border = 0;
            P13_R6_C3.PaddingBottom = 10;
            P13_T1.AddCell(P13_R6_C3);
            #endregion Line6


            #region Line7
            PdfPCell P13_R7_C1 = new PdfPCell((new Phrase(new Chunk("This endorsement shall not apply if the accident occurred either directly or indirectly from any of the exclusions as applying to ancillary benefits.", Normal_font))));
            P13_R7_C1.PaddingBottom = 10;
            P13_R7_C1.Border = 0;
            P13_R7_C1.Colspan = 3;
            P13_T1.AddCell(P13_R7_C1);
            #endregion Line7

            #region Line8
            PdfPCell P13_R8_C1 = new PdfPCell((new Phrase(new Chunk("If the assured qualifies for payment both under this section and the Permanent Partial Disability Section of the Policy, then the total payment shall not exceed the greater of the sum assured.", Normal_font))));
            P13_R8_C1.PaddingBottom = 10;
            P13_R8_C1.Border = 0;
            P13_R8_C1.Colspan = 3;
            P13_T1.AddCell(P13_R8_C1);
            #endregion Line8

            doc.Add(P13_T1);
            #endregion Page13

            doc.NewPage();
            #region Page14

            PdfPTable P14_T1 = new PdfPTable(3);
            P14_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P14_R1_C1 = new PdfPCell((new Phrase(new Chunk("ENDORSEMENT No.    003", SubHead_font))));
            P14_R1_C1.PaddingTop = 30;
            P14_R1_C1.Border = 0;
            P14_R1_C1.Colspan = 3;
            P14_T1.AddCell(P14_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P14_R2_C1 = new PdfPCell((new Phrase(new Chunk("PERMANENT PARTIAL DISABILITY BENEFITS (ACCIDENT ONLY) ", SubHead_font))));
            P14_R2_C1.PaddingBottom = 20;
            P14_R2_C1.Border = 0;
            P14_R2_C1.Colspan = 3;
            P14_T1.AddCell(P14_R2_C1);
            #endregion Line2

            #region Line3
            PdfPCell P14_R3_C1 = new PdfPCell((new Phrase(new Chunk("It is hereby declared that in the case of loss by physical separation of any limb or member of the body or total and irrecoverable loss of sight as a result of accident, the Company shall pay the member the percentage of the benefit in the attached scale provided that   :", Normal_font))));
            P14_R3_C1.PaddingBottom = 10;
            P14_R3_C1.Border = 0;
            P14_R3_C1.Colspan = 3;
            P14_T1.AddCell(P14_R3_C1);
            #endregion Line3

            #region Line4
            PdfPCell P14_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P14_R4_C1.Border = 0;
            P14_T1.AddCell(P14_R4_C1);

            PdfPCell P14_R4_C2 = new PdfPCell((new Phrase(new Chunk("1.", Normal_font))));
            P14_R4_C2.Border = 0;
            P14_R4_C2.PaddingBottom = 10;
            P14_T1.AddCell(P14_R4_C2);

            PdfPCell P14_R4_C3 = new PdfPCell((new Phrase(new Chunk("This Scheme was in force and the claimant was a scheme member at the date of the event resulting in the claim occurring.", Normal_font))));
            P14_R4_C3.Border = 0;
            P14_R4_C3.PaddingBottom = 10;
            P14_T1.AddCell(P14_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P14_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P14_R5_C1.Border = 0;
            P14_T1.AddCell(P14_R5_C1);

            PdfPCell P14_R5_C2 = new PdfPCell((new Phrase(new Chunk("2.", Normal_font))));
            P14_R5_C2.Border = 0;
            P14_R5_C2.PaddingBottom = 10;
            P14_T1.AddCell(P14_R5_C2);

            PdfPCell P14_R5_C3 = new PdfPCell((new Phrase(new Chunk("The event occurred prior to the attainment of the claimant of age 65.", Normal_font))));
            P14_R5_C3.Border = 0;
            P14_R5_C3.PaddingBottom = 10;
            P14_T1.AddCell(P14_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P14_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P14_R6_C1.Border = 0;
            P14_T1.AddCell(P14_R6_C1);

            PdfPCell P14_R6_C2 = new PdfPCell((new Phrase(new Chunk("3.", Normal_font))));
            P14_R6_C2.Border = 0;
            P14_R6_C2.PaddingBottom = 10;
            P14_T1.AddCell(P14_R6_C2);

            PdfPCell P14_R6_C3 = new PdfPCell((new Phrase(new Chunk("The loss resulted solely, directly and independently of all other 	causes,  from bodily injury affected through external violent, visible and accidental means or from a surgical operation necessarily 	consequent thereon within 30 days of such accident.", Normal_font))));
            P14_R6_C3.Border = 0;
            P14_R6_C3.PaddingBottom = 10;
            P14_T1.AddCell(P14_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P14_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P14_R7_C1.Border = 0;
            P14_T1.AddCell(P14_R7_C1);

            PdfPCell P14_R7_C2 = new PdfPCell((new Phrase(new Chunk("4.", Normal_font))));
            P14_R7_C2.Border = 0;
            P14_R7_C2.PaddingBottom = 10;
            P14_T1.AddCell(P14_R7_C2);

            PdfPCell P14_R7_C3 = new PdfPCell((new Phrase(new Chunk("In no circumstances will the total amount payable under this benefit 	in respect of any member, whether as a result of one accident or a 	number of accidents, exceed 100% of the benefit.", Normal_font))));
            P14_R7_C3.Border = 0;
            P14_R7_C3.PaddingBottom = 10;
            P14_T1.AddCell(P14_R7_C3);
            #endregion Line7

            #region Line8
            PdfPCell P14_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P14_R8_C1.Border = 0;
            P14_T1.AddCell(P14_R8_C1);

            PdfPCell P14_R8_C2 = new PdfPCell((new Phrase(new Chunk("5.", Normal_font))));
            P14_R8_C2.Border = 0;
            P14_R8_C2.PaddingBottom = 10;
            P14_T1.AddCell(P14_R8_C2);

            PdfPCell P14_R8_C3 = new PdfPCell((new Phrase(new Chunk("The member survived the accident and is alive 30 days after such accident or such earlier date when payment of the claim is effected by the Company. If a claim is also subsequently lodged under the Accidental Death or Permanent Total Disability or benefit Sections of this scheme in respect of death or disability arising from the same accident as gave rise to the claim under this Section of the scheme, such subsequent claim will be reduced by any amount already paid under this Section.", Normal_font))));
            P14_R8_C3.Border = 0;
            P14_R8_C3.PaddingBottom = 10;
            P14_T1.AddCell(P14_R8_C3);
            #endregion Line8

            #region Line9
            PdfPCell P14_R9_C1 = new PdfPCell((new Phrase(new Chunk("This endorsement shall not apply if the accident occurred either directly or indirectly from any of the exclusions as applying to ancillary benefits.", Normal_font))));
            P14_R9_C1.PaddingBottom = 10;
            P14_R9_C1.Border = 0;
            P14_R9_C1.Colspan = 3;
            P14_T1.AddCell(P14_R9_C1);
            #endregion Line9

            #region Line10
            PdfPCell P14_R10_C1 = new PdfPCell((new Phrase(new Chunk("If the assured qualifies for payment both under this section and the Permanent Partial Disability Section of the Policy, then the total payment shall not exceed the greater of the sum assured.", Normal_font))));
            P14_R10_C1.PaddingBottom = 10;
            P14_R10_C1.Border = 0;
            P14_R10_C1.Colspan = 3;
            P14_T1.AddCell(P14_R10_C1);
            #endregion Line10

            doc.Add(P14_T1);
            #endregion Page14

            doc.NewPage();
            #region Page15

            PdfPTable P15_T1 = new PdfPTable(3);
            P15_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P15_R1_C1 = new PdfPCell((new Phrase(new Chunk("ENDORSEMENT No.    004", SubHead_font))));
            P15_R1_C1.PaddingTop = 30;
            P15_R1_C1.Border = 0;
            P15_R1_C1.Colspan = 3;
            P15_T1.AddCell(P15_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P15_R2_C1 = new PdfPCell((new Phrase(new Chunk("PERMANENT PARTIAL DISABILITY BENEFITS (SICKNESS ONLY)", SubHead_font))));
            P15_R2_C1.PaddingBottom = 20;
            P15_R2_C1.Border = 0;
            P15_R2_C1.Colspan = 3;
            P15_T1.AddCell(P15_R2_C1);
            #endregion Line2

            #region Line3
            PdfPCell P15_R3_C1 = new PdfPCell((new Phrase(new Chunk("It is hereby declared that in the case of loss by physical separation of any limb or member of the body or total and irrecoverable loss of sight as a result of sickness, the Company shall pay the member the percentage of the benefit in the attached scale provided that   :", Normal_font))));
            P15_R3_C1.PaddingBottom = 10;
            P15_R3_C1.Border = 0;
            P15_R3_C1.Colspan = 3;
            P15_T1.AddCell(P15_R3_C1);
            #endregion Line3

            #region Line4
            PdfPCell P15_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P15_R4_C1.Border = 0;
            P15_T1.AddCell(P15_R4_C1);

            PdfPCell P15_R4_C2 = new PdfPCell((new Phrase(new Chunk("1.", Normal_font))));
            P15_R4_C2.Border = 0;
            P15_R4_C2.PaddingBottom = 10;
            P15_T1.AddCell(P15_R4_C2);

            PdfPCell P15_R4_C3 = new PdfPCell((new Phrase(new Chunk("This Scheme was in force and the claimant was a scheme member at the date of the event resulting in the claim occurring.", Normal_font))));
            P15_R4_C3.Border = 0;
            P15_R4_C3.PaddingBottom = 10;
            P15_T1.AddCell(P15_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P15_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P15_R5_C1.Border = 0;
            P15_T1.AddCell(P15_R5_C1);

            PdfPCell P15_R5_C2 = new PdfPCell((new Phrase(new Chunk("2.", Normal_font))));
            P15_R5_C2.Border = 0;
            P15_R5_C2.PaddingBottom = 10;
            P15_T1.AddCell(P15_R5_C2);

            PdfPCell P15_R5_C3 = new PdfPCell((new Phrase(new Chunk("The event occurred prior to the attainment of the claimant of age 65.", Normal_font))));
            P15_R5_C3.Border = 0;
            P15_R5_C3.PaddingBottom = 10;
            P15_T1.AddCell(P15_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P15_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P15_R6_C1.Border = 0;
            P15_T1.AddCell(P15_R6_C1);

            PdfPCell P15_R6_C2 = new PdfPCell((new Phrase(new Chunk("3.", Normal_font))));
            P15_R6_C2.Border = 0;
            P15_R6_C2.PaddingBottom = 10;
            P15_T1.AddCell(P15_R6_C2);

            PdfPCell P15_R6_C3 = new PdfPCell((new Phrase(new Chunk("The loss resulted solely, directly and independently of all other 	causes, from sickness", Normal_font))));
            P15_R6_C3.Border = 0;
            P15_R6_C3.PaddingBottom = 10;
            P15_T1.AddCell(P15_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P15_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P15_R7_C1.Border = 0;
            P15_T1.AddCell(P15_R7_C1);

            PdfPCell P15_R7_C2 = new PdfPCell((new Phrase(new Chunk("4.", Normal_font))));
            P15_R7_C2.Border = 0;
            P15_R7_C2.PaddingBottom = 10;
            P15_T1.AddCell(P15_R7_C2);

            PdfPCell P15_R7_C3 = new PdfPCell((new Phrase(new Chunk("In no circumstances will the total amount payable under this benefit 	in respect of any member, whether as a result of one sickness or a 	number of sicknesses, exceed 100% of the benefit.", Normal_font))));
            P15_R7_C3.Border = 0;
            P15_R7_C3.PaddingBottom = 10;
            P15_T1.AddCell(P15_R7_C3);
            #endregion Line7

            #region Line8
            PdfPCell P15_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P15_R8_C1.Border = 0;
            P15_T1.AddCell(P15_R8_C1);

            PdfPCell P15_R8_C2 = new PdfPCell((new Phrase(new Chunk("5.", Normal_font))));
            P15_R8_C2.Border = 0;
            P15_R8_C2.PaddingBottom = 10;
            P15_T1.AddCell(P15_R8_C2);

            PdfPCell P15_R8_C3 = new PdfPCell((new Phrase(new Chunk("If a claim is also subsequently lodged under the Permanent Total Disability (Sickness) or benefit Sections of this scheme in respect of death or disability arising from the same sickness as gave rise to the claim under this Section of the scheme, such subsequent claim will be reduced by any amount already paid under this Section.", Normal_font))));
            P15_R8_C3.Border = 0;
            P15_R8_C3.PaddingBottom = 10;
            P15_T1.AddCell(P15_R8_C3);
            #endregion Line8

            #region Line9
            PdfPCell P15_R9_C1 = new PdfPCell((new Phrase(new Chunk("This endorsement shall not apply if the event giving rise to the claim occurred either directly or indirectly from any of the exclusions as applying to ancillary benefits: ", Normal_font))));
            P15_R9_C1.PaddingBottom = 10;
            P15_R9_C1.Border = 0;
            P15_R9_C1.Colspan = 3;
            P15_T1.AddCell(P15_R9_C1);
            #endregion Line9

            #region Line10
            PdfPCell P15_R10_C1 = new PdfPCell((new Phrase(new Chunk("If the member qualifies for payment both under this section and the Total and Permanent Disability section of the scheme, then the total payment shall not exceed the greater of the benefit.", Normal_font))));
            P15_R10_C1.PaddingBottom = 10;
            P15_R10_C1.Border = 0;
            P15_R10_C1.Colspan = 3;
            P15_T1.AddCell(P15_R10_C1);
            #endregion Line10

            doc.Add(P15_T1);
            #endregion Page15


            doc.NewPage();
            #region Page16

            PdfPTable P16_T1 = new PdfPTable(3);
            P16_T1.SetWidths(P11_Row1Width);

            #region Line1
            PdfPCell P16_R1_C1 = new PdfPCell((new Phrase(new Chunk("ENDORSEMENT No.    005", SubHead_font))));
            P16_R1_C1.PaddingTop = 30;
            P16_R1_C1.Border = 0;
            P16_R1_C1.Colspan = 3;
            P16_T1.AddCell(P16_R1_C1);
            #endregion Line1

            #region Line2
            PdfPCell P16_R2_C1 = new PdfPCell((new Phrase(new Chunk("TEMPORARY TOTAL DISABLEMENT BENEFITS (ACCIDENT & SICKNESS)", SubHead_font))));
            P16_R2_C1.PaddingBottom = 20;
            P16_R2_C1.Border = 0;
            P16_R2_C1.Colspan = 3;
            P16_T1.AddCell(P16_R2_C1);
            #endregion Line2

            #region Line3
            PdfPCell P16_R3_C1 = new PdfPCell((new Phrase(new Chunk("It is hereby declared that in the event of a Member being totally unable to follow his Normal occupation as a result of being continuously and totally disabled by reason of Accident or Sickness and is not following any other occupation, the Company shall pay the benefit as stated in the Schedule per person per week as long as such disablement continues provided that: ", Normal_font))));
            P16_R3_C1.PaddingBottom = 10;
            P16_R3_C1.Border = 0;
            P16_R3_C1.Colspan = 3;
            P16_T1.AddCell(P16_R3_C1);
            #endregion Line3

            #region Line4
            PdfPCell P16_R4_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R4_C1.Border = 0;
            P16_T1.AddCell(P16_R4_C1);

            PdfPCell P16_R4_C2 = new PdfPCell((new Phrase(new Chunk("A.", Normal_font))));
            P16_R4_C2.Border = 0;
            P16_R4_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R4_C2);

            PdfPCell P16_R4_C3 = new PdfPCell((new Phrase(new Chunk("This policy was in force and the claimant was a Member of the scheme at the date upon which the Member first becomes disabled.", Normal_font))));
            P16_R4_C3.Border = 0;
            P16_R4_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R4_C3);
            #endregion Line4

            #region Line5
            PdfPCell P16_R5_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R5_C1.Border = 0;
            P16_T1.AddCell(P16_R5_C1);

            PdfPCell P16_R5_C2 = new PdfPCell((new Phrase(new Chunk("B.", Normal_font))));
            P16_R5_C2.Border = 0;
            P16_R5_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R5_C2);

            PdfPCell P16_R5_C3 = new PdfPCell((new Phrase(new Chunk("The disability resulted solely, directly and independently of all other causes from bodily injury effected through external. violent, visible and accidental means within 30 days of such accident.", Normal_font))));
            P16_R5_C3.Border = 0;
            P16_R5_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R5_C3);
            #endregion Line5

            #region Line6
            PdfPCell P16_R6_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R6_C1.Border = 0;
            P16_T1.AddCell(P16_R6_C1);

            PdfPCell P16_R6_C2 = new PdfPCell((new Phrase(new Chunk("C.", Normal_font))));
            P16_R6_C2.Border = 0;
            P16_R6_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R6_C2);

            PdfPCell P16_R6_C3 = new PdfPCell((new Phrase(new Chunk("The first day of disablement occurred prior to the claimant attaining the age of 65 Years.", Normal_font))));
            P16_R6_C3.Border = 0;
            P16_R6_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R6_C3);
            #endregion Line6

            #region Line7
            PdfPCell P16_R7_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R7_C1.Border = 0;
            P16_T1.AddCell(P16_R7_C1);

            PdfPCell P16_R7_C2 = new PdfPCell((new Phrase(new Chunk("D.", Normal_font))));
            P16_R7_C2.Border = 0;
            P16_R7_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R7_C2);

            PdfPCell P16_R7_C3 = new PdfPCell((new Phrase(new Chunk("The payment of benefit shall not in any event exceed the limit stated in the Schedule.", Normal_font))));
            P16_R7_C3.Border = 0;
            P16_R7_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R7_C3);
            #endregion Line7

            #region Line8
            PdfPCell P16_R8_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R8_C1.Border = 0;
            P16_T1.AddCell(P16_R8_C1);

            PdfPCell P16_R8_C2 = new PdfPCell((new Phrase(new Chunk("E.", Normal_font))));
            P16_R8_C2.Border = 0;
            P16_R8_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R8_C2);

            PdfPCell P16_R8_C3 = new PdfPCell((new Phrase(new Chunk("No benefits shall be payable during the first day of any disability. ", Normal_font))));
            P16_R8_C3.Border = 0;
            P16_R8_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R8_C3);
            #endregion Line8

            #region Line9
            PdfPCell P16_R9_C1 = new PdfPCell((new Phrase(new Chunk("", Bold_font))));
            P16_R9_C1.Border = 0;
            P16_T1.AddCell(P16_R9_C1);

            PdfPCell P16_R9_C2 = new PdfPCell((new Phrase(new Chunk("F.", Normal_font))));
            P16_R9_C2.Border = 0;
            P16_R9_C2.PaddingBottom = 10;
            P16_T1.AddCell(P16_R9_C2);

            PdfPCell P16_R9_C3 = new PdfPCell((new Phrase(new Chunk("This endorsement includes all exclusions applying to ancillary benefits.", Normal_font))));
            P16_R9_C3.Border = 0;
            P16_R9_C3.PaddingBottom = 10;
            P16_T1.AddCell(P16_R9_C3);
            #endregion Line9



            doc.Add(P16_T1);
            #endregion Page16


            doc.Close();
            oPdfWriter.Flush();

            #region Attachment PDF
            string Pdf1 = string.Empty;
            string Pdf2 = string.Empty;
            Pdf1 = Server.MapPath(@"~\Template\SCALE OF BENEFIT.pdf");
            Pdf2 = Server.MapPath(@"~\Template\Takaful Clause.pdf");


            PdfReader pdfReader1 = new PdfReader(ms.GetBuffer());
            PdfReader pdfReader2 = new PdfReader(Pdf1);
            PdfReader pdfReader3 = new PdfReader(Pdf2);

            List<PdfReader> readerList = new List<PdfReader>();
            readerList.Add(pdfReader1);
            readerList.Add(pdfReader2);
            readerList.Add(pdfReader3);


            Document document = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter writer1 = PdfWriter.GetInstance(document, HttpContext.Response.OutputStream);
            document.Open();
            iTextSharp.text.Font blackFont = FontFactory.GetFont("Arial", 12, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
            foreach (PdfReader reader in readerList)
            {
                for (int i = 1; i <= reader.NumberOfPages; i++)
                {
                    PdfImportedPage page = writer1.GetImportedPage(reader, i);
                    document.Add(iTextSharp.text.Image.GetInstance(page));
                }
            }

            document.Close();
            HttpContext.Response.End();

            #endregion Attachment PDF

            bPDF = ms.ToArray();

            return bPDF;
        }


        [HttpGet]
        [Obsolete]
        public JsonResult GlBrokerPDF(string WLPolicyNo, string GLPolicyNo)
        {
            if (string.IsNullOrEmpty(GLPolicyNo))
            {
                GLPolicyNo = "P/004/15/21/3301/00005";
            }
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            string HTMLContent = "";
            string _FolderName = string.Empty;
            string _filePath = string.Empty;

            // App Config => C:\Users\ThisPc\Documents\Visual Studio 2019\Projects\TotalligentTPA\TotalligentTPA\Totalligent.UI\Download\
            // Folder (PNo_dateTimd)
            string _ConfigureFilePath = GetAppSettingsValue.QuotationGenerationPDFPath();
            string _GLBROKERFileName = GetAppSettingsValue.GLBROKERFileName();

            _FolderName = DateTime.Now.ToString("yyyyMMddHHmmss") ;
            //if (!Directory.Exists(_ConfigureFilePath + _FolderName)) {
            //    Directory.CreateDirectory(_FolderName);
            //}
            _filePath = Path.Combine(Server.MapPath(_ConfigureFilePath), Path.GetFileName(_GLBROKERFileName));

            // PDFGen File 


            byte[] PGL_BROKER = GetPDF_GL_BROKER(HTMLContent);
            System.IO.File.WriteAllBytes(_filePath, PGL_BROKER);

            var dir = new DirectoryInfo(_filePath);
            if (Directory.Exists(Server.MapPath(_ConfigureFilePath)))
            {
                string KYCzipPath = Server.MapPath(_ConfigureFilePath)+ ".zip";
                ZipFile.CreateFromDirectory(_ConfigureFilePath, KYCzipPath);
                // ResultRow = objGLIMasterBAL.pUpdateFolderPathEmpMaster(EmpMasterID, KYCzipPath);

                // dir.Delete(true);
            }

            Response.Clear();
            Response.BufferOutput = false;
            string zipName = String.Format(WLPolicyNo + "Zip_{0}.zip", DateTime.Now.ToString("yyyy-MMM-dd-HHmmss"));
            Response.ContentType = "application/zip";
            Response.AddHeader("content-disposition", "attachment; filename=" + zipName);
            // ZipFile.s.Save(Response.OutputStream);
            Response.End();


            //Convert Folder => Zip 
            //Dowlaod 

            //Response.Clear();
            //Response.ContentType = ion""application/pdf";
            //Response.AddHeader("content-disposit, "attachment;filename=" + "GL BROKER.pdf");
            ////Response.AppendHeader("Content-Disposition", string.Format("inline; filename={0}", "GL BROKER"));
            //Response.BufferOutput = true;
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.BinaryWrite(GetPDF_GL_BROKER(HTMLContent));
            //Response.End();




            return Json("Success", JsonRequestBehavior.AllowGet);

        }

        [Obsolete]
        public byte[] GetPDF_GL_BROKER(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);
            Document doc = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);
            HTMLWorker htmlWorker = new HTMLWorker(doc);
            doc.Open();
            #region FontSettings


            iTextSharp.text.Font Fhead = FontFactory.GetFont("Arial");
            Fhead.Size = 11;
            Fhead.SetStyle("bold");
            Fhead.SetStyle("underline");

            iTextSharp.text.Font para = FontFactory.GetFont("Arial");
            para.Size = 9f;


            iTextSharp.text.Font BoldStyle = FontFactory.GetFont("Arial");
            BoldStyle.Size = 9f;
            BoldStyle.SetStyle("bold");


            #endregion FontSettings




            #region Tax Credit Note Generation


            doc.NewPage();

            PdfPTable P1_T1 = new PdfPTable(1);
            P1_T1.TotalWidth = 100;
            P1_T1.DefaultCell.Border = 0;
            P1_T1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            P1_T1.DefaultCell.PaddingTop = 75;
            P1_T1.AddCell(new Phrase(new Chunk(" ", Fhead)));

            PdfPTable Title_Head = new PdfPTable(1);
            Title_Head.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            Title_Head.DefaultCell.PaddingTop = 5;
            Title_Head.DefaultCell.BorderWidthBottom = 0;
            Title_Head.AddCell(new Phrase(new Chunk("TAX CREDIT NOTE", Fhead)));

            PdfPTable Row1 = new PdfPTable(6);
            float[] Row1Width = new float[] { 10, 3, 50, 15, 3, 19 };
            Row1.SetWidths(Row1Width);

            #region Line1

            PdfPCell Row1C1 = new PdfPCell();
            Row1C1.PaddingLeft = 2;
            Row1C1.PaddingTop = 30;
            Row1C1.BorderWidthRight = 0;
            Row1C1.BorderWidthTop = 0;
            Row1C1.BorderWidthBottom = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            Row1Str1.Append("To");
            Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), BoldStyle)));

            PdfPCell Row1C2 = new PdfPCell();
            Row1C2.PaddingTop = 30;
            StringBuilder Row1Str2 = new StringBuilder("");
            Row1Str2.Append(":");
            Row1C2.Border = 0;
            Row1C2.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), para)));

            PdfPCell Row1C3 = new PdfPCell();
            Row1C3.PaddingTop = 30;
            Row1C3.Border = 0;
            StringBuilder Row1Str3 = new StringBuilder("");
            Row1Str3.Append("BA0106      ");
            Row1Str3.Append("FENCHURCH FARIS");
            Row1C3.AddElement(new Phrase(new Chunk(Row1Str3.ToString(), para)));

            PdfPCell Row1C4 = new PdfPCell();
            Row1C4.PaddingTop = 30;
            Row1C4.Border = 0;
            StringBuilder Row1Str4 = new StringBuilder("");
            Row1Str4.Append("C.N.No");
            Row1C4.AddElement(new Phrase(new Chunk(Row1Str4.ToString(), BoldStyle)));

            PdfPCell Row1C5 = new PdfPCell();
            Row1C5.PaddingTop = 30;
            Row1C5.Border = 0;
            StringBuilder Row1Str5 = new StringBuilder("");
            Row1Str5.Append(":");
            Row1C5.AddElement(new Phrase(new Chunk(Row1Str5.ToString(), para)));

            PdfPCell Row1C6 = new PdfPCell();
            Row1C6.PaddingTop = 30;
            Row1C6.BorderWidthLeft = 0;
            Row1C6.BorderWidthTop = 0;
            Row1C6.BorderWidthBottom = 0;

            StringBuilder Row1Str6 = new StringBuilder("");
            Row1Str6.Append("CNG1-47421");
            Row1C6.AddElement(new Phrase(new Chunk(Row1Str6.ToString(), para)));

            Row1.AddCell(Row1C1);
            Row1.AddCell(Row1C2);
            Row1.AddCell(Row1C3);
            Row1.AddCell(Row1C4);
            Row1.AddCell(Row1C5);
            Row1.AddCell(Row1C6);

            #endregion Line1
            #region Line2

            PdfPCell Row2C1 = new PdfPCell();
            Row2C1.PaddingLeft = 2;
            Row2C1.BorderWidthRight = 0;
            Row2C1.BorderWidthTop = 0;
            Row2C1.BorderWidthBottom = 0;
            StringBuilder Row2Str1 = new StringBuilder("");
            Row2Str1.Append(" ");
            Row2C1.AddElement(new Phrase(new Chunk(Row2Str1.ToString(), BoldStyle)));

            PdfPCell Row2C2 = new PdfPCell();
            StringBuilder Row2Str2 = new StringBuilder("");
            Row2Str2.Append("");
            Row2C2.Border = 0;
            Row2C2.AddElement(new Phrase(new Chunk(Row2Str2.ToString(), para)));

            PdfPCell Row2C3 = new PdfPCell();
            Row2C3.Border = 0;
            Row2C3.PaddingLeft = 20;
            StringBuilder Row2Str3 = new StringBuilder("");
            Row2Str3.Append("            INSURANCE SERVICES LLC");
            Row2C3.AddElement(new Phrase(new Chunk(Row2Str3.ToString(), para)));

            PdfPCell Row2C4 = new PdfPCell();
            Row2C4.Border = 0;
            StringBuilder Row2Str4 = new StringBuilder("");
            Row2Str4.Append("Issue Date");
            Row2C4.AddElement(new Phrase(new Chunk(Row2Str4.ToString(), BoldStyle)));

            PdfPCell Row2C5 = new PdfPCell();
            Row2C5.Border = 0;
            StringBuilder Row2Str5 = new StringBuilder("");
            Row2Str5.Append(":");
            Row2C5.AddElement(new Phrase(new Chunk(Row2Str5.ToString(), para)));

            PdfPCell Row2C6 = new PdfPCell();
            Row2C6.BorderWidthLeft = 0;
            Row2C6.BorderWidthTop = 0;
            Row2C6.BorderWidthBottom = 0;

            StringBuilder Row2Str6 = new StringBuilder("");
            Row2Str6.Append("14/09/2021");
            Row2C6.AddElement(new Phrase(new Chunk(Row2Str6.ToString(), para)));

            Row1.AddCell(Row2C1);
            Row1.AddCell(Row2C2);
            Row1.AddCell(Row2C3);
            Row1.AddCell(Row2C4);
            Row1.AddCell(Row2C5);
            Row1.AddCell(Row2C6);


            #endregion Line2
            #region Line3

            PdfPCell Row3C1 = new PdfPCell();
            Row3C1.PaddingLeft = 2;
            Row3C1.BorderWidthRight = 0;
            Row3C1.BorderWidthTop = 0;
            Row3C1.BorderWidthBottom = 0;
            StringBuilder Row3Str1 = new StringBuilder("");
            Row3Str1.Append(" ");
            Row3C1.AddElement(new Phrase(new Chunk(Row3Str1.ToString(), BoldStyle)));

            PdfPCell Row3C2 = new PdfPCell();
            StringBuilder Row3Str2 = new StringBuilder("");
            Row3Str2.Append(" ");
            Row3C2.Border = 0;
            Row3C2.AddElement(new Phrase(new Chunk(Row3Str2.ToString(), para)));


            PdfPCell Row3C3 = new PdfPCell();
            Row3C3.Border = 0;
            StringBuilder Row3Str3 = new StringBuilder("");
            Row3Str3.Append("PC 100");
            Row3C3.AddElement(new Phrase(new Chunk(Row3Str3.ToString(), para)));

            PdfPCell Row3C4 = new PdfPCell();
            Row3C4.Border = 0;
            StringBuilder Row3Str4 = new StringBuilder("");
            Row3Str4.Append("Pymt Due Date");
            Row3C4.AddElement(new Phrase(new Chunk(Row3Str4.ToString(), BoldStyle)));

            PdfPCell Row3C5 = new PdfPCell();
            Row3C5.Border = 0;
            StringBuilder Row3Str5 = new StringBuilder("");
            Row3Str5.Append(":");
            Row3C5.AddElement(new Phrase(new Chunk(Row3Str5.ToString(), para)));

            PdfPCell Row3C6 = new PdfPCell();
            Row3C6.BorderWidthLeft = 0;
            Row3C6.BorderWidthTop = 0;
            Row3C6.BorderWidthBottom = 0;

            StringBuilder Row3Str6 = new StringBuilder("");
            Row3Str6.Append("14/09/2021");
            Row3C6.AddElement(new Phrase(new Chunk(Row3Str6.ToString(), para)));


            Row1.AddCell(Row3C1);
            Row1.AddCell(Row3C2);
            Row1.AddCell(Row3C3);
            Row1.AddCell(Row3C4);
            Row1.AddCell(Row3C5);
            Row1.AddCell(Row3C6);

            #endregion Line3
            #region Line4


            PdfPCell Row4C1 = new PdfPCell();
            Row4C1.PaddingLeft = 2;
            Row4C1.BorderWidthRight = 0;
            Row4C1.BorderWidthTop = 0;
            Row4C1.BorderWidthBottom = 0;
            StringBuilder Row4Str1 = new StringBuilder("");
            Row4C1.AddElement(new Phrase(new Chunk(Row4Str1.ToString(), para)));

            PdfPCell Row4C2 = new PdfPCell();
            StringBuilder Row4Str2 = new StringBuilder("");
            Row3Str2.Append("");
            Row4C2.Border = 0;
            Row4C2.AddElement(new Phrase(new Chunk(Row4Str2.ToString(), para)));


            PdfPCell Row4C3 = new PdfPCell();
            Row4C3.Border = 0;
            StringBuilder Row4Str3 = new StringBuilder("");
            Row4Str3.Append("Wattayah");
            Row4C3.AddElement(new Phrase(new Chunk(Row4Str3.ToString(), para)));



            PdfPCell Row4C4 = new PdfPCell();
            Row4C4.Border = 0;
            StringBuilder Row4Str4 = new StringBuilder("");
            Row4Str4.Append("Adv Pymt Date");
            Row4C4.AddElement(new Phrase(new Chunk(Row4Str4.ToString(), BoldStyle)));

            PdfPCell Row4C5 = new PdfPCell();
            Row4C5.Border = 0;
            StringBuilder Row4Str5 = new StringBuilder("");
            Row4Str5.Append(":");
            Row4C5.AddElement(new Phrase(new Chunk(Row4Str5.ToString(), para)));

            PdfPCell Row4C6 = new PdfPCell();
            Row4C6.BorderWidthLeft = 0;
            Row4C6.BorderWidthTop = 0;
            Row4C6.BorderWidthBottom = 0;

            StringBuilder Row4Str6 = new StringBuilder("");
            Row4Str6.Append("");
            Row4C6.AddElement(new Phrase(new Chunk(Row4Str6.ToString(), para)));


            Row1.AddCell(Row4C1);
            Row1.AddCell(Row4C2);
            Row1.AddCell(Row4C3);
            Row1.AddCell(Row4C4);
            Row1.AddCell(Row4C5);
            Row1.AddCell(Row4C6);


            #endregion Line4
            #region Line5

            PdfPCell Row5C1 = new PdfPCell();
            Row5C1.PaddingLeft = 2;
            Row5C1.BorderWidthRight = 0;
            Row5C1.BorderWidthTop = 0;
            Row5C1.BorderWidthBottom = 0;
            //Row5C1.PaddingBottom = 10;
            StringBuilder Row5Str1 = new StringBuilder("VAT IN");
            Row5C1.AddElement(new Phrase(new Chunk(Row5Str1.ToString(), BoldStyle)));

            PdfPCell Row5C2 = new PdfPCell();
            StringBuilder Row5Str2 = new StringBuilder(":");
            Row5Str2.Append("");
            Row5C2.BorderWidthRight = 0;
            Row5C2.BorderWidthTop = 0;
            Row5C2.BorderWidthLeft = 0;
            Row5C2.BorderWidthBottom = 0f;
            //Row5C2.PaddingBottom = 10;
            Row5C2.AddElement(new Phrase(new Chunk(Row5Str2.ToString(), para)));


            PdfPCell Row5C3 = new PdfPCell();
            //Row5C3.BorderWidthRight = 0.1f;
            Row5C3.BorderWidthBottom = 0;
            Row5C3.BorderWidthTop = 0;
            Row5C3.BorderWidthLeft = 0;
            Row5C3.BorderWidthRight = 0;
            //Row5C3.BorderWidthBottom = 0.1f;
            //Row5C3.PaddingBottom = 10;            
            StringBuilder Row5Str3 = new StringBuilder("");
            Row5Str3.Append("OM1100107060");
            Row5C3.AddElement(new Phrase(new Chunk(Row5Str3.ToString(), para)));

            PdfPCell Row5C4 = new PdfPCell();
            Row5C4.Border = 0;
            StringBuilder Row5Str4 = new StringBuilder("");
            Row5Str4.Append("Office");
            Row5C4.AddElement(new Phrase(new Chunk(Row5Str4.ToString(), BoldStyle)));

            PdfPCell Row5C5 = new PdfPCell();
            Row5C5.Border = 0;
            StringBuilder Row5Str5 = new StringBuilder("");
            Row5Str5.Append(":");
            Row5C5.AddElement(new Phrase(new Chunk(Row5Str5.ToString(), para)));

            PdfPCell Row5C6 = new PdfPCell();
            Row5C6.BorderWidthLeft = 0;
            Row5C6.BorderWidthTop = 0;
            Row5C6.BorderWidthBottom = 0;

            StringBuilder Row5Str6 = new StringBuilder("");
            Row5Str6.Append("Head Office");
            Row5C6.AddElement(new Phrase(new Chunk(Row5Str6.ToString(), para)));

            Row1.AddCell(Row5C1);
            Row1.AddCell(Row5C2);
            Row1.AddCell(Row5C3);
            Row1.AddCell(Row5C4);
            Row1.AddCell(Row5C5);
            Row1.AddCell(Row5C6);

            #endregion Line5

            #region Line6

            PdfPCell Row6C1 = new PdfPCell();
            Row6C1.PaddingLeft = 2;
            Row6C1.BorderWidthRight = 0;
            Row6C1.BorderWidthBottom = 0;
            Row6C1.BorderWidthTop = 0;
            //Row6C1.BorderWidthBottom = 0.1f;
            //Row6C1.PaddingBottom = 10;
            StringBuilder Row6Str1 = new StringBuilder("");
            Row6C1.AddElement(new Phrase(new Chunk(Row6Str1.ToString(), para)));

            PdfPCell Row6C2 = new PdfPCell();
            StringBuilder Row6Str2 = new StringBuilder("");
            Row6Str2.Append("");
            Row6C2.BorderWidthBottom = 0;
            Row6C2.BorderWidthRight = 0;
            Row6C2.BorderWidthTop = 0;
            Row6C2.BorderWidthLeft = 0;
            //Row6C2.BorderWidthBottom = 0.1f;
            //Row6C2.PaddingBottom = 10;
            Row6C2.AddElement(new Phrase(new Chunk(Row6Str2.ToString(), para)));


            PdfPCell Row6C3 = new PdfPCell();
            //Row6C3.BorderWidthRight = 0.1f;
            Row6C3.BorderWidthTop = 0;
            Row6C3.BorderWidthLeft = 0;
            Row6C3.BorderWidthBottom = 0;
            Row6C3.BorderWidthRight = 0;
            //Row6C3.BorderWidthBottom = 0.1f;
            //Row6C3.PaddingBottom = 10;
            StringBuilder Row6Str3 = new StringBuilder("");
            Row6Str3.Append("");
            Row6C3.AddElement(new Phrase(new Chunk(Row6Str3.ToString(), para)));

            PdfPCell Row6C4 = new PdfPCell();
            Row6C4.Border = 0;
            StringBuilder Row6Str4 = new StringBuilder("");
            Row6Str4.Append("Department");
            Row6C4.AddElement(new Phrase(new Chunk(Row6Str4.ToString(), BoldStyle)));

            PdfPCell Row6C5 = new PdfPCell();
            Row6C5.Border = 0;
            StringBuilder Row6Str5 = new StringBuilder("");
            Row6Str5.Append(":");
            Row6C5.AddElement(new Phrase(new Chunk(Row6Str5.ToString(), para)));

            PdfPCell Row6C6 = new PdfPCell();
            Row6C6.BorderWidthLeft = 0;
            Row6C6.BorderWidthTop = 0;
            Row6C6.BorderWidthBottom = 0;

            StringBuilder Row6Str6 = new StringBuilder("");
            Row6Str6.Append("Life");
            Row6C6.AddElement(new Phrase(new Chunk(Row6Str6.ToString(), para)));

            Row1.AddCell(Row6C1);
            Row1.AddCell(Row6C2);
            Row1.AddCell(Row6C3);
            Row1.AddCell(Row6C4);
            Row1.AddCell(Row6C5);
            Row1.AddCell(Row6C6);

            #endregion Line6

            #region Line7

            PdfPCell Row7C1 = new PdfPCell();
            Row7C1.PaddingLeft = 2;
            Row7C1.BorderWidthRight = 0;
            Row7C1.BorderWidthTop = 0;
            Row7C1.BorderWidthBottom = 0;
            Row7C1.PaddingBottom = 10;
            StringBuilder Row7Str1 = new StringBuilder("");
            Row7C1.AddElement(new Phrase(new Chunk(Row7Str1.ToString(), para)));

            PdfPCell Row7C2 = new PdfPCell();
            StringBuilder Row7Str2 = new StringBuilder("");
            Row7Str2.Append("");
            Row7C2.BorderWidthRight = 0;
            Row7C2.BorderWidthTop = 0;
            Row7C2.BorderWidthLeft = 0;
            Row7C2.BorderWidthBottom = 0f;
            Row7C2.PaddingBottom = 10;
            Row7C2.AddElement(new Phrase(new Chunk(Row7Str2.ToString(), para)));


            PdfPCell Row7C3 = new PdfPCell();
            Row7C3.BorderWidthRight = 0.1f;
            Row7C3.BorderWidthTop = 0;
            Row7C3.BorderWidthLeft = 0;
            Row7C3.BorderWidthBottom = 0f;
            Row7C3.BorderWidthRight = 0f;
            Row7C3.PaddingBottom = 10;
            StringBuilder Row7Str3 = new StringBuilder("");
            Row7Str3.Append("");
            Row7C3.AddElement(new Phrase(new Chunk(Row7Str3.ToString(), para)));

            PdfPCell Row7C4 = new PdfPCell();
            Row7C4.Border = 0;
            StringBuilder Row7Str4 = new StringBuilder("");
            Row7Str4.Append("VAT IN");
            Row7C4.AddElement(new Phrase(new Chunk(Row7Str4.ToString(), BoldStyle)));

            PdfPCell Row7C5 = new PdfPCell();
            Row7C5.Border = 0;
            StringBuilder Row7Str5 = new StringBuilder("");
            Row7Str5.Append(":");
            Row7C5.AddElement(new Phrase(new Chunk(Row7Str5.ToString(), para)));

            PdfPCell Row7C6 = new PdfPCell();
            Row7C6.BorderWidthLeft = 0;
            Row7C6.BorderWidthTop = 0;
            Row7C6.BorderWidthBottom = 0;

            StringBuilder Row7Str6 = new StringBuilder("");
            Row7Str6.Append("OM1100001952");
            Row7C6.AddElement(new Phrase(new Chunk(Row7Str6.ToString(), para)));

            Row1.AddCell(Row7C1);
            Row1.AddCell(Row7C2);
            Row1.AddCell(Row7C3);
            Row1.AddCell(Row7C4);
            Row1.AddCell(Row7C5);
            Row1.AddCell(Row7C6);

            #endregion Line7

            #region Line8

            PdfPCell Row8C1 = new PdfPCell();
            Row8C1.PaddingTop = 10;
            Row8C1.PaddingBottom = 5;
            Row8C1.BorderWidthTop = 0;
            Row8C1.Colspan = 6;
            StringBuilder Row8Str1 = new StringBuilder("Please Note that we have CREDITED your account as follows");
            Row8C1.AddElement(new Phrase(new Chunk(Row8Str1.ToString(), BoldStyle)));
            Row1.AddCell(Row8C1);


            #endregion Line8

            #region GridHeader

            PdfPTable gridHeader1 = new PdfPTable(2);
            float[] gridHeaderWidth = new float[] { 80, 20 };
            gridHeader1.SetWidths(gridHeaderWidth);

            PdfPCell gridHeader1Cell1 = new PdfPCell();
            gridHeader1Cell1.PaddingLeft = 0;
            gridHeader1Cell1.BorderWidthTop = 0.1f;
            gridHeader1Cell1.BorderWidthBottom = 0;
            StringBuilder gridHeaderStr1 = new StringBuilder("                                                    Description");
            gridHeader1Cell1.AddElement(new Phrase(new Chunk(gridHeaderStr1.ToString(), BoldStyle)));
            gridHeader1Cell1.FixedHeight = 20;

            PdfPCell gridHeader1Cell2 = new PdfPCell();
            gridHeader1Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader1Cell2.BorderWidthTop = 0.1f;
            gridHeader1Cell2.BorderWidthBottom = 0;
            gridHeader1Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeaderStr2 = new StringBuilder("     Amount In");
            gridHeader1Cell2.AddElement(new Phrase(new Chunk(gridHeaderStr2.ToString(), BoldStyle)));
            gridHeader1Cell2.FixedHeight = 20;

            gridHeader1.AddCell(gridHeader1Cell1);
            gridHeader1.AddCell(gridHeader1Cell2);


            PdfPTable gridHeader2 = new PdfPTable(2);
            float[] gridHeader2Width = new float[] { 80, 20 };
            gridHeader2.SetWidths(gridHeader2Width);


            PdfPCell gridHeader2Cell1 = new PdfPCell();
            gridHeader2Cell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell1.BorderWidthTop = 0;
            StringBuilder gridHeader2Str1 = new StringBuilder("");
            gridHeader2Cell1.AddElement(new Phrase(new Chunk(gridHeader2Str1.ToString(), para)));
            gridHeader2Cell1.FixedHeight = 20;

            PdfPCell gridHeader2Cell2 = new PdfPCell();
            gridHeader2Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell2.BorderWidthTop = 0;
            gridHeader2Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeader2Str2 = new StringBuilder("    OMANI RIYAL");
            gridHeader2Cell2.AddElement(new Phrase(new Chunk(gridHeader2Str2.ToString(), BoldStyle)));
            gridHeader2Cell2.FixedHeight = 20;

            gridHeader2.AddCell(gridHeader2Cell1);
            gridHeader2.AddCell(gridHeader2Cell2);

            #endregion GridHeader


            #region GridInner_Cell1

            PdfPTable gridInner = new PdfPTable(2);
            gridInner.SetWidths(gridHeader2Width);


            PdfPCell gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingTop = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr1 = new StringBuilder("Being 12.5% Broker commission for P/004/01/21/3301/00237");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr1.ToString(), para)));


            Phrase gridInnerStr_P3 = new Phrase();
            gridInnerStr_P3.Add(new Chunk("115.213", para));
            PdfPCell gridInnerCell2 = new PdfPCell(gridInnerStr_P3);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingTop = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            // StringBuilder gridInnerStr2 = new StringBuilder("    115.213");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr2.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell1

            #region GridInner_Cell2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3 = new StringBuilder("For BIYAQ OILFEILD SERVICES");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3.ToString(), para)));


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 20;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr4 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2

            #region GridInner_Cell3



            Phrase gridInnerStr_P5 = new Phrase();
            gridInnerStr_P5.Add(new Chunk("Period of insurance From :", para));
            gridInnerStr_P5.Add(new Chunk("   09/09/2021   ", para));
            gridInnerStr_P5.Add(new Chunk("To :", para));
            gridInnerStr_P5.Add(new Chunk("  08/09/2022", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P5);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr6 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr6.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell3

            #region GridInner_Cell4

            Phrase gridInnerStr_P6 = new Phrase();
            gridInnerStr_P6.Add(new Chunk("Risk Cover             :", para));
            gridInnerStr_P6.Add(new Chunk("   Group Life   ", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P6);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr8 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr8.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell4

            #region GridInner_Cell5

            Phrase gridInnerStr_P7 = new Phrase();
            gridInnerStr_P7.Add(new Chunk("Sub Total", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P7);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P8 = new Phrase();
            gridInnerStr_P8.Add(new Chunk("115.213", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P8);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell5

            #region GridInner_Cell6

            Phrase gridInnerStr_P9 = new Phrase();
            gridInnerStr_P9.Add(new Chunk("VAT at 5%", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P9);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P10 = new Phrase();
            gridInnerStr_P10.Add(new Chunk("5.761", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P10);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell6

            #region GridInner_Cell7

            Phrase gridInnerStr_P11 = new Phrase();
            gridInnerStr_P11.Add(new Chunk("TOTAL :", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P11);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingRight = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P12 = new Phrase();
            gridInnerStr_P12.Add(new Chunk("120.974", BoldStyle));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P12);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell7

            #region GridInner_Cell8

            Phrase gridInnerStr_P13 = new Phrase();
            gridInnerStr_P13.Add(new Chunk("AMOUNT :", BoldStyle));
            gridInnerStr_P13.Add(new Chunk(" OMANI RIYALS One Hundred Twenty And Baisa Nine Hundred Seventy-Four Only", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P13);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingLeft = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);


            #endregion GridInner_Cell8

            #region ForSign1

            Phrase gridInnerStr_P14 = new Phrase();
            gridInnerStr_P14.Add(new Chunk("AL MADINA INSURANCE CO. SAOG", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P14);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 60;
            gridInnerCell1.PaddingRight = 30;
            gridInnerCell1.PaddingTop = 30;
            gridInnerCell1.Colspan = 2;
            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign1

            #region ForSign2

            Phrase gridInnerStr_P15 = new Phrase();
            gridInnerStr_P15.Add(new Chunk("Authorised Signatory", para));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P15);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingRight = 65;
            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign2

            #region E&OE

            Phrase gridInnerStr_P16 = new Phrase();
            gridInnerStr_P16.Add(new Chunk("E&OE", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P16);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.Border = 0;

            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion E&OE

            doc.Add(P1_T1);
            doc.Add(Title_Head);
            doc.Add(Row1);

            //doc.Add(NoteDetails);
            doc.Add(gridHeader1);
            doc.Add(gridHeader2);
            doc.Add(gridInner);


            #endregion Tax Credit Note Generation



            doc.Close();


            bPDF = ms.ToArray();
            return bPDF;
        }

        [HttpGet]
        [Obsolete]
        public JsonResult GlRIPDF(string WLPolicyNo, string GLPolicyNo)
        {
            string HTMLContent = "";
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=" + "GL RI.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(GetPDF_GL_RI(HTMLContent));
            Response.End();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }

        [Obsolete]
        public byte[] GetPDF_GL_RI(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);
            Document doc = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);
            HTMLWorker htmlWorker = new HTMLWorker(doc);
            doc.Open();
            #region FontSettings


            iTextSharp.text.Font Fhead = FontFactory.GetFont("Arial");
            Fhead.Size = 11;
            Fhead.SetStyle("bold");
            Fhead.SetStyle("underline");

            iTextSharp.text.Font para = FontFactory.GetFont("Arial");
            para.Size = 9f;


            iTextSharp.text.Font BoldStyle = FontFactory.GetFont("Arial");
            BoldStyle.Size = 9f;
            BoldStyle.SetStyle("bold");


            #endregion FontSettings




            #region Tax Credit Note Generation


            doc.NewPage();

            PdfPTable P1_T1 = new PdfPTable(1);
            P1_T1.TotalWidth = 100;
            P1_T1.DefaultCell.Border = 0;
            P1_T1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            P1_T1.DefaultCell.PaddingTop = 75;
            P1_T1.AddCell(new Phrase(new Chunk(" ", Fhead)));

            PdfPTable Title_Head = new PdfPTable(1);
            Title_Head.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            Title_Head.DefaultCell.PaddingTop = 5;
            Title_Head.DefaultCell.BorderWidthBottom = 0;
            Title_Head.AddCell(new Phrase(new Chunk("CREDIT NOTE", Fhead)));

            PdfPTable Row1 = new PdfPTable(6);
            float[] Row1Width = new float[] { 10, 3, 50, 15, 3, 19 };
            Row1.SetWidths(Row1Width);

            #region Line1

            PdfPCell Row1C1 = new PdfPCell();
            Row1C1.PaddingLeft = 2;
            Row1C1.PaddingTop = 30;
            Row1C1.BorderWidthRight = 0;
            Row1C1.BorderWidthTop = 0;
            Row1C1.BorderWidthBottom = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            Row1Str1.Append("To");
            Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), BoldStyle)));

            PdfPCell Row1C2 = new PdfPCell();
            Row1C2.PaddingTop = 30;
            StringBuilder Row1Str2 = new StringBuilder("");
            Row1Str2.Append(":");
            Row1C2.Border = 0;
            Row1C2.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), para)));

            PdfPCell Row1C3 = new PdfPCell();
            Row1C3.PaddingTop = 30;
            Row1C3.Border = 0;
            StringBuilder Row1Str3 = new StringBuilder("");
            Row1Str3.Append("RI0175      ");
            Row1Str3.Append("General Reinsurance AG");
            Row1C3.AddElement(new Phrase(new Chunk(Row1Str3.ToString(), para)));

            PdfPCell Row1C4 = new PdfPCell();
            Row1C4.PaddingTop = 30;
            Row1C4.Border = 0;
            StringBuilder Row1Str4 = new StringBuilder("");
            Row1Str4.Append("Doc.No");
            Row1C4.AddElement(new Phrase(new Chunk(Row1Str4.ToString(), BoldStyle)));

            PdfPCell Row1C5 = new PdfPCell();
            Row1C5.PaddingTop = 30;
            Row1C5.Border = 0;
            StringBuilder Row1Str5 = new StringBuilder("");
            Row1Str5.Append(":");
            Row1C5.AddElement(new Phrase(new Chunk(Row1Str5.ToString(), para)));

            PdfPCell Row1C6 = new PdfPCell();
            Row1C6.PaddingTop = 30;
            Row1C6.BorderWidthLeft = 0;
            Row1C6.BorderWidthTop = 0;
            Row1C6.BorderWidthBottom = 0;

            StringBuilder Row1Str6 = new StringBuilder("");
            Row1Str6.Append("CNG1 - 47422");
            Row1C6.AddElement(new Phrase(new Chunk(Row1Str6.ToString(), para)));

            Row1.AddCell(Row1C1);
            Row1.AddCell(Row1C2);
            Row1.AddCell(Row1C3);
            Row1.AddCell(Row1C4);
            Row1.AddCell(Row1C5);
            Row1.AddCell(Row1C6);

            #endregion Line1
            #region Line2

            PdfPCell Row2C1 = new PdfPCell();
            Row2C1.PaddingLeft = 2;
            Row2C1.BorderWidthRight = 0;
            Row2C1.BorderWidthTop = 0;
            Row2C1.BorderWidthBottom = 0;
            StringBuilder Row2Str1 = new StringBuilder("");
            Row2Str1.Append(" ");
            Row2C1.AddElement(new Phrase(new Chunk(Row2Str1.ToString(), BoldStyle)));

            PdfPCell Row2C2 = new PdfPCell();
            StringBuilder Row2Str2 = new StringBuilder("");
            Row2Str2.Append("");
            Row2C2.Border = 0;
            Row2C2.AddElement(new Phrase(new Chunk(Row2Str2.ToString(), para)));

            PdfPCell Row2C3 = new PdfPCell();
            Row2C3.Border = 0;
            Row2C3.PaddingLeft = 20;
            StringBuilder Row2Str3 = new StringBuilder("");
            Row2Str3.Append("            Germany");
            Row2C3.AddElement(new Phrase(new Chunk(Row2Str3.ToString(), para)));

            PdfPCell Row2C4 = new PdfPCell();
            Row2C4.Border = 0;
            StringBuilder Row2Str4 = new StringBuilder("");
            Row2Str4.Append("Invoice Date");
            Row2C4.AddElement(new Phrase(new Chunk(Row2Str4.ToString(), BoldStyle)));

            PdfPCell Row2C5 = new PdfPCell();
            Row2C5.Border = 0;
            StringBuilder Row2Str5 = new StringBuilder("");
            Row2Str5.Append(":");
            Row2C5.AddElement(new Phrase(new Chunk(Row2Str5.ToString(), para)));

            PdfPCell Row2C6 = new PdfPCell();
            Row2C6.BorderWidthLeft = 0;
            Row2C6.BorderWidthTop = 0;
            Row2C6.BorderWidthBottom = 0;

            StringBuilder Row2Str6 = new StringBuilder("");
            Row2Str6.Append("14/09/2021");
            Row2C6.AddElement(new Phrase(new Chunk(Row2Str6.ToString(), para)));

            Row1.AddCell(Row2C1);
            Row1.AddCell(Row2C2);
            Row1.AddCell(Row2C3);
            Row1.AddCell(Row2C4);
            Row1.AddCell(Row2C5);
            Row1.AddCell(Row2C6);


            #endregion Line2
            #region Line3

            PdfPCell Row3C1 = new PdfPCell();
            Row3C1.PaddingLeft = 2;
            Row3C1.BorderWidthRight = 0;
            Row3C1.BorderWidthTop = 0;
            Row3C1.BorderWidthBottom = 0;
            StringBuilder Row3Str1 = new StringBuilder("");
            Row3Str1.Append(" ");
            Row3C1.AddElement(new Phrase(new Chunk(Row3Str1.ToString(), BoldStyle)));

            PdfPCell Row3C2 = new PdfPCell();
            StringBuilder Row3Str2 = new StringBuilder("");
            Row3Str2.Append(" ");
            Row3C2.Border = 0;
            Row3C2.AddElement(new Phrase(new Chunk(Row3Str2.ToString(), para)));


            PdfPCell Row3C3 = new PdfPCell();
            Row3C3.Border = 0;
            StringBuilder Row3Str3 = new StringBuilder("");
            Row3Str3.Append("HRB773");
            Row3C3.AddElement(new Phrase(new Chunk(Row3Str3.ToString(), para)));

            PdfPCell Row3C4 = new PdfPCell();
            Row3C4.Border = 0;
            StringBuilder Row3Str4 = new StringBuilder("");
            Row3Str4.Append("Pymt Due Date");
            Row3C4.AddElement(new Phrase(new Chunk(Row3Str4.ToString(), BoldStyle)));

            PdfPCell Row3C5 = new PdfPCell();
            Row3C5.Border = 0;
            StringBuilder Row3Str5 = new StringBuilder("");
            Row3Str5.Append(":");
            Row3C5.AddElement(new Phrase(new Chunk(Row3Str5.ToString(), para)));

            PdfPCell Row3C6 = new PdfPCell();
            Row3C6.BorderWidthLeft = 0;
            Row3C6.BorderWidthTop = 0;
            Row3C6.BorderWidthBottom = 0;

            StringBuilder Row3Str6 = new StringBuilder("");
            Row3Str6.Append("14/09/2021");
            Row3C6.AddElement(new Phrase(new Chunk(Row3Str6.ToString(), para)));


            Row1.AddCell(Row3C1);
            Row1.AddCell(Row3C2);
            Row1.AddCell(Row3C3);
            Row1.AddCell(Row3C4);
            Row1.AddCell(Row3C5);
            Row1.AddCell(Row3C6);

            #endregion Line3
            #region Line4


            PdfPCell Row4C1 = new PdfPCell();
            Row4C1.PaddingLeft = 2;
            Row4C1.BorderWidthRight = 0;
            Row4C1.BorderWidthTop = 0;
            Row4C1.BorderWidthBottom = 0;
            StringBuilder Row4Str1 = new StringBuilder("");
            Row4C1.AddElement(new Phrase(new Chunk(Row4Str1.ToString(), para)));

            PdfPCell Row4C2 = new PdfPCell();
            StringBuilder Row4Str2 = new StringBuilder("");
            Row3Str2.Append("");
            Row4C2.Border = 0;
            Row4C2.AddElement(new Phrase(new Chunk(Row4Str2.ToString(), para)));


            PdfPCell Row4C3 = new PdfPCell();
            Row4C3.Border = 0;
            StringBuilder Row4Str3 = new StringBuilder("");
            Row4Str3.Append("COLOUGUE ,BURIEN THERDOR");
            Row4C3.AddElement(new Phrase(new Chunk(Row4Str3.ToString(), para)));



            PdfPCell Row4C4 = new PdfPCell();
            Row4C4.Border = 0;
            StringBuilder Row4Str4 = new StringBuilder("");
            Row4Str4.Append("Adv Pymt Date");
            Row4C4.AddElement(new Phrase(new Chunk(Row4Str4.ToString(), BoldStyle)));

            PdfPCell Row4C5 = new PdfPCell();
            Row4C5.Border = 0;
            StringBuilder Row4Str5 = new StringBuilder("");
            Row4Str5.Append(":");
            Row4C5.AddElement(new Phrase(new Chunk(Row4Str5.ToString(), para)));

            PdfPCell Row4C6 = new PdfPCell();
            Row4C6.BorderWidthLeft = 0;
            Row4C6.BorderWidthTop = 0;
            Row4C6.BorderWidthBottom = 0;

            StringBuilder Row4Str6 = new StringBuilder("");
            Row4Str6.Append("");
            Row4C6.AddElement(new Phrase(new Chunk(Row4Str6.ToString(), para)));


            Row1.AddCell(Row4C1);
            Row1.AddCell(Row4C2);
            Row1.AddCell(Row4C3);
            Row1.AddCell(Row4C4);
            Row1.AddCell(Row4C5);
            Row1.AddCell(Row4C6);


            #endregion Line4
            #region Line5

            PdfPCell Row5C1 = new PdfPCell();
            Row5C1.PaddingLeft = 2;
            Row5C1.BorderWidthRight = 0;
            Row5C1.BorderWidthTop = 0;
            Row5C1.BorderWidthBottom = 0;
            //Row5C1.PaddingBottom = 10;
            StringBuilder Row5Str1 = new StringBuilder("VAT IN");
            Row5C1.AddElement(new Phrase(new Chunk(Row5Str1.ToString(), BoldStyle)));

            PdfPCell Row5C2 = new PdfPCell();
            StringBuilder Row5Str2 = new StringBuilder(":");
            Row5Str2.Append("");
            Row5C2.BorderWidthRight = 0;
            Row5C2.BorderWidthTop = 0;
            Row5C2.BorderWidthLeft = 0;
            Row5C2.BorderWidthBottom = 0f;
            //Row5C2.PaddingBottom = 10;
            Row5C2.AddElement(new Phrase(new Chunk(Row5Str2.ToString(), para)));


            PdfPCell Row5C3 = new PdfPCell();
            //Row5C3.BorderWidthRight = 0.1f;
            Row5C3.BorderWidthBottom = 0;
            Row5C3.BorderWidthTop = 0;
            Row5C3.BorderWidthLeft = 0;
            Row5C3.BorderWidthRight = 0;
            //Row5C3.BorderWidthBottom = 0.1f;
            //Row5C3.PaddingBottom = 10;            
            StringBuilder Row5Str3 = new StringBuilder("");
            Row5Str3.Append("");
            Row5C3.AddElement(new Phrase(new Chunk(Row5Str3.ToString(), para)));

            PdfPCell Row5C4 = new PdfPCell();
            Row5C4.Border = 0;
            StringBuilder Row5Str4 = new StringBuilder("");
            Row5Str4.Append("Office");
            Row5C4.AddElement(new Phrase(new Chunk(Row5Str4.ToString(), BoldStyle)));

            PdfPCell Row5C5 = new PdfPCell();
            Row5C5.Border = 0;
            StringBuilder Row5Str5 = new StringBuilder("");
            Row5Str5.Append(":");
            Row5C5.AddElement(new Phrase(new Chunk(Row5Str5.ToString(), para)));

            PdfPCell Row5C6 = new PdfPCell();
            Row5C6.BorderWidthLeft = 0;
            Row5C6.BorderWidthTop = 0;
            Row5C6.BorderWidthBottom = 0;

            StringBuilder Row5Str6 = new StringBuilder("");
            Row5Str6.Append("Head Office");
            Row5C6.AddElement(new Phrase(new Chunk(Row5Str6.ToString(), para)));

            Row1.AddCell(Row5C1);
            Row1.AddCell(Row5C2);
            Row1.AddCell(Row5C3);
            Row1.AddCell(Row5C4);
            Row1.AddCell(Row5C5);
            Row1.AddCell(Row5C6);

            #endregion Line5

            #region Line6

            PdfPCell Row6C1 = new PdfPCell();
            Row6C1.PaddingLeft = 2;
            Row6C1.BorderWidthRight = 0;
            Row6C1.BorderWidthBottom = 0;
            Row6C1.BorderWidthTop = 0;
            //Row6C1.BorderWidthBottom = 0.1f;
            //Row6C1.PaddingBottom = 10;
            StringBuilder Row6Str1 = new StringBuilder("");
            Row6C1.AddElement(new Phrase(new Chunk(Row6Str1.ToString(), para)));

            PdfPCell Row6C2 = new PdfPCell();
            StringBuilder Row6Str2 = new StringBuilder("");
            Row6Str2.Append("");
            Row6C2.BorderWidthBottom = 0;
            Row6C2.BorderWidthRight = 0;
            Row6C2.BorderWidthTop = 0;
            Row6C2.BorderWidthLeft = 0;
            //Row6C2.BorderWidthBottom = 0.1f;
            //Row6C2.PaddingBottom = 10;
            Row6C2.AddElement(new Phrase(new Chunk(Row6Str2.ToString(), para)));


            PdfPCell Row6C3 = new PdfPCell();
            //Row6C3.BorderWidthRight = 0.1f;
            Row6C3.BorderWidthTop = 0;
            Row6C3.BorderWidthLeft = 0;
            Row6C3.BorderWidthBottom = 0;
            Row6C3.BorderWidthRight = 0;
            //Row6C3.BorderWidthBottom = 0.1f;
            //Row6C3.PaddingBottom = 10;
            StringBuilder Row6Str3 = new StringBuilder("");
            Row6Str3.Append("");
            Row6C3.AddElement(new Phrase(new Chunk(Row6Str3.ToString(), para)));

            PdfPCell Row6C4 = new PdfPCell();
            Row6C4.Border = 0;
            StringBuilder Row6Str4 = new StringBuilder("");
            Row6Str4.Append("Department");
            Row6C4.AddElement(new Phrase(new Chunk(Row6Str4.ToString(), BoldStyle)));

            PdfPCell Row6C5 = new PdfPCell();
            Row6C5.Border = 0;
            StringBuilder Row6Str5 = new StringBuilder("");
            Row6Str5.Append(":");
            Row6C5.AddElement(new Phrase(new Chunk(Row6Str5.ToString(), para)));

            PdfPCell Row6C6 = new PdfPCell();
            Row6C6.BorderWidthLeft = 0;
            Row6C6.BorderWidthTop = 0;
            Row6C6.BorderWidthBottom = 0;

            StringBuilder Row6Str6 = new StringBuilder("");
            Row6Str6.Append("Life");
            Row6C6.AddElement(new Phrase(new Chunk(Row6Str6.ToString(), para)));

            Row1.AddCell(Row6C1);
            Row1.AddCell(Row6C2);
            Row1.AddCell(Row6C3);
            Row1.AddCell(Row6C4);
            Row1.AddCell(Row6C5);
            Row1.AddCell(Row6C6);

            #endregion Line6

            #region Line7

            PdfPCell Row7C1 = new PdfPCell();
            Row7C1.PaddingLeft = 2;
            Row7C1.BorderWidthRight = 0;
            Row7C1.BorderWidthTop = 0;
            Row7C1.BorderWidthBottom = 0;
            Row7C1.PaddingBottom = 10;
            StringBuilder Row7Str1 = new StringBuilder("");
            Row7C1.AddElement(new Phrase(new Chunk(Row7Str1.ToString(), para)));

            PdfPCell Row7C2 = new PdfPCell();
            StringBuilder Row7Str2 = new StringBuilder("");
            Row7Str2.Append("");
            Row7C2.BorderWidthRight = 0;
            Row7C2.BorderWidthTop = 0;
            Row7C2.BorderWidthLeft = 0;
            Row7C2.BorderWidthBottom = 0f;
            Row7C2.PaddingBottom = 10;
            Row7C2.AddElement(new Phrase(new Chunk(Row7Str2.ToString(), para)));


            PdfPCell Row7C3 = new PdfPCell();
            Row7C3.BorderWidthRight = 0.1f;
            Row7C3.BorderWidthTop = 0;
            Row7C3.BorderWidthLeft = 0;
            Row7C3.BorderWidthBottom = 0f;
            Row7C3.BorderWidthRight = 0f;
            Row7C3.PaddingBottom = 10;
            StringBuilder Row7Str3 = new StringBuilder("");
            Row7Str3.Append("");
            Row7C3.AddElement(new Phrase(new Chunk(Row7Str3.ToString(), para)));

            PdfPCell Row7C4 = new PdfPCell();
            Row7C4.Border = 0;
            StringBuilder Row7Str4 = new StringBuilder("");
            Row7Str4.Append("VAT IN");
            Row7C4.AddElement(new Phrase(new Chunk(Row7Str4.ToString(), BoldStyle)));

            PdfPCell Row7C5 = new PdfPCell();
            Row7C5.Border = 0;
            StringBuilder Row7Str5 = new StringBuilder("");
            Row7Str5.Append(":");
            Row7C5.AddElement(new Phrase(new Chunk(Row7Str5.ToString(), para)));

            PdfPCell Row7C6 = new PdfPCell();
            Row7C6.BorderWidthLeft = 0;
            Row7C6.BorderWidthTop = 0;
            Row7C6.BorderWidthBottom = 0;

            StringBuilder Row7Str6 = new StringBuilder("");
            Row7Str6.Append("OM1100001952");
            Row7C6.AddElement(new Phrase(new Chunk(Row7Str6.ToString(), para)));

            Row1.AddCell(Row7C1);
            Row1.AddCell(Row7C2);
            Row1.AddCell(Row7C3);
            Row1.AddCell(Row7C4);
            Row1.AddCell(Row7C5);
            Row1.AddCell(Row7C6);

            #endregion Line7

            #region Line8

            PdfPCell Row8C1 = new PdfPCell();
            Row8C1.PaddingTop = 10;
            Row8C1.PaddingBottom = 5;
            Row8C1.BorderWidthTop = 0;
            Row8C1.Colspan = 6;
            StringBuilder Row8Str1 = new StringBuilder("Please Note that we have CREDITED your account as follows");
            Row8C1.AddElement(new Phrase(new Chunk(Row8Str1.ToString(), BoldStyle)));
            Row1.AddCell(Row8C1);


            #endregion Line8

            #region GridHeader

            PdfPTable gridHeader1 = new PdfPTable(2);
            float[] gridHeaderWidth = new float[] { 80, 20 };
            gridHeader1.SetWidths(gridHeaderWidth);

            PdfPCell gridHeader1Cell1 = new PdfPCell();
            gridHeader1Cell1.PaddingLeft = 0;
            gridHeader1Cell1.BorderWidthTop = 0.1f;
            gridHeader1Cell1.BorderWidthBottom = 0;
            StringBuilder gridHeaderStr1 = new StringBuilder("                                                    Description");
            gridHeader1Cell1.AddElement(new Phrase(new Chunk(gridHeaderStr1.ToString(), BoldStyle)));
            gridHeader1Cell1.FixedHeight = 20;

            PdfPCell gridHeader1Cell2 = new PdfPCell();
            gridHeader1Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader1Cell2.BorderWidthTop = 0.1f;
            gridHeader1Cell2.BorderWidthBottom = 0;
            gridHeader1Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeaderStr2 = new StringBuilder("     Amount In");
            gridHeader1Cell2.AddElement(new Phrase(new Chunk(gridHeaderStr2.ToString(), BoldStyle)));
            gridHeader1Cell2.FixedHeight = 20;

            gridHeader1.AddCell(gridHeader1Cell1);
            gridHeader1.AddCell(gridHeader1Cell2);


            PdfPTable gridHeader2 = new PdfPTable(2);
            float[] gridHeader2Width = new float[] { 80, 20 };
            gridHeader2.SetWidths(gridHeader2Width);


            PdfPCell gridHeader2Cell1 = new PdfPCell();
            gridHeader2Cell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell1.BorderWidthTop = 0;
            StringBuilder gridHeader2Str1 = new StringBuilder("");
            gridHeader2Cell1.AddElement(new Phrase(new Chunk(gridHeader2Str1.ToString(), para)));
            gridHeader2Cell1.FixedHeight = 20;

            PdfPCell gridHeader2Cell2 = new PdfPCell();
            gridHeader2Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell2.BorderWidthTop = 0;
            gridHeader2Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeader2Str2 = new StringBuilder("    OMANI RIYAL");
            gridHeader2Cell2.AddElement(new Phrase(new Chunk(gridHeader2Str2.ToString(), BoldStyle)));
            gridHeader2Cell2.FixedHeight = 20;

            gridHeader2.AddCell(gridHeader2Cell1);
            gridHeader2.AddCell(gridHeader2Cell2);

            #endregion GridHeader


            #region GridInner_Cell1

            PdfPTable gridInner = new PdfPTable(2);
            gridInner.SetWidths(gridHeader2Width);


            PdfPCell gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingTop = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr1 = new StringBuilder("Being your 80% FAC OUT Premium for the Policy Number P/004/01/21/3301/00237");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr1.ToString(), para)));


            Phrase gridInnerStr_P3 = new Phrase();
            gridInnerStr_P3.Add(new Chunk("645.000", para));
            PdfPCell gridInnerCell2 = new PdfPCell(gridInnerStr_P3);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingTop = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            // StringBuilder gridInnerStr2 = new StringBuilder("    115.213");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr2.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell1

            #region GridInner_Cell2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3 = new StringBuilder("For BIYAQ OILFEILD SERVICES");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3.ToString(), para)));


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 20;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr4 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2

            #region GridInner_Cell3



            Phrase gridInnerStr_P5 = new Phrase();
            gridInnerStr_P5.Add(new Chunk("Period of insurance From :", para));
            gridInnerStr_P5.Add(new Chunk("   09/09/2021   ", para));
            gridInnerStr_P5.Add(new Chunk("To :", para));
            gridInnerStr_P5.Add(new Chunk("  08/09/2022", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P5);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr6 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr6.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell3

            #region GridInner_Cell4

            Phrase gridInnerStr_P6 = new Phrase();
            gridInnerStr_P6.Add(new Chunk("Risk Cover             :", para));
            gridInnerStr_P6.Add(new Chunk("   Group Life   ", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P6);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr8 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr8.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell4


            #region GridInner_Cell6

            Phrase gridInnerStr_P9 = new Phrase();
            gridInnerStr_P9.Add(new Chunk("VAT at 5%", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P9);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P10 = new Phrase();
            gridInnerStr_P10.Add(new Chunk("5.761", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P10);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell6

            #region GridInner_Cell7

            Phrase gridInnerStr_P11 = new Phrase();
            gridInnerStr_P11.Add(new Chunk("TOTAL :", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P11);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingRight = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P12 = new Phrase();
            gridInnerStr_P12.Add(new Chunk("645.000", BoldStyle));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P12);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell7

            #region GridInner_Cell8

            Phrase gridInnerStr_P13 = new Phrase();
            gridInnerStr_P13.Add(new Chunk("AMOUNT :", BoldStyle));
            gridInnerStr_P13.Add(new Chunk(" OMR Six Hundred Forty-Five Only", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P13);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingLeft = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);


            #endregion GridInner_Cell8

            #region ForSign1

            Phrase gridInnerStr_P14 = new Phrase();
            gridInnerStr_P14.Add(new Chunk("AL MADINA INSURANCE CO. SAOG", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P14);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 60;
            gridInnerCell1.PaddingRight = 30;
            gridInnerCell1.PaddingTop = 30;
            gridInnerCell1.Colspan = 2;
            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign1

            #region ForSign2

            Phrase gridInnerStr_P15 = new Phrase();
            gridInnerStr_P15.Add(new Chunk("Authorised Signatory", para));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P15);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingRight = 65;
            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign2

            #region E&OE

            Phrase gridInnerStr_P16 = new Phrase();
            gridInnerStr_P16.Add(new Chunk("E&OE", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P16);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.Border = 0;

            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion E&OE

            doc.Add(P1_T1);
            doc.Add(Title_Head);
            doc.Add(Row1);

            //doc.Add(NoteDetails);
            doc.Add(gridHeader1);
            doc.Add(gridHeader2);
            doc.Add(gridInner);


            #endregion Tax Credit Note Generation



            doc.Close();


            bPDF = ms.ToArray();

            return bPDF;
        }


        [HttpGet]
        [Obsolete]
        public JsonResult WCBROKERPDF(string WLPolicyNo, string GLPolicyNo)
        {
            string HTMLContent = "";
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=" + "WC BROKER.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(GetPDF_WC_BROKER(HTMLContent));
            Response.End();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }

        [Obsolete]
        public byte[] GetPDF_WC_BROKER(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);
            Document doc = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);
            HTMLWorker htmlWorker = new HTMLWorker(doc);
            doc.Open();
            #region FontSettings


            iTextSharp.text.Font Fhead = FontFactory.GetFont("Arial");
            Fhead.Size = 11;
            Fhead.SetStyle("bold");
            Fhead.SetStyle("underline");

            iTextSharp.text.Font para = FontFactory.GetFont("Arial");
            para.Size = 9f;


            iTextSharp.text.Font BoldStyle = FontFactory.GetFont("Arial");
            BoldStyle.Size = 9f;
            BoldStyle.SetStyle("bold");


            #endregion FontSettings




            #region Tax Credit Note Generation


            doc.NewPage();

            PdfPTable P1_T1 = new PdfPTable(1);
            P1_T1.TotalWidth = 100;
            P1_T1.DefaultCell.Border = 0;
            P1_T1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            P1_T1.DefaultCell.PaddingTop = 75;
            P1_T1.AddCell(new Phrase(new Chunk(" ", Fhead)));

            PdfPTable Title_Head = new PdfPTable(1);
            Title_Head.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            Title_Head.DefaultCell.PaddingTop = 5;
            Title_Head.DefaultCell.BorderWidthBottom = 0;
            Title_Head.AddCell(new Phrase(new Chunk("TAX CREDIT NOTE", Fhead)));

            PdfPTable Row1 = new PdfPTable(6);
            float[] Row1Width = new float[] { 10, 3, 50, 15, 3, 19 };
            Row1.SetWidths(Row1Width);

            #region Line1

            PdfPCell Row1C1 = new PdfPCell();
            Row1C1.PaddingLeft = 2;
            Row1C1.PaddingTop = 30;
            Row1C1.BorderWidthRight = 0;
            Row1C1.BorderWidthTop = 0;
            Row1C1.BorderWidthBottom = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            Row1Str1.Append("To");
            Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), BoldStyle)));

            PdfPCell Row1C2 = new PdfPCell();
            Row1C2.PaddingTop = 30;
            StringBuilder Row1Str2 = new StringBuilder("");
            Row1Str2.Append(":");
            Row1C2.Border = 0;
            Row1C2.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), para)));

            PdfPCell Row1C3 = new PdfPCell();
            Row1C3.PaddingTop = 30;
            Row1C3.Border = 0;
            StringBuilder Row1Str3 = new StringBuilder("");
            Row1Str3.Append("BA0106      ");
            Row1Str3.Append("FENCHURCH FARIS");
            Row1C3.AddElement(new Phrase(new Chunk(Row1Str3.ToString(), para)));

            PdfPCell Row1C4 = new PdfPCell();
            Row1C4.PaddingTop = 30;
            Row1C4.Border = 0;
            StringBuilder Row1Str4 = new StringBuilder("");
            Row1Str4.Append("C.N.No");
            Row1C4.AddElement(new Phrase(new Chunk(Row1Str4.ToString(), BoldStyle)));

            PdfPCell Row1C5 = new PdfPCell();
            Row1C5.PaddingTop = 30;
            Row1C5.Border = 0;
            StringBuilder Row1Str5 = new StringBuilder("");
            Row1Str5.Append(":");
            Row1C5.AddElement(new Phrase(new Chunk(Row1Str5.ToString(), para)));

            PdfPCell Row1C6 = new PdfPCell();
            Row1C6.PaddingTop = 30;
            Row1C6.BorderWidthLeft = 0;
            Row1C6.BorderWidthTop = 0;
            Row1C6.BorderWidthBottom = 0;

            StringBuilder Row1Str6 = new StringBuilder("");
            Row1Str6.Append("CNG1-47427");
            Row1C6.AddElement(new Phrase(new Chunk(Row1Str6.ToString(), para)));

            Row1.AddCell(Row1C1);
            Row1.AddCell(Row1C2);
            Row1.AddCell(Row1C3);
            Row1.AddCell(Row1C4);
            Row1.AddCell(Row1C5);
            Row1.AddCell(Row1C6);

            #endregion Line1
            #region Line2

            PdfPCell Row2C1 = new PdfPCell();
            Row2C1.PaddingLeft = 2;
            Row2C1.BorderWidthRight = 0;
            Row2C1.BorderWidthTop = 0;
            Row2C1.BorderWidthBottom = 0;
            StringBuilder Row2Str1 = new StringBuilder("");
            Row2Str1.Append(" ");
            Row2C1.AddElement(new Phrase(new Chunk(Row2Str1.ToString(), BoldStyle)));

            PdfPCell Row2C2 = new PdfPCell();
            StringBuilder Row2Str2 = new StringBuilder("");
            Row2Str2.Append("");
            Row2C2.Border = 0;
            Row2C2.AddElement(new Phrase(new Chunk(Row2Str2.ToString(), para)));

            PdfPCell Row2C3 = new PdfPCell();
            Row2C3.Border = 0;
            Row2C3.PaddingLeft = 20;
            StringBuilder Row2Str3 = new StringBuilder("");
            Row2Str3.Append("            INSURANCE SERVICES LLC");
            Row2C3.AddElement(new Phrase(new Chunk(Row2Str3.ToString(), para)));

            PdfPCell Row2C4 = new PdfPCell();
            Row2C4.Border = 0;
            StringBuilder Row2Str4 = new StringBuilder("");
            Row2Str4.Append("Issue Date");
            Row2C4.AddElement(new Phrase(new Chunk(Row2Str4.ToString(), BoldStyle)));

            PdfPCell Row2C5 = new PdfPCell();
            Row2C5.Border = 0;
            StringBuilder Row2Str5 = new StringBuilder("");
            Row2Str5.Append(":");
            Row2C5.AddElement(new Phrase(new Chunk(Row2Str5.ToString(), para)));

            PdfPCell Row2C6 = new PdfPCell();
            Row2C6.BorderWidthLeft = 0;
            Row2C6.BorderWidthTop = 0;
            Row2C6.BorderWidthBottom = 0;

            StringBuilder Row2Str6 = new StringBuilder("");
            Row2Str6.Append("14/09/2021");
            Row2C6.AddElement(new Phrase(new Chunk(Row2Str6.ToString(), para)));

            Row1.AddCell(Row2C1);
            Row1.AddCell(Row2C2);
            Row1.AddCell(Row2C3);
            Row1.AddCell(Row2C4);
            Row1.AddCell(Row2C5);
            Row1.AddCell(Row2C6);


            #endregion Line2
            #region Line3

            PdfPCell Row3C1 = new PdfPCell();
            Row3C1.PaddingLeft = 2;
            Row3C1.BorderWidthRight = 0;
            Row3C1.BorderWidthTop = 0;
            Row3C1.BorderWidthBottom = 0;
            StringBuilder Row3Str1 = new StringBuilder("");
            Row3Str1.Append(" ");
            Row3C1.AddElement(new Phrase(new Chunk(Row3Str1.ToString(), BoldStyle)));

            PdfPCell Row3C2 = new PdfPCell();
            StringBuilder Row3Str2 = new StringBuilder("");
            Row3Str2.Append(" ");
            Row3C2.Border = 0;
            Row3C2.AddElement(new Phrase(new Chunk(Row3Str2.ToString(), para)));


            PdfPCell Row3C3 = new PdfPCell();
            Row3C3.Border = 0;
            StringBuilder Row3Str3 = new StringBuilder("");
            Row3Str3.Append("PC 100");
            Row3C3.AddElement(new Phrase(new Chunk(Row3Str3.ToString(), para)));

            PdfPCell Row3C4 = new PdfPCell();
            Row3C4.Border = 0;
            StringBuilder Row3Str4 = new StringBuilder("");
            Row3Str4.Append("Pymt Due Date");
            Row3C4.AddElement(new Phrase(new Chunk(Row3Str4.ToString(), BoldStyle)));

            PdfPCell Row3C5 = new PdfPCell();
            Row3C5.Border = 0;
            StringBuilder Row3Str5 = new StringBuilder("");
            Row3Str5.Append(":");
            Row3C5.AddElement(new Phrase(new Chunk(Row3Str5.ToString(), para)));

            PdfPCell Row3C6 = new PdfPCell();
            Row3C6.BorderWidthLeft = 0;
            Row3C6.BorderWidthTop = 0;
            Row3C6.BorderWidthBottom = 0;

            StringBuilder Row3Str6 = new StringBuilder("");
            Row3Str6.Append("14/09/2021");
            Row3C6.AddElement(new Phrase(new Chunk(Row3Str6.ToString(), para)));


            Row1.AddCell(Row3C1);
            Row1.AddCell(Row3C2);
            Row1.AddCell(Row3C3);
            Row1.AddCell(Row3C4);
            Row1.AddCell(Row3C5);
            Row1.AddCell(Row3C6);

            #endregion Line3
            #region Line4


            PdfPCell Row4C1 = new PdfPCell();
            Row4C1.PaddingLeft = 2;
            Row4C1.BorderWidthRight = 0;
            Row4C1.BorderWidthTop = 0;
            Row4C1.BorderWidthBottom = 0;
            StringBuilder Row4Str1 = new StringBuilder("");
            Row4C1.AddElement(new Phrase(new Chunk(Row4Str1.ToString(), para)));

            PdfPCell Row4C2 = new PdfPCell();
            StringBuilder Row4Str2 = new StringBuilder("");
            Row3Str2.Append("");
            Row4C2.Border = 0;
            Row4C2.AddElement(new Phrase(new Chunk(Row4Str2.ToString(), para)));


            PdfPCell Row4C3 = new PdfPCell();
            Row4C3.Border = 0;
            StringBuilder Row4Str3 = new StringBuilder("");
            Row4Str3.Append("Wattayah");
            Row4C3.AddElement(new Phrase(new Chunk(Row4Str3.ToString(), para)));



            PdfPCell Row4C4 = new PdfPCell();
            Row4C4.Border = 0;
            StringBuilder Row4Str4 = new StringBuilder("");
            Row4Str4.Append("Adv Pymt Date");
            Row4C4.AddElement(new Phrase(new Chunk(Row4Str4.ToString(), BoldStyle)));

            PdfPCell Row4C5 = new PdfPCell();
            Row4C5.Border = 0;
            StringBuilder Row4Str5 = new StringBuilder("");
            Row4Str5.Append(":");
            Row4C5.AddElement(new Phrase(new Chunk(Row4Str5.ToString(), para)));

            PdfPCell Row4C6 = new PdfPCell();
            Row4C6.BorderWidthLeft = 0;
            Row4C6.BorderWidthTop = 0;
            Row4C6.BorderWidthBottom = 0;

            StringBuilder Row4Str6 = new StringBuilder("");
            Row4Str6.Append("");
            Row4C6.AddElement(new Phrase(new Chunk(Row4Str6.ToString(), para)));


            Row1.AddCell(Row4C1);
            Row1.AddCell(Row4C2);
            Row1.AddCell(Row4C3);
            Row1.AddCell(Row4C4);
            Row1.AddCell(Row4C5);
            Row1.AddCell(Row4C6);


            #endregion Line4
            #region Line5

            PdfPCell Row5C1 = new PdfPCell();
            Row5C1.PaddingLeft = 2;
            Row5C1.BorderWidthRight = 0;
            Row5C1.BorderWidthTop = 0;
            Row5C1.BorderWidthBottom = 0;
            //Row5C1.PaddingBottom = 10;
            StringBuilder Row5Str1 = new StringBuilder("VAT IN");
            Row5C1.AddElement(new Phrase(new Chunk(Row5Str1.ToString(), BoldStyle)));

            PdfPCell Row5C2 = new PdfPCell();
            StringBuilder Row5Str2 = new StringBuilder(":");
            Row5Str2.Append("");
            Row5C2.BorderWidthRight = 0;
            Row5C2.BorderWidthTop = 0;
            Row5C2.BorderWidthLeft = 0;
            Row5C2.BorderWidthBottom = 0f;
            //Row5C2.PaddingBottom = 10;
            Row5C2.AddElement(new Phrase(new Chunk(Row5Str2.ToString(), para)));


            PdfPCell Row5C3 = new PdfPCell();
            //Row5C3.BorderWidthRight = 0.1f;
            Row5C3.BorderWidthBottom = 0;
            Row5C3.BorderWidthTop = 0;
            Row5C3.BorderWidthLeft = 0;
            Row5C3.BorderWidthRight = 0;
            //Row5C3.BorderWidthBottom = 0.1f;
            //Row5C3.PaddingBottom = 10;            
            StringBuilder Row5Str3 = new StringBuilder("");
            Row5Str3.Append("OM1100107060");
            Row5C3.AddElement(new Phrase(new Chunk(Row5Str3.ToString(), para)));

            PdfPCell Row5C4 = new PdfPCell();
            Row5C4.Border = 0;
            StringBuilder Row5Str4 = new StringBuilder("");
            Row5Str4.Append("Office");
            Row5C4.AddElement(new Phrase(new Chunk(Row5Str4.ToString(), BoldStyle)));

            PdfPCell Row5C5 = new PdfPCell();
            Row5C5.Border = 0;
            StringBuilder Row5Str5 = new StringBuilder("");
            Row5Str5.Append(":");
            Row5C5.AddElement(new Phrase(new Chunk(Row5Str5.ToString(), para)));

            PdfPCell Row5C6 = new PdfPCell();
            Row5C6.BorderWidthLeft = 0;
            Row5C6.BorderWidthTop = 0;
            Row5C6.BorderWidthBottom = 0;

            StringBuilder Row5Str6 = new StringBuilder("");
            Row5Str6.Append("Head Office");
            Row5C6.AddElement(new Phrase(new Chunk(Row5Str6.ToString(), para)));

            Row1.AddCell(Row5C1);
            Row1.AddCell(Row5C2);
            Row1.AddCell(Row5C3);
            Row1.AddCell(Row5C4);
            Row1.AddCell(Row5C5);
            Row1.AddCell(Row5C6);

            #endregion Line5

            #region Line6

            PdfPCell Row6C1 = new PdfPCell();
            Row6C1.PaddingLeft = 2;
            Row6C1.BorderWidthRight = 0;
            Row6C1.BorderWidthBottom = 0;
            Row6C1.BorderWidthTop = 0;
            //Row6C1.BorderWidthBottom = 0.1f;
            //Row6C1.PaddingBottom = 10;
            StringBuilder Row6Str1 = new StringBuilder("");
            Row6C1.AddElement(new Phrase(new Chunk(Row6Str1.ToString(), para)));

            PdfPCell Row6C2 = new PdfPCell();
            StringBuilder Row6Str2 = new StringBuilder("");
            Row6Str2.Append("");
            Row6C2.BorderWidthBottom = 0;
            Row6C2.BorderWidthRight = 0;
            Row6C2.BorderWidthTop = 0;
            Row6C2.BorderWidthLeft = 0;
            //Row6C2.BorderWidthBottom = 0.1f;
            //Row6C2.PaddingBottom = 10;
            Row6C2.AddElement(new Phrase(new Chunk(Row6Str2.ToString(), para)));


            PdfPCell Row6C3 = new PdfPCell();
            //Row6C3.BorderWidthRight = 0.1f;
            Row6C3.BorderWidthTop = 0;
            Row6C3.BorderWidthLeft = 0;
            Row6C3.BorderWidthBottom = 0;
            Row6C3.BorderWidthRight = 0;
            //Row6C3.BorderWidthBottom = 0.1f;
            //Row6C3.PaddingBottom = 10;
            StringBuilder Row6Str3 = new StringBuilder("");
            Row6Str3.Append("");
            Row6C3.AddElement(new Phrase(new Chunk(Row6Str3.ToString(), para)));

            PdfPCell Row6C4 = new PdfPCell();
            Row6C4.Border = 0;
            StringBuilder Row6Str4 = new StringBuilder("");
            Row6Str4.Append("Department");
            Row6C4.AddElement(new Phrase(new Chunk(Row6Str4.ToString(), BoldStyle)));

            PdfPCell Row6C5 = new PdfPCell();
            Row6C5.Border = 0;
            StringBuilder Row6Str5 = new StringBuilder("");
            Row6Str5.Append(":");
            Row6C5.AddElement(new Phrase(new Chunk(Row6Str5.ToString(), para)));

            PdfPCell Row6C6 = new PdfPCell();
            Row6C6.BorderWidthLeft = 0;
            Row6C6.BorderWidthTop = 0;
            Row6C6.BorderWidthBottom = 0;

            StringBuilder Row6Str6 = new StringBuilder("");
            Row6Str6.Append("Liability");
            Row6C6.AddElement(new Phrase(new Chunk(Row6Str6.ToString(), para)));

            Row1.AddCell(Row6C1);
            Row1.AddCell(Row6C2);
            Row1.AddCell(Row6C3);
            Row1.AddCell(Row6C4);
            Row1.AddCell(Row6C5);
            Row1.AddCell(Row6C6);

            #endregion Line6

            #region Line7

            PdfPCell Row7C1 = new PdfPCell();
            Row7C1.PaddingLeft = 2;
            Row7C1.BorderWidthRight = 0;
            Row7C1.BorderWidthTop = 0;
            Row7C1.BorderWidthBottom = 0;
            Row7C1.PaddingBottom = 10;
            StringBuilder Row7Str1 = new StringBuilder("");
            Row7C1.AddElement(new Phrase(new Chunk(Row7Str1.ToString(), para)));

            PdfPCell Row7C2 = new PdfPCell();
            StringBuilder Row7Str2 = new StringBuilder("");
            Row7Str2.Append("");
            Row7C2.BorderWidthRight = 0;
            Row7C2.BorderWidthTop = 0;
            Row7C2.BorderWidthLeft = 0;
            Row7C2.BorderWidthBottom = 0f;
            Row7C2.PaddingBottom = 10;
            Row7C2.AddElement(new Phrase(new Chunk(Row7Str2.ToString(), para)));


            PdfPCell Row7C3 = new PdfPCell();
            Row7C3.BorderWidthRight = 0.1f;
            Row7C3.BorderWidthTop = 0;
            Row7C3.BorderWidthLeft = 0;
            Row7C3.BorderWidthBottom = 0f;
            Row7C3.BorderWidthRight = 0f;
            Row7C3.PaddingBottom = 10;
            StringBuilder Row7Str3 = new StringBuilder("");
            Row7Str3.Append("");
            Row7C3.AddElement(new Phrase(new Chunk(Row7Str3.ToString(), para)));

            PdfPCell Row7C4 = new PdfPCell();
            Row7C4.Border = 0;
            StringBuilder Row7Str4 = new StringBuilder("");
            Row7Str4.Append("VAT IN");
            Row7C4.AddElement(new Phrase(new Chunk(Row7Str4.ToString(), BoldStyle)));

            PdfPCell Row7C5 = new PdfPCell();
            Row7C5.Border = 0;
            StringBuilder Row7Str5 = new StringBuilder("");
            Row7Str5.Append(":");
            Row7C5.AddElement(new Phrase(new Chunk(Row7Str5.ToString(), para)));

            PdfPCell Row7C6 = new PdfPCell();
            Row7C6.BorderWidthLeft = 0;
            Row7C6.BorderWidthTop = 0;
            Row7C6.BorderWidthBottom = 0;

            StringBuilder Row7Str6 = new StringBuilder("");
            Row7Str6.Append("OM1100001952");
            Row7C6.AddElement(new Phrase(new Chunk(Row7Str6.ToString(), para)));

            Row1.AddCell(Row7C1);
            Row1.AddCell(Row7C2);
            Row1.AddCell(Row7C3);
            Row1.AddCell(Row7C4);
            Row1.AddCell(Row7C5);
            Row1.AddCell(Row7C6);

            #endregion Line7

            #region Line8

            PdfPCell Row8C1 = new PdfPCell();
            Row8C1.PaddingTop = 10;
            Row8C1.PaddingBottom = 5;
            Row8C1.BorderWidthTop = 0;
            Row8C1.Colspan = 6;
            StringBuilder Row8Str1 = new StringBuilder("Please Note that we have CREDITED your account as follows");
            Row8C1.AddElement(new Phrase(new Chunk(Row8Str1.ToString(), BoldStyle)));
            Row1.AddCell(Row8C1);


            #endregion Line8

            #region GridHeader

            PdfPTable gridHeader1 = new PdfPTable(2);
            float[] gridHeaderWidth = new float[] { 80, 20 };
            gridHeader1.SetWidths(gridHeaderWidth);

            PdfPCell gridHeader1Cell1 = new PdfPCell();
            gridHeader1Cell1.PaddingLeft = 0;
            gridHeader1Cell1.BorderWidthTop = 0.1f;
            gridHeader1Cell1.BorderWidthBottom = 0;
            StringBuilder gridHeaderStr1 = new StringBuilder("                                                    Description");
            gridHeader1Cell1.AddElement(new Phrase(new Chunk(gridHeaderStr1.ToString(), BoldStyle)));
            gridHeader1Cell1.FixedHeight = 20;

            PdfPCell gridHeader1Cell2 = new PdfPCell();
            gridHeader1Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader1Cell2.BorderWidthTop = 0.1f;
            gridHeader1Cell2.BorderWidthBottom = 0;
            gridHeader1Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeaderStr2 = new StringBuilder("     Amount In");
            gridHeader1Cell2.AddElement(new Phrase(new Chunk(gridHeaderStr2.ToString(), BoldStyle)));
            gridHeader1Cell2.FixedHeight = 20;

            gridHeader1.AddCell(gridHeader1Cell1);
            gridHeader1.AddCell(gridHeader1Cell2);


            PdfPTable gridHeader2 = new PdfPTable(2);
            float[] gridHeader2Width = new float[] { 80, 20 };
            gridHeader2.SetWidths(gridHeader2Width);


            PdfPCell gridHeader2Cell1 = new PdfPCell();
            gridHeader2Cell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell1.BorderWidthTop = 0;
            StringBuilder gridHeader2Str1 = new StringBuilder("");
            gridHeader2Cell1.AddElement(new Phrase(new Chunk(gridHeader2Str1.ToString(), para)));
            gridHeader2Cell1.FixedHeight = 20;

            PdfPCell gridHeader2Cell2 = new PdfPCell();
            gridHeader2Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell2.BorderWidthTop = 0;
            gridHeader2Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeader2Str2 = new StringBuilder("    OMANI RIYAL");
            gridHeader2Cell2.AddElement(new Phrase(new Chunk(gridHeader2Str2.ToString(), BoldStyle)));
            gridHeader2Cell2.FixedHeight = 20;

            gridHeader2.AddCell(gridHeader2Cell1);
            gridHeader2.AddCell(gridHeader2Cell2);

            #endregion GridHeader


            #region GridInner_Cell1

            PdfPTable gridInner = new PdfPTable(2);
            gridInner.SetWidths(gridHeader2Width);


            PdfPCell gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingTop = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr1 = new StringBuilder("Being 12.5% Broker commission for P/004/01/21/2402/00301");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr1.ToString(), para)));


            Phrase gridInnerStr_P3 = new Phrase();
            gridInnerStr_P3.Add(new Chunk("21.769", para));
            PdfPCell gridInnerCell2 = new PdfPCell(gridInnerStr_P3);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingTop = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            // StringBuilder gridInnerStr2 = new StringBuilder("    115.213");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr2.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell1

            #region GridInner_Cell2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3 = new StringBuilder("For BIYAQ OILFEILD SERVICES");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3.ToString(), para)));


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 20;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr4 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2

            #region GridInner_Cell3



            Phrase gridInnerStr_P5 = new Phrase();
            gridInnerStr_P5.Add(new Chunk("Period of insurance From :", para));
            gridInnerStr_P5.Add(new Chunk("   09/09/2021   ", para));
            gridInnerStr_P5.Add(new Chunk("To :", para));
            gridInnerStr_P5.Add(new Chunk("  08/09/2022", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P5);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr6 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr6.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell3

            #region GridInner_Cell4

            Phrase gridInnerStr_P6 = new Phrase();
            gridInnerStr_P6.Add(new Chunk("Risk Cover             :", para));
            gridInnerStr_P6.Add(new Chunk("   Workmens Compensation Policy   ", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P6);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr8 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr8.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell4

            #region GridInner_Cell5

            Phrase gridInnerStr_P7 = new Phrase();
            gridInnerStr_P7.Add(new Chunk("Sub Total", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P7);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P8 = new Phrase();
            gridInnerStr_P8.Add(new Chunk("21.769", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P8);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell5

            #region GridInner_Cell6

            Phrase gridInnerStr_P9 = new Phrase();
            gridInnerStr_P9.Add(new Chunk("VAT at 5%", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P9);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P10 = new Phrase();
            gridInnerStr_P10.Add(new Chunk("1.088", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P10);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell6

            #region GridInner_Cell7

            Phrase gridInnerStr_P11 = new Phrase();
            gridInnerStr_P11.Add(new Chunk("TOTAL :", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P11);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingRight = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P12 = new Phrase();
            gridInnerStr_P12.Add(new Chunk("22.857", BoldStyle));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P12);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell7

            #region GridInner_Cell8

            Phrase gridInnerStr_P13 = new Phrase();
            gridInnerStr_P13.Add(new Chunk("AMOUNT :", BoldStyle));
            gridInnerStr_P13.Add(new Chunk(" OMANI RIYALS Twenty-Two And Baisa Eight Hundred Fifty-Seven Only", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P13);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingLeft = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);


            #endregion GridInner_Cell8

            #region ForSign1

            Phrase gridInnerStr_P14 = new Phrase();
            gridInnerStr_P14.Add(new Chunk("AL MADINA INSURANCE CO. SAOG", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P14);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 60;
            gridInnerCell1.PaddingRight = 30;
            gridInnerCell1.PaddingTop = 30;
            gridInnerCell1.Colspan = 2;
            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign1

            #region ForSign2

            Phrase gridInnerStr_P15 = new Phrase();
            gridInnerStr_P15.Add(new Chunk("Authorised Signatory", para));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P15);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingRight = 65;
            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign2

            #region E&OE

            Phrase gridInnerStr_P16 = new Phrase();
            gridInnerStr_P16.Add(new Chunk("E&OE", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P16);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.Border = 0;

            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion E&OE

            doc.Add(P1_T1);
            doc.Add(Title_Head);
            doc.Add(Row1);

            //doc.Add(NoteDetails);
            doc.Add(gridHeader1);
            doc.Add(gridHeader2);
            doc.Add(gridInner);


            #endregion Tax Credit Note Generation



            doc.Close();


            bPDF = ms.ToArray();

            return bPDF;
        }


        [HttpGet]
        [Obsolete]
        public JsonResult GLPOLICYPDF(string WLPolicyNo, string GLPolicyNo)
        {
            string HTMLContent = "";
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=" + "GL POLICY.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(GetPDF_GL_POLICY(HTMLContent));
            Response.End();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }

        [Obsolete]
        public byte[] GetPDF_GL_POLICY(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);
            Document doc = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);
            HTMLWorker htmlWorker = new HTMLWorker(doc);
            doc.Open();
            #region FontSettings


            iTextSharp.text.Font Fhead = FontFactory.GetFont("Arial");
            Fhead.Size = 11;
            Fhead.SetStyle("bold");
            Fhead.SetStyle("underline");

            iTextSharp.text.Font para = FontFactory.GetFont("Arial");
            para.Size = 9f;


            iTextSharp.text.Font BoldStyle = FontFactory.GetFont("Arial");
            BoldStyle.Size = 9f;
            BoldStyle.SetStyle("bold");


            #endregion FontSettings




            #region Tax Credit Note Generation


            doc.NewPage();

            PdfPTable P1_T1 = new PdfPTable(1);
            P1_T1.TotalWidth = 100;
            P1_T1.DefaultCell.Border = 0;
            P1_T1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            P1_T1.DefaultCell.PaddingTop = 75;
            P1_T1.AddCell(new Phrase(new Chunk(" ", Fhead)));

            PdfPTable Title_Head = new PdfPTable(1);
            Title_Head.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            Title_Head.DefaultCell.PaddingTop = 5;
            Title_Head.DefaultCell.BorderWidthBottom = 0;
            Title_Head.AddCell(new Phrase(new Chunk("DEBIT NOTE", Fhead)));

            PdfPTable Row1 = new PdfPTable(6);
            float[] Row1Width = new float[] { 15, 3, 45, 15, 3, 19 };
            Row1.SetWidths(Row1Width);

            #region Line1

            PdfPCell Row1C1 = new PdfPCell();
            Row1C1.PaddingLeft = 2;
            Row1C1.PaddingTop = 30;
            Row1C1.BorderWidthRight = 0;
            Row1C1.BorderWidthTop = 0;
            Row1C1.BorderWidthBottom = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            Row1Str1.Append("Customer No.");
            Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), BoldStyle)));

            PdfPCell Row1C2 = new PdfPCell();
            Row1C2.PaddingTop = 30;
            StringBuilder Row1Str2 = new StringBuilder("");
            Row1Str2.Append(":");
            Row1C2.Border = 0;
            Row1C2.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), para)));

            PdfPCell Row1C3 = new PdfPCell();
            Row1C3.PaddingTop = 30;
            Row1C3.Border = 0;
            StringBuilder Row1Str3 = new StringBuilder("");
            Row1Str3.Append("CB0290      ");
            Row1C3.AddElement(new Phrase(new Chunk(Row1Str3.ToString(), para)));

            PdfPCell Row1C4 = new PdfPCell();
            Row1C4.PaddingTop = 30;
            Row1C4.Border = 0;
            StringBuilder Row1Str4 = new StringBuilder("");
            Row1Str4.Append("D.N.No");
            Row1C4.AddElement(new Phrase(new Chunk(Row1Str4.ToString(), BoldStyle)));

            PdfPCell Row1C5 = new PdfPCell();
            Row1C5.PaddingTop = 30;
            Row1C5.Border = 0;
            StringBuilder Row1Str5 = new StringBuilder("");
            Row1Str5.Append(":");
            Row1C5.AddElement(new Phrase(new Chunk(Row1Str5.ToString(), para)));

            PdfPCell Row1C6 = new PdfPCell();
            Row1C6.PaddingTop = 30;
            Row1C6.BorderWidthLeft = 0;
            Row1C6.BorderWidthTop = 0;
            Row1C6.BorderWidthBottom = 0;

            StringBuilder Row1Str6 = new StringBuilder("");
            Row1Str6.Append("DNG1-46599");
            Row1C6.AddElement(new Phrase(new Chunk(Row1Str6.ToString(), para)));

            Row1.AddCell(Row1C1);
            Row1.AddCell(Row1C2);
            Row1.AddCell(Row1C3);
            Row1.AddCell(Row1C4);
            Row1.AddCell(Row1C5);
            Row1.AddCell(Row1C6);

            #endregion Line1
            #region Line2

            PdfPCell Row2C1 = new PdfPCell();
            Row2C1.PaddingLeft = 2;
            Row2C1.BorderWidthRight = 0;
            Row2C1.BorderWidthTop = 0;
            Row2C1.BorderWidthBottom = 0;
            StringBuilder Row2Str1 = new StringBuilder("");
            Row2Str1.Append("Insured");
            Row2C1.AddElement(new Phrase(new Chunk(Row2Str1.ToString(), BoldStyle)));

            PdfPCell Row2C2 = new PdfPCell();
            StringBuilder Row2Str2 = new StringBuilder("");
            Row2Str2.Append(":");
            Row2C2.Border = 0;
            Row2C2.AddElement(new Phrase(new Chunk(Row2Str2.ToString(), para)));

            PdfPCell Row2C3 = new PdfPCell();
            Row2C3.Border = 0;
            StringBuilder Row2Str3 = new StringBuilder("");
            Row2Str3.Append("BIYAQ OILFEILD SERVICES");
            Row2C3.AddElement(new Phrase(new Chunk(Row2Str3.ToString(), para)));

            PdfPCell Row2C4 = new PdfPCell();
            Row2C4.Border = 0;
            StringBuilder Row2Str4 = new StringBuilder("");
            Row2Str4.Append("Invoice Date");
            Row2C4.AddElement(new Phrase(new Chunk(Row2Str4.ToString(), BoldStyle)));

            PdfPCell Row2C5 = new PdfPCell();
            Row2C5.Border = 0;
            StringBuilder Row2Str5 = new StringBuilder("");
            Row2Str5.Append(":");
            Row2C5.AddElement(new Phrase(new Chunk(Row2Str5.ToString(), para)));

            PdfPCell Row2C6 = new PdfPCell();
            Row2C6.BorderWidthLeft = 0;
            Row2C6.BorderWidthTop = 0;
            Row2C6.BorderWidthBottom = 0;

            StringBuilder Row2Str6 = new StringBuilder("");
            Row2Str6.Append("14/09/2021");
            Row2C6.AddElement(new Phrase(new Chunk(Row2Str6.ToString(), para)));

            Row1.AddCell(Row2C1);
            Row1.AddCell(Row2C2);
            Row1.AddCell(Row2C3);
            Row1.AddCell(Row2C4);
            Row1.AddCell(Row2C5);
            Row1.AddCell(Row2C6);


            #endregion Line2
            #region Line3

            PdfPCell Row3C1 = new PdfPCell();
            Row3C1.PaddingLeft = 2;
            Row3C1.BorderWidthRight = 0;
            Row3C1.BorderWidthTop = 0;
            Row3C1.BorderWidthBottom = 0;
            StringBuilder Row3Str1 = new StringBuilder("");
            Row3Str1.Append("To");
            Row3C1.AddElement(new Phrase(new Chunk(Row3Str1.ToString(), BoldStyle)));

            PdfPCell Row3C2 = new PdfPCell();
            StringBuilder Row3Str2 = new StringBuilder("");
            Row3Str2.Append(":");
            Row3C2.Border = 0;
            Row3C2.AddElement(new Phrase(new Chunk(Row3Str2.ToString(), para)));


            PdfPCell Row3C3 = new PdfPCell();
            Row3C3.Border = 0;
            StringBuilder Row3Str3 = new StringBuilder("");
            Row3Str3.Append("BIYAQ OILFEILD");
            Row3C3.AddElement(new Phrase(new Chunk(Row3Str3.ToString(), para)));

            PdfPCell Row3C4 = new PdfPCell();
            Row3C4.Border = 0;
            StringBuilder Row3Str4 = new StringBuilder("");
            Row3Str4.Append("Pymt Due Date");
            Row3C4.AddElement(new Phrase(new Chunk(Row3Str4.ToString(), BoldStyle)));

            PdfPCell Row3C5 = new PdfPCell();
            Row3C5.Border = 0;
            StringBuilder Row3Str5 = new StringBuilder("");
            Row3Str5.Append(":");
            Row3C5.AddElement(new Phrase(new Chunk(Row3Str5.ToString(), para)));

            PdfPCell Row3C6 = new PdfPCell();
            Row3C6.BorderWidthLeft = 0;
            Row3C6.BorderWidthTop = 0;
            Row3C6.BorderWidthBottom = 0;

            StringBuilder Row3Str6 = new StringBuilder("");
            Row3Str6.Append("14/09/2021");
            Row3C6.AddElement(new Phrase(new Chunk(Row3Str6.ToString(), para)));


            Row1.AddCell(Row3C1);
            Row1.AddCell(Row3C2);
            Row1.AddCell(Row3C3);
            Row1.AddCell(Row3C4);
            Row1.AddCell(Row3C5);
            Row1.AddCell(Row3C6);

            #endregion Line3
            #region Line4


            PdfPCell Row4C1 = new PdfPCell();
            Row4C1.PaddingLeft = 2;
            Row4C1.BorderWidthRight = 0;
            Row4C1.BorderWidthTop = 0;
            Row4C1.BorderWidthBottom = 0;
            StringBuilder Row4Str1 = new StringBuilder("");
            Row4C1.AddElement(new Phrase(new Chunk(Row4Str1.ToString(), para)));

            PdfPCell Row4C2 = new PdfPCell();
            StringBuilder Row4Str2 = new StringBuilder("");
            Row3Str2.Append("");
            Row4C2.Border = 0;
            Row4C2.AddElement(new Phrase(new Chunk(Row4Str2.ToString(), para)));


            PdfPCell Row4C3 = new PdfPCell();
            Row4C3.Border = 0;
            StringBuilder Row4Str3 = new StringBuilder("");
            Row4Str3.Append("SERVICES");
            Row4C3.AddElement(new Phrase(new Chunk(Row4Str3.ToString(), para)));



            PdfPCell Row4C4 = new PdfPCell();
            Row4C4.Border = 0;
            StringBuilder Row4Str4 = new StringBuilder("");
            Row4Str4.Append("Adv Pymt Date");
            Row4C4.AddElement(new Phrase(new Chunk(Row4Str4.ToString(), BoldStyle)));

            PdfPCell Row4C5 = new PdfPCell();
            Row4C5.Border = 0;
            StringBuilder Row4Str5 = new StringBuilder("");
            Row4Str5.Append(":");
            Row4C5.AddElement(new Phrase(new Chunk(Row4Str5.ToString(), para)));

            PdfPCell Row4C6 = new PdfPCell();
            Row4C6.BorderWidthLeft = 0;
            Row4C6.BorderWidthTop = 0;
            Row4C6.BorderWidthBottom = 0;

            StringBuilder Row4Str6 = new StringBuilder("");
            Row4Str6.Append("");
            Row4C6.AddElement(new Phrase(new Chunk(Row4Str6.ToString(), para)));


            Row1.AddCell(Row4C1);
            Row1.AddCell(Row4C2);
            Row1.AddCell(Row4C3);
            Row1.AddCell(Row4C4);
            Row1.AddCell(Row4C5);
            Row1.AddCell(Row4C6);


            #endregion Line4
            #region Line5

            PdfPCell Row5C1 = new PdfPCell();
            Row5C1.PaddingLeft = 2;
            Row5C1.BorderWidthRight = 0;
            Row5C1.BorderWidthTop = 0;
            Row5C1.BorderWidthBottom = 0;
            //Row5C1.PaddingBottom = 10;
            StringBuilder Row5Str1 = new StringBuilder("");
            Row5C1.AddElement(new Phrase(new Chunk(Row5Str1.ToString(), BoldStyle)));

            PdfPCell Row5C2 = new PdfPCell();
            StringBuilder Row5Str2 = new StringBuilder("");
            Row5Str2.Append("");
            Row5C2.BorderWidthRight = 0;
            Row5C2.BorderWidthTop = 0;
            Row5C2.BorderWidthLeft = 0;
            Row5C2.BorderWidthBottom = 0f;
            //Row5C2.PaddingBottom = 10;
            Row5C2.AddElement(new Phrase(new Chunk(Row5Str2.ToString(), para)));


            PdfPCell Row5C3 = new PdfPCell();
            //Row5C3.BorderWidthRight = 0.1f;
            Row5C3.BorderWidthBottom = 0;
            Row5C3.BorderWidthTop = 0;
            Row5C3.BorderWidthLeft = 0;
            Row5C3.BorderWidthRight = 0;
            //Row5C3.BorderWidthBottom = 0.1f;
            //Row5C3.PaddingBottom = 10;            
            StringBuilder Row5Str3 = new StringBuilder("");
            Row5Str3.Append("PO BOX 795 PC 116");
            Row5C3.AddElement(new Phrase(new Chunk(Row5Str3.ToString(), para)));

            PdfPCell Row5C4 = new PdfPCell();
            Row5C4.Border = 0;
            StringBuilder Row5Str4 = new StringBuilder("");
            Row5Str4.Append("Office");
            Row5C4.AddElement(new Phrase(new Chunk(Row5Str4.ToString(), BoldStyle)));

            PdfPCell Row5C5 = new PdfPCell();
            Row5C5.Border = 0;
            StringBuilder Row5Str5 = new StringBuilder("");
            Row5Str5.Append(":");
            Row5C5.AddElement(new Phrase(new Chunk(Row5Str5.ToString(), para)));

            PdfPCell Row5C6 = new PdfPCell();
            Row5C6.BorderWidthLeft = 0;
            Row5C6.BorderWidthTop = 0;
            Row5C6.BorderWidthBottom = 0;

            StringBuilder Row5Str6 = new StringBuilder("");
            Row5Str6.Append("Head Office");
            Row5C6.AddElement(new Phrase(new Chunk(Row5Str6.ToString(), para)));

            Row1.AddCell(Row5C1);
            Row1.AddCell(Row5C2);
            Row1.AddCell(Row5C3);
            Row1.AddCell(Row5C4);
            Row1.AddCell(Row5C5);
            Row1.AddCell(Row5C6);

            #endregion Line5

            #region Line6

            PdfPCell Row6C1 = new PdfPCell();
            Row6C1.PaddingLeft = 2;
            Row6C1.BorderWidthRight = 0;
            Row6C1.BorderWidthBottom = 0;
            Row6C1.BorderWidthTop = 0;
            //Row6C1.BorderWidthBottom = 0.1f;
            //Row6C1.PaddingBottom = 10;
            StringBuilder Row6Str1 = new StringBuilder("VAT IN");
            Row6C1.AddElement(new Phrase(new Chunk(Row6Str1.ToString(), para)));

            PdfPCell Row6C2 = new PdfPCell();
            StringBuilder Row6Str2 = new StringBuilder("");
            Row6Str2.Append(":");
            Row6C2.BorderWidthBottom = 0;
            Row6C2.BorderWidthRight = 0;
            Row6C2.BorderWidthTop = 0;
            Row6C2.BorderWidthLeft = 0;
            //Row6C2.BorderWidthBottom = 0.1f;
            //Row6C2.PaddingBottom = 10;
            Row6C2.AddElement(new Phrase(new Chunk(Row6Str2.ToString(), para)));


            PdfPCell Row6C3 = new PdfPCell();
            //Row6C3.BorderWidthRight = 0.1f;
            Row6C3.BorderWidthTop = 0;
            Row6C3.BorderWidthLeft = 0;
            Row6C3.BorderWidthBottom = 0;
            Row6C3.BorderWidthRight = 0;
            //Row6C3.BorderWidthBottom = 0.1f;
            //Row6C3.PaddingBottom = 10;
            StringBuilder Row6Str3 = new StringBuilder("");
            Row6Str3.Append("OM1100031238");
            Row6C3.AddElement(new Phrase(new Chunk(Row6Str3.ToString(), para)));

            PdfPCell Row6C4 = new PdfPCell();
            Row6C4.Border = 0;
            StringBuilder Row6Str4 = new StringBuilder("");
            Row6Str4.Append("Department");
            Row6C4.AddElement(new Phrase(new Chunk(Row6Str4.ToString(), BoldStyle)));

            PdfPCell Row6C5 = new PdfPCell();
            Row6C5.Border = 0;
            StringBuilder Row6Str5 = new StringBuilder("");
            Row6Str5.Append(":");
            Row6C5.AddElement(new Phrase(new Chunk(Row6Str5.ToString(), para)));

            PdfPCell Row6C6 = new PdfPCell();
            Row6C6.BorderWidthLeft = 0;
            Row6C6.BorderWidthTop = 0;
            Row6C6.BorderWidthBottom = 0;

            StringBuilder Row6Str6 = new StringBuilder("");
            Row6Str6.Append("Life");
            Row6C6.AddElement(new Phrase(new Chunk(Row6Str6.ToString(), para)));

            Row1.AddCell(Row6C1);
            Row1.AddCell(Row6C2);
            Row1.AddCell(Row6C3);
            Row1.AddCell(Row6C4);
            Row1.AddCell(Row6C5);
            Row1.AddCell(Row6C6);

            #endregion Line6

            #region Line7

            PdfPCell Row7C1 = new PdfPCell();
            Row7C1.PaddingLeft = 2;
            Row7C1.BorderWidthRight = 0;
            Row7C1.BorderWidthTop = 0;
            Row7C1.BorderWidthBottom = 0;
            Row7C1.PaddingBottom = 10;
            StringBuilder Row7Str1 = new StringBuilder("");
            Row7C1.AddElement(new Phrase(new Chunk(Row7Str1.ToString(), para)));

            PdfPCell Row7C2 = new PdfPCell();
            StringBuilder Row7Str2 = new StringBuilder("");
            Row7Str2.Append("");
            Row7C2.BorderWidthRight = 0;
            Row7C2.BorderWidthTop = 0;
            Row7C2.BorderWidthLeft = 0;
            Row7C2.BorderWidthBottom = 0f;
            Row7C2.PaddingBottom = 10;
            Row7C2.AddElement(new Phrase(new Chunk(Row7Str2.ToString(), para)));


            PdfPCell Row7C3 = new PdfPCell();
            Row7C3.BorderWidthRight = 0.1f;
            Row7C3.BorderWidthTop = 0;
            Row7C3.BorderWidthLeft = 0;
            Row7C3.BorderWidthBottom = 0f;
            Row7C3.BorderWidthRight = 0f;
            Row7C3.PaddingBottom = 10;
            StringBuilder Row7Str3 = new StringBuilder("");
            Row7Str3.Append("");
            Row7C3.AddElement(new Phrase(new Chunk(Row7Str3.ToString(), para)));

            PdfPCell Row7C4 = new PdfPCell();
            Row7C4.Border = 0;
            StringBuilder Row7Str4 = new StringBuilder("");
            Row7Str4.Append("VAT IN");
            Row7C4.AddElement(new Phrase(new Chunk(Row7Str4.ToString(), BoldStyle)));

            PdfPCell Row7C5 = new PdfPCell();
            Row7C5.Border = 0;
            StringBuilder Row7Str5 = new StringBuilder("");
            Row7Str5.Append(":");
            Row7C5.AddElement(new Phrase(new Chunk(Row7Str5.ToString(), para)));

            PdfPCell Row7C6 = new PdfPCell();
            Row7C6.BorderWidthLeft = 0;
            Row7C6.BorderWidthTop = 0;
            Row7C6.BorderWidthBottom = 0;

            StringBuilder Row7Str6 = new StringBuilder("");
            Row7Str6.Append("OM1100001952");
            Row7C6.AddElement(new Phrase(new Chunk(Row7Str6.ToString(), para)));

            Row1.AddCell(Row7C1);
            Row1.AddCell(Row7C2);
            Row1.AddCell(Row7C3);
            Row1.AddCell(Row7C4);
            Row1.AddCell(Row7C5);
            Row1.AddCell(Row7C6);

            #endregion Line7

            #region Line8

            PdfPCell Row8C1 = new PdfPCell();
            Row8C1.PaddingTop = 10;
            Row8C1.PaddingBottom = 5;
            Row8C1.BorderWidthTop = 0;
            Row8C1.Colspan = 6;
            StringBuilder Row8Str1 = new StringBuilder("Please Note that we have DEBITED your account as follows");
            Row8C1.AddElement(new Phrase(new Chunk(Row8Str1.ToString(), BoldStyle)));
            Row1.AddCell(Row8C1);


            #endregion Line8

            #region GridHeader

            PdfPTable gridHeader1 = new PdfPTable(2);
            float[] gridHeaderWidth = new float[] { 80, 20 };
            gridHeader1.SetWidths(gridHeaderWidth);

            PdfPCell gridHeader1Cell1 = new PdfPCell();
            gridHeader1Cell1.PaddingLeft = 0;
            gridHeader1Cell1.BorderWidthTop = 0.1f;
            gridHeader1Cell1.BorderWidthBottom = 0;
            StringBuilder gridHeaderStr1 = new StringBuilder("                                                    Description");
            gridHeader1Cell1.AddElement(new Phrase(new Chunk(gridHeaderStr1.ToString(), BoldStyle)));
            gridHeader1Cell1.FixedHeight = 20;

            PdfPCell gridHeader1Cell2 = new PdfPCell();
            gridHeader1Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader1Cell2.BorderWidthTop = 0.1f;
            gridHeader1Cell2.BorderWidthBottom = 0;
            gridHeader1Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeaderStr2 = new StringBuilder("     Amount In");
            gridHeader1Cell2.AddElement(new Phrase(new Chunk(gridHeaderStr2.ToString(), BoldStyle)));
            gridHeader1Cell2.FixedHeight = 20;

            gridHeader1.AddCell(gridHeader1Cell1);
            gridHeader1.AddCell(gridHeader1Cell2);


            PdfPTable gridHeader2 = new PdfPTable(2);
            float[] gridHeader2Width = new float[] { 80, 20 };
            gridHeader2.SetWidths(gridHeader2Width);


            PdfPCell gridHeader2Cell1 = new PdfPCell();
            gridHeader2Cell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell1.BorderWidthTop = 0;
            StringBuilder gridHeader2Str1 = new StringBuilder("");
            gridHeader2Cell1.AddElement(new Phrase(new Chunk(gridHeader2Str1.ToString(), para)));
            gridHeader2Cell1.FixedHeight = 20;

            PdfPCell gridHeader2Cell2 = new PdfPCell();
            gridHeader2Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell2.BorderWidthTop = 0;
            gridHeader2Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeader2Str2 = new StringBuilder("    OMANI RIYAL");
            gridHeader2Cell2.AddElement(new Phrase(new Chunk(gridHeader2Str2.ToString(), BoldStyle)));
            gridHeader2Cell2.FixedHeight = 20;

            gridHeader2.AddCell(gridHeader2Cell1);
            gridHeader2.AddCell(gridHeader2Cell2);

            #endregion GridHeader


            #region GridInner_Cell1

            PdfPTable gridInner = new PdfPTable(2);
            gridInner.SetWidths(gridHeader2Width);


            PdfPCell gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingTop = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr1 = new StringBuilder("Being policy premium for Group Life Policy No. P/004/01/21/3301/00237");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr1.ToString(), para)));


            Phrase gridInnerStr_P3 = new Phrase();
            gridInnerStr_P3.Add(new Chunk("921.705", para));
            PdfPCell gridInnerCell2 = new PdfPCell(gridInnerStr_P3);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingTop = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            // StringBuilder gridInnerStr2 = new StringBuilder("    115.213");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr2.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell1

            #region GridInner_Cell2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3 = new StringBuilder("Insurance Levy");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3.ToString(), para)));

            Phrase gridInnerStr_P4 = new Phrase();
            gridInnerStr_P4.Add(new Chunk("5.069", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P4);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            //StringBuilder gridInnerStr4 = new StringBuilder("");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2

            #region GridInner_Cell2_2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3_2 = new StringBuilder("Policy Fee");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3_2.ToString(), para)));

            Phrase gridInnerStr_P4_2 = new Phrase();
            gridInnerStr_P4_2.Add(new Chunk("1.000", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P4_2);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            //StringBuilder gridInnerStr4 = new StringBuilder("");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2_2

            #region GridInner_Cell3



            Phrase gridInnerStr_P5 = new Phrase();
            gridInnerStr_P5.Add(new Chunk("Supply Dt/Period of insurance From :", para));
            gridInnerStr_P5.Add(new Chunk("   09/09/2021   ", para));
            gridInnerStr_P5.Add(new Chunk("To :", para));
            gridInnerStr_P5.Add(new Chunk("  08/09/2022", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P5);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr6 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr6.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell3

            #region GridInner_Cell4

            Phrase gridInnerStr_P6 = new Phrase();
            gridInnerStr_P6.Add(new Chunk("Risk Cover             :", para));
            gridInnerStr_P6.Add(new Chunk("   Group Life   ", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P6);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr8 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr8.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell4

            #region GridInner_Cell5

            Phrase gridInnerStr_P7 = new Phrase();
            gridInnerStr_P7.Add(new Chunk("Sub Total", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P7);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P8 = new Phrase();
            gridInnerStr_P8.Add(new Chunk("927.774", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P8);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell5

            //#region GridInner_Cell6

            //Phrase gridInnerStr_P9 = new Phrase();
            //gridInnerStr_P9.Add(new Chunk("VAT at 5%", para));

            //gridInnerCell1 = new PdfPCell(gridInnerStr_P9);
            //gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            //gridInnerCell1.BorderWidthTop = 0;
            //gridInnerCell1.PaddingBottom = 5;
            //gridInnerCell1.PaddingTop = 5;
            //gridInnerCell1.PaddingLeft = 20;

            //Phrase gridInnerStr_P10 = new Phrase();
            //gridInnerStr_P10.Add(new Chunk("1.088", para));
            //gridInnerCell2 = new PdfPCell(gridInnerStr_P10);
            //gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            //gridInnerCell2.PaddingBottom = 5;
            //gridInnerCell2.PaddingTop = 5;
            ////gridInnerCell2.PaddingLeft = 23;
            //gridInnerCell2.BorderWidthTop = 0;
            //gridInnerCell2.BorderWidthLeft = 0;

            //gridInner.AddCell(gridInnerCell1);
            //gridInner.AddCell(gridInnerCell2);

            //#endregion GridInner_Cell6

            #region GridInner_Cell7

            Phrase gridInnerStr_P11 = new Phrase();
            gridInnerStr_P11.Add(new Chunk("TOTAL :", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P11);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingRight = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P12 = new Phrase();
            gridInnerStr_P12.Add(new Chunk("927.774", BoldStyle));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P12);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell7

            #region GridInner_Cell8

            Phrase gridInnerStr_P13 = new Phrase();
            gridInnerStr_P13.Add(new Chunk("AMOUNT :", BoldStyle));
            gridInnerStr_P13.Add(new Chunk(" OMANI RIYALS Nine Hundred Twenty-Seven And Baisa Seven Hundred Seventy-Four Only", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P13);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingLeft = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);


            #endregion GridInner_Cell8

            #region ForSign1

            Phrase gridInnerStr_P14 = new Phrase();
            gridInnerStr_P14.Add(new Chunk("AL MADINA INSURANCE CO. SAOG", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P14);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 60;
            gridInnerCell1.PaddingRight = 30;
            gridInnerCell1.PaddingTop = 30;
            gridInnerCell1.Colspan = 2;
            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign1

            #region ForSign2

            Phrase gridInnerStr_P15 = new Phrase();
            gridInnerStr_P15.Add(new Chunk("Authorised Signatory", para));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P15);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingRight = 65;
            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign2


            #region BankAccount

            PdfPTable Row2 = new PdfPTable(2);
            float[] Row2Width = new float[] { 20, 80 };
            Row2.SetWidths(Row2Width);

            PdfPCell Bank_C1 = new PdfPCell(new Phrase(new Chunk("BANK ACCOUNT DETAILS", BoldStyle)));
            Bank_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_C1.PaddingBottom = 5;
            Bank_C1.Border = 0;
            Bank_C1.Colspan = 2;
            Row2.AddCell(Bank_C1);


            PdfPCell Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Beneficiary Name", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            PdfPCell Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Al Madina Insurance Co.SAOG", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Account No.", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("10000-0000-806", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Bank Name", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("MUZN ISLAMIC BANKING", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Bank Address", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Muzn,PO Box 751,", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Postal Code 112,Ruwi", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Muscat,Sultanate of Oman", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Swift Code", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("NBOMOMRXIBS", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);




            gridInnerCell1 = new PdfPCell(Row2);
            //gridInnerCell1.AddElement(Row2);
            gridInnerCell1.PaddingLeft = 5f;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);

            #endregion BankAccount

            #region E&OE

            Phrase gridInnerStr_P16 = new Phrase();
            gridInnerStr_P16.Add(new Chunk("E&OE", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P16);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.Border = 0;

            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion E&OE

            doc.Add(P1_T1);
            doc.Add(Title_Head);
            doc.Add(Row1);

            //doc.Add(NoteDetails);
            doc.Add(gridHeader1);
            doc.Add(gridHeader2);
            doc.Add(gridInner);


            #endregion Tax Credit Note Generation



            doc.Close();


            bPDF = ms.ToArray();

            return bPDF;
        }


        [HttpGet]
        [Obsolete]
        public JsonResult WCPOLICYPDF(string WLPolicyNo, string GLPolicyNo)
        {
            string HTMLContent = "";
            GetQuotation(WLPolicyNo, GLPolicyNo, out List<Quotation> lstQuo);
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=" + "WC POLICY.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(GetPDF_WC_POLICY(HTMLContent));
            Response.End();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }

        [Obsolete]
        public byte[] GetPDF_WC_POLICY(string pHTML)
        {
            byte[] bPDF = null;

            MemoryStream ms = new MemoryStream();
            TextReader txtReader = new StringReader(pHTML);
            Document doc = new Document(PageSize.A4, 0, 0, 0, 0);
            PdfWriter oPdfWriter = PdfWriter.GetInstance(doc, ms);
            HTMLWorker htmlWorker = new HTMLWorker(doc);
            doc.Open();
            #region FontSettings

            iTextSharp.text.Font Fhead = FontFactory.GetFont("Arial");
            Fhead.Size = 11;
            Fhead.SetStyle("bold");
            Fhead.SetStyle("underline");

            iTextSharp.text.Font para = FontFactory.GetFont("Arial");
            para.Size = 9f;

            iTextSharp.text.Font BoldStyle = FontFactory.GetFont("Arial");
            BoldStyle.Size = 9f;
            BoldStyle.SetStyle("bold");

            #endregion FontSettings

            #region Tax Credit Note Generation

            doc.NewPage();

            PdfPTable P1_T1 = new PdfPTable(1);
            P1_T1.TotalWidth = 100;
            P1_T1.DefaultCell.Border = 0;
            P1_T1.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            P1_T1.DefaultCell.PaddingTop = 75;
            P1_T1.AddCell(new Phrase(new Chunk(" ", Fhead)));

            PdfPTable Title_Head = new PdfPTable(1);
            Title_Head.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            Title_Head.DefaultCell.PaddingTop = 5;
            Title_Head.DefaultCell.BorderWidthBottom = 0;
            Title_Head.AddCell(new Phrase(new Chunk("TAX INVOICE", Fhead)));

            PdfPTable Row1 = new PdfPTable(6);
            float[] Row1Width = new float[] { 15, 3, 45, 15, 3, 19 };
            Row1.SetWidths(Row1Width);

            #region Line1

            PdfPCell Row1C1 = new PdfPCell();
            Row1C1.PaddingLeft = 2;
            Row1C1.PaddingTop = 30;
            Row1C1.BorderWidthRight = 0;
            Row1C1.BorderWidthTop = 0;
            Row1C1.BorderWidthBottom = 0;
            StringBuilder Row1Str1 = new StringBuilder("");
            Row1Str1.Append("Customer No.");
            Row1C1.AddElement(new Phrase(new Chunk(Row1Str1.ToString(), BoldStyle)));

            PdfPCell Row1C2 = new PdfPCell();
            Row1C2.PaddingTop = 30;
            StringBuilder Row1Str2 = new StringBuilder("");
            Row1Str2.Append(":");
            Row1C2.Border = 0;
            Row1C2.AddElement(new Phrase(new Chunk(Row1Str2.ToString(), para)));

            PdfPCell Row1C3 = new PdfPCell();
            Row1C3.PaddingTop = 30;
            Row1C3.Border = 0;
            StringBuilder Row1Str3 = new StringBuilder("");
            Row1Str3.Append("CB0290");
            Row1C3.AddElement(new Phrase(new Chunk(Row1Str3.ToString(), para)));

            PdfPCell Row1C4 = new PdfPCell();
            Row1C4.PaddingTop = 30;
            Row1C4.Border = 0;
            StringBuilder Row1Str4 = new StringBuilder("");
            Row1Str4.Append("D.N.No");
            Row1C4.AddElement(new Phrase(new Chunk(Row1Str4.ToString(), BoldStyle)));

            PdfPCell Row1C5 = new PdfPCell();
            Row1C5.PaddingTop = 30;
            Row1C5.Border = 0;
            StringBuilder Row1Str5 = new StringBuilder("");
            Row1Str5.Append(":");
            Row1C5.AddElement(new Phrase(new Chunk(Row1Str5.ToString(), para)));

            PdfPCell Row1C6 = new PdfPCell();
            Row1C6.PaddingTop = 30;
            Row1C6.BorderWidthLeft = 0;
            Row1C6.BorderWidthTop = 0;
            Row1C6.BorderWidthBottom = 0;

            StringBuilder Row1Str6 = new StringBuilder("");
            Row1Str6.Append("DNG1-46609");
            Row1C6.AddElement(new Phrase(new Chunk(Row1Str6.ToString(), para)));

            Row1.AddCell(Row1C1);
            Row1.AddCell(Row1C2);
            Row1.AddCell(Row1C3);
            Row1.AddCell(Row1C4);
            Row1.AddCell(Row1C5);
            Row1.AddCell(Row1C6);

            #endregion Line1
            #region Line2

            PdfPCell Row2C1 = new PdfPCell();
            Row2C1.PaddingLeft = 2;
            Row2C1.BorderWidthRight = 0;
            Row2C1.BorderWidthTop = 0;
            Row2C1.BorderWidthBottom = 0;
            StringBuilder Row2Str1 = new StringBuilder("");
            Row2Str1.Append("Insured");
            Row2C1.AddElement(new Phrase(new Chunk(Row2Str1.ToString(), BoldStyle)));

            PdfPCell Row2C2 = new PdfPCell();
            StringBuilder Row2Str2 = new StringBuilder("");
            Row2Str2.Append(":");
            Row2C2.Border = 0;
            Row2C2.AddElement(new Phrase(new Chunk(Row2Str2.ToString(), para)));

            PdfPCell Row2C3 = new PdfPCell();
            Row2C3.Border = 0;
            StringBuilder Row2Str3 = new StringBuilder("");
            Row2Str3.Append("BIYAQ OILFEILD SERVICES");
            Row2C3.AddElement(new Phrase(new Chunk(Row2Str3.ToString(), para)));

            PdfPCell Row2C4 = new PdfPCell();
            Row2C4.Border = 0;
            StringBuilder Row2Str4 = new StringBuilder("");
            Row2Str4.Append("Invoice Date");
            Row2C4.AddElement(new Phrase(new Chunk(Row2Str4.ToString(), BoldStyle)));

            PdfPCell Row2C5 = new PdfPCell();
            Row2C5.Border = 0;
            StringBuilder Row2Str5 = new StringBuilder("");
            Row2Str5.Append(":");
            Row2C5.AddElement(new Phrase(new Chunk(Row2Str5.ToString(), para)));

            PdfPCell Row2C6 = new PdfPCell();
            Row2C6.BorderWidthLeft = 0;
            Row2C6.BorderWidthTop = 0;
            Row2C6.BorderWidthBottom = 0;

            StringBuilder Row2Str6 = new StringBuilder("");
            Row2Str6.Append("14/09/2021");
            Row2C6.AddElement(new Phrase(new Chunk(Row2Str6.ToString(), para)));

            Row1.AddCell(Row2C1);
            Row1.AddCell(Row2C2);
            Row1.AddCell(Row2C3);
            Row1.AddCell(Row2C4);
            Row1.AddCell(Row2C5);
            Row1.AddCell(Row2C6);


            #endregion Line2
            #region Line3

            PdfPCell Row3C1 = new PdfPCell();
            Row3C1.PaddingLeft = 2;
            Row3C1.BorderWidthRight = 0;
            Row3C1.BorderWidthTop = 0;
            Row3C1.BorderWidthBottom = 0;
            StringBuilder Row3Str1 = new StringBuilder("");
            Row3Str1.Append("To");
            Row3C1.AddElement(new Phrase(new Chunk(Row3Str1.ToString(), BoldStyle)));

            PdfPCell Row3C2 = new PdfPCell();
            StringBuilder Row3Str2 = new StringBuilder("");
            Row3Str2.Append(":");
            Row3C2.Border = 0;
            Row3C2.AddElement(new Phrase(new Chunk(Row3Str2.ToString(), para)));


            PdfPCell Row3C3 = new PdfPCell();
            Row3C3.Border = 0;
            StringBuilder Row3Str3 = new StringBuilder("");
            Row3Str3.Append("BIYAQ OILFEILD");
            Row3C3.AddElement(new Phrase(new Chunk(Row3Str3.ToString(), para)));

            PdfPCell Row3C4 = new PdfPCell();
            Row3C4.Border = 0;
            StringBuilder Row3Str4 = new StringBuilder("");
            Row3Str4.Append("Pymt Due Date");
            Row3C4.AddElement(new Phrase(new Chunk(Row3Str4.ToString(), BoldStyle)));

            PdfPCell Row3C5 = new PdfPCell();
            Row3C5.Border = 0;
            StringBuilder Row3Str5 = new StringBuilder("");
            Row3Str5.Append(":");
            Row3C5.AddElement(new Phrase(new Chunk(Row3Str5.ToString(), para)));

            PdfPCell Row3C6 = new PdfPCell();
            Row3C6.BorderWidthLeft = 0;
            Row3C6.BorderWidthTop = 0;
            Row3C6.BorderWidthBottom = 0;

            StringBuilder Row3Str6 = new StringBuilder("");
            Row3Str6.Append("14/09/2021");
            Row3C6.AddElement(new Phrase(new Chunk(Row3Str6.ToString(), para)));


            Row1.AddCell(Row3C1);
            Row1.AddCell(Row3C2);
            Row1.AddCell(Row3C3);
            Row1.AddCell(Row3C4);
            Row1.AddCell(Row3C5);
            Row1.AddCell(Row3C6);

            #endregion Line3
            #region Line4


            PdfPCell Row4C1 = new PdfPCell();
            Row4C1.PaddingLeft = 2;
            Row4C1.BorderWidthRight = 0;
            Row4C1.BorderWidthTop = 0;
            Row4C1.BorderWidthBottom = 0;
            StringBuilder Row4Str1 = new StringBuilder("");
            Row4C1.AddElement(new Phrase(new Chunk(Row4Str1.ToString(), para)));

            PdfPCell Row4C2 = new PdfPCell();
            StringBuilder Row4Str2 = new StringBuilder("");
            Row3Str2.Append("");
            Row4C2.Border = 0;
            Row4C2.AddElement(new Phrase(new Chunk(Row4Str2.ToString(), para)));


            PdfPCell Row4C3 = new PdfPCell();
            Row4C3.Border = 0;
            StringBuilder Row4Str3 = new StringBuilder("");
            Row4Str3.Append("SERVICES");
            Row4C3.AddElement(new Phrase(new Chunk(Row4Str3.ToString(), para)));



            PdfPCell Row4C4 = new PdfPCell();
            Row4C4.Border = 0;
            StringBuilder Row4Str4 = new StringBuilder("");
            Row4Str4.Append("Adv Pymt Date");
            Row4C4.AddElement(new Phrase(new Chunk(Row4Str4.ToString(), BoldStyle)));

            PdfPCell Row4C5 = new PdfPCell();
            Row4C5.Border = 0;
            StringBuilder Row4Str5 = new StringBuilder("");
            Row4Str5.Append(":");
            Row4C5.AddElement(new Phrase(new Chunk(Row4Str5.ToString(), para)));

            PdfPCell Row4C6 = new PdfPCell();
            Row4C6.BorderWidthLeft = 0;
            Row4C6.BorderWidthTop = 0;
            Row4C6.BorderWidthBottom = 0;

            StringBuilder Row4Str6 = new StringBuilder("");
            Row4Str6.Append("");
            Row4C6.AddElement(new Phrase(new Chunk(Row4Str6.ToString(), para)));


            Row1.AddCell(Row4C1);
            Row1.AddCell(Row4C2);
            Row1.AddCell(Row4C3);
            Row1.AddCell(Row4C4);
            Row1.AddCell(Row4C5);
            Row1.AddCell(Row4C6);


            #endregion Line4
            #region Line5

            PdfPCell Row5C1 = new PdfPCell();
            Row5C1.PaddingLeft = 2;
            Row5C1.BorderWidthRight = 0;
            Row5C1.BorderWidthTop = 0;
            Row5C1.BorderWidthBottom = 0;
            //Row5C1.PaddingBottom = 10;
            StringBuilder Row5Str1 = new StringBuilder("");
            Row5C1.AddElement(new Phrase(new Chunk(Row5Str1.ToString(), BoldStyle)));

            PdfPCell Row5C2 = new PdfPCell();
            StringBuilder Row5Str2 = new StringBuilder("");
            Row5Str2.Append("");
            Row5C2.BorderWidthRight = 0;
            Row5C2.BorderWidthTop = 0;
            Row5C2.BorderWidthLeft = 0;
            Row5C2.BorderWidthBottom = 0f;
            //Row5C2.PaddingBottom = 10;
            Row5C2.AddElement(new Phrase(new Chunk(Row5Str2.ToString(), para)));


            PdfPCell Row5C3 = new PdfPCell();
            //Row5C3.BorderWidthRight = 0.1f;
            Row5C3.BorderWidthBottom = 0;
            Row5C3.BorderWidthTop = 0;
            Row5C3.BorderWidthLeft = 0;
            Row5C3.BorderWidthRight = 0;
            //Row5C3.BorderWidthBottom = 0.1f;
            //Row5C3.PaddingBottom = 10;            
            StringBuilder Row5Str3 = new StringBuilder("");
            Row5Str3.Append("PO BOX 795 PC 116");
            Row5C3.AddElement(new Phrase(new Chunk(Row5Str3.ToString(), para)));

            PdfPCell Row5C4 = new PdfPCell();
            Row5C4.Border = 0;
            StringBuilder Row5Str4 = new StringBuilder("");
            Row5Str4.Append("Office");
            Row5C4.AddElement(new Phrase(new Chunk(Row5Str4.ToString(), BoldStyle)));

            PdfPCell Row5C5 = new PdfPCell();
            Row5C5.Border = 0;
            StringBuilder Row5Str5 = new StringBuilder("");
            Row5Str5.Append(":");
            Row5C5.AddElement(new Phrase(new Chunk(Row5Str5.ToString(), para)));

            PdfPCell Row5C6 = new PdfPCell();
            Row5C6.BorderWidthLeft = 0;
            Row5C6.BorderWidthTop = 0;
            Row5C6.BorderWidthBottom = 0;

            StringBuilder Row5Str6 = new StringBuilder("");
            Row5Str6.Append("Head Office");
            Row5C6.AddElement(new Phrase(new Chunk(Row5Str6.ToString(), para)));

            Row1.AddCell(Row5C1);
            Row1.AddCell(Row5C2);
            Row1.AddCell(Row5C3);
            Row1.AddCell(Row5C4);
            Row1.AddCell(Row5C5);
            Row1.AddCell(Row5C6);

            #endregion Line5

            #region Line6

            PdfPCell Row6C1 = new PdfPCell();
            Row6C1.PaddingLeft = 2;
            Row6C1.BorderWidthRight = 0;
            Row6C1.BorderWidthBottom = 0;
            Row6C1.BorderWidthTop = 0;
            //Row6C1.BorderWidthBottom = 0.1f;
            //Row6C1.PaddingBottom = 10;
            StringBuilder Row6Str1 = new StringBuilder("VAT IN");
            Row6C1.AddElement(new Phrase(new Chunk(Row6Str1.ToString(), para)));

            PdfPCell Row6C2 = new PdfPCell();
            StringBuilder Row6Str2 = new StringBuilder("");
            Row6Str2.Append(":");
            Row6C2.BorderWidthBottom = 0;
            Row6C2.BorderWidthRight = 0;
            Row6C2.BorderWidthTop = 0;
            Row6C2.BorderWidthLeft = 0;
            //Row6C2.BorderWidthBottom = 0.1f;
            //Row6C2.PaddingBottom = 10;
            Row6C2.AddElement(new Phrase(new Chunk(Row6Str2.ToString(), para)));


            PdfPCell Row6C3 = new PdfPCell();
            //Row6C3.BorderWidthRight = 0.1f;
            Row6C3.BorderWidthTop = 0;
            Row6C3.BorderWidthLeft = 0;
            Row6C3.BorderWidthBottom = 0;
            Row6C3.BorderWidthRight = 0;
            //Row6C3.BorderWidthBottom = 0.1f;
            //Row6C3.PaddingBottom = 10;
            StringBuilder Row6Str3 = new StringBuilder("");
            Row6Str3.Append("OM1100031238");
            Row6C3.AddElement(new Phrase(new Chunk(Row6Str3.ToString(), para)));

            PdfPCell Row6C4 = new PdfPCell();
            Row6C4.Border = 0;
            StringBuilder Row6Str4 = new StringBuilder("");
            Row6Str4.Append("Department");
            Row6C4.AddElement(new Phrase(new Chunk(Row6Str4.ToString(), BoldStyle)));

            PdfPCell Row6C5 = new PdfPCell();
            Row6C5.Border = 0;
            StringBuilder Row6Str5 = new StringBuilder("");
            Row6Str5.Append(":");
            Row6C5.AddElement(new Phrase(new Chunk(Row6Str5.ToString(), para)));

            PdfPCell Row6C6 = new PdfPCell();
            Row6C6.BorderWidthLeft = 0;
            Row6C6.BorderWidthTop = 0;
            Row6C6.BorderWidthBottom = 0;

            StringBuilder Row6Str6 = new StringBuilder("");
            Row6Str6.Append("Liability");
            Row6C6.AddElement(new Phrase(new Chunk(Row6Str6.ToString(), para)));

            Row1.AddCell(Row6C1);
            Row1.AddCell(Row6C2);
            Row1.AddCell(Row6C3);
            Row1.AddCell(Row6C4);
            Row1.AddCell(Row6C5);
            Row1.AddCell(Row6C6);

            #endregion Line6

            #region Line7

            PdfPCell Row7C1 = new PdfPCell();
            Row7C1.PaddingLeft = 2;
            Row7C1.BorderWidthRight = 0;
            Row7C1.BorderWidthTop = 0;
            Row7C1.BorderWidthBottom = 0;
            Row7C1.PaddingBottom = 10;
            StringBuilder Row7Str1 = new StringBuilder("");
            Row7C1.AddElement(new Phrase(new Chunk(Row7Str1.ToString(), para)));

            PdfPCell Row7C2 = new PdfPCell();
            StringBuilder Row7Str2 = new StringBuilder("");
            Row7Str2.Append("");
            Row7C2.BorderWidthRight = 0;
            Row7C2.BorderWidthTop = 0;
            Row7C2.BorderWidthLeft = 0;
            Row7C2.BorderWidthBottom = 0f;
            Row7C2.PaddingBottom = 10;
            Row7C2.AddElement(new Phrase(new Chunk(Row7Str2.ToString(), para)));


            PdfPCell Row7C3 = new PdfPCell();
            Row7C3.BorderWidthRight = 0.1f;
            Row7C3.BorderWidthTop = 0;
            Row7C3.BorderWidthLeft = 0;
            Row7C3.BorderWidthBottom = 0f;
            Row7C3.BorderWidthRight = 0f;
            Row7C3.PaddingBottom = 10;
            StringBuilder Row7Str3 = new StringBuilder("");
            Row7Str3.Append("");
            Row7C3.AddElement(new Phrase(new Chunk(Row7Str3.ToString(), para)));

            PdfPCell Row7C4 = new PdfPCell();
            Row7C4.Border = 0;
            StringBuilder Row7Str4 = new StringBuilder("");
            Row7Str4.Append("VAT IN");
            Row7C4.AddElement(new Phrase(new Chunk(Row7Str4.ToString(), BoldStyle)));

            PdfPCell Row7C5 = new PdfPCell();
            Row7C5.Border = 0;
            StringBuilder Row7Str5 = new StringBuilder("");
            Row7Str5.Append(":");
            Row7C5.AddElement(new Phrase(new Chunk(Row7Str5.ToString(), para)));

            PdfPCell Row7C6 = new PdfPCell();
            Row7C6.BorderWidthLeft = 0;
            Row7C6.BorderWidthTop = 0;
            Row7C6.BorderWidthBottom = 0;

            StringBuilder Row7Str6 = new StringBuilder("");
            Row7Str6.Append("OM1100001952");
            Row7C6.AddElement(new Phrase(new Chunk(Row7Str6.ToString(), para)));

            Row1.AddCell(Row7C1);
            Row1.AddCell(Row7C2);
            Row1.AddCell(Row7C3);
            Row1.AddCell(Row7C4);
            Row1.AddCell(Row7C5);
            Row1.AddCell(Row7C6);

            #endregion Line7

            #region Line8

            PdfPCell Row8C1 = new PdfPCell();
            Row8C1.PaddingTop = 10;
            Row8C1.PaddingBottom = 5;
            Row8C1.BorderWidthTop = 0;
            Row8C1.Colspan = 6;
            StringBuilder Row8Str1 = new StringBuilder("Please Note that we have DEBITED your account as follows");
            Row8C1.AddElement(new Phrase(new Chunk(Row8Str1.ToString(), BoldStyle)));
            Row1.AddCell(Row8C1);


            #endregion Line8

            #region GridHeader

            PdfPTable gridHeader1 = new PdfPTable(2);
            float[] gridHeaderWidth = new float[] { 80, 20 };
            gridHeader1.SetWidths(gridHeaderWidth);

            PdfPCell gridHeader1Cell1 = new PdfPCell();
            gridHeader1Cell1.PaddingLeft = 0;
            gridHeader1Cell1.BorderWidthTop = 0.1f;
            gridHeader1Cell1.BorderWidthBottom = 0;
            StringBuilder gridHeaderStr1 = new StringBuilder("                                                    Description");
            gridHeader1Cell1.AddElement(new Phrase(new Chunk(gridHeaderStr1.ToString(), BoldStyle)));
            gridHeader1Cell1.FixedHeight = 20;

            PdfPCell gridHeader1Cell2 = new PdfPCell();
            gridHeader1Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader1Cell2.BorderWidthTop = 0.1f;
            gridHeader1Cell2.BorderWidthBottom = 0;
            gridHeader1Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeaderStr2 = new StringBuilder("     Amount In");
            gridHeader1Cell2.AddElement(new Phrase(new Chunk(gridHeaderStr2.ToString(), BoldStyle)));
            gridHeader1Cell2.FixedHeight = 20;

            gridHeader1.AddCell(gridHeader1Cell1);
            gridHeader1.AddCell(gridHeader1Cell2);


            PdfPTable gridHeader2 = new PdfPTable(2);
            float[] gridHeader2Width = new float[] { 80, 20 };
            gridHeader2.SetWidths(gridHeader2Width);


            PdfPCell gridHeader2Cell1 = new PdfPCell();
            gridHeader2Cell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell1.BorderWidthTop = 0;
            StringBuilder gridHeader2Str1 = new StringBuilder("");
            gridHeader2Cell1.AddElement(new Phrase(new Chunk(gridHeader2Str1.ToString(), para)));
            gridHeader2Cell1.FixedHeight = 20;

            PdfPCell gridHeader2Cell2 = new PdfPCell();
            gridHeader2Cell2.HorizontalAlignment = Element.ALIGN_CENTER;
            gridHeader2Cell2.BorderWidthTop = 0;
            gridHeader2Cell2.BorderWidthLeft = 0;
            StringBuilder gridHeader2Str2 = new StringBuilder("    OMANI RIYAL");
            gridHeader2Cell2.AddElement(new Phrase(new Chunk(gridHeader2Str2.ToString(), BoldStyle)));
            gridHeader2Cell2.FixedHeight = 20;

            gridHeader2.AddCell(gridHeader2Cell1);
            gridHeader2.AddCell(gridHeader2Cell2);

            #endregion GridHeader


            #region GridInner_Cell1

            PdfPTable gridInner = new PdfPTable(2);
            gridInner.SetWidths(gridHeader2Width);


            PdfPCell gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingTop = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr1 = new StringBuilder("Being policy premium for Workmens Compensation Policy Policy No .P/004/01/21/2402/00301");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr1.ToString(), para)));


            Phrase gridInnerStr_P3 = new Phrase();
            gridInnerStr_P3.Add(new Chunk("174.150", para));
            PdfPCell gridInnerCell2 = new PdfPCell(gridInnerStr_P3);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingTop = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            // StringBuilder gridInnerStr2 = new StringBuilder("    115.213");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr2.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell1

            #region GridInner_Cell2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3 = new StringBuilder("Insurance Levy");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3.ToString(), para)));

            Phrase gridInnerStr_P4 = new Phrase();
            gridInnerStr_P4.Add(new Chunk("2.786", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P4);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            //StringBuilder gridInnerStr4 = new StringBuilder("");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2

            #region GridInner_Cell2_2

            gridInnerCell1 = new PdfPCell();
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 20;
            gridInnerCell1.PaddingLeft = 10;
            StringBuilder gridInnerStr3_2 = new StringBuilder("Policy Fee");
            gridInnerCell1.AddElement(new Phrase(new Chunk(gridInnerStr3_2.ToString(), para)));

            Phrase gridInnerStr_P4_2 = new Phrase();
            gridInnerStr_P4_2.Add(new Chunk("1.000", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P4_2);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 20;
            gridInnerCell2.PaddingRight = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            //StringBuilder gridInnerStr4 = new StringBuilder("");
            //gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr4.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell2_2

            #region GridInner_Cell3



            Phrase gridInnerStr_P5 = new Phrase();
            gridInnerStr_P5.Add(new Chunk("Supply Dt/Period of insurance From :", para));
            gridInnerStr_P5.Add(new Chunk("   09/09/2021   ", para));
            gridInnerStr_P5.Add(new Chunk("To :", para));
            gridInnerStr_P5.Add(new Chunk("  08/09/2022", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P5);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthBottom = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr6 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr6.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell3

            #region GridInner_Cell4

            Phrase gridInnerStr_P6 = new Phrase();
            gridInnerStr_P6.Add(new Chunk("Risk Cover             :", para));
            gridInnerStr_P6.Add(new Chunk("   Workmens Compensation Policy  ", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P6);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingLeft = 10;


            gridInnerCell2 = new PdfPCell();
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;
            StringBuilder gridInnerStr8 = new StringBuilder("");
            gridInnerCell2.AddElement(new Phrase(new Chunk(gridInnerStr8.ToString(), para)));


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell4

            #region GridInner_Cell5

            Phrase gridInnerStr_P7 = new Phrase();
            gridInnerStr_P7.Add(new Chunk("Sub Total", para));


            gridInnerCell1 = new PdfPCell(gridInnerStr_P7);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P8 = new Phrase();
            gridInnerStr_P8.Add(new Chunk("177.936", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P8);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            //gridInnerCell2.PaddingLeft = 20;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;


            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell5

            #region GridInner_Cell6

            Phrase gridInnerStr_P9 = new Phrase();
            gridInnerStr_P9.Add(new Chunk("VAT at 5%", para));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P9);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingTop = 5;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P10 = new Phrase();
            gridInnerStr_P10.Add(new Chunk("8.897", para));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P10);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 5;
            gridInnerCell2.PaddingTop = 5;
            gridInnerCell2.PaddingRight = 10;
            //gridInnerCell2.PaddingLeft = 23;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell6

            #region GridInner_Cell7

            Phrase gridInnerStr_P11 = new Phrase();
            gridInnerStr_P11.Add(new Chunk("TOTAL :", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P11);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.PaddingBottom = 10;
            gridInnerCell1.PaddingRight = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;

            Phrase gridInnerStr_P12 = new Phrase();
            gridInnerStr_P12.Add(new Chunk("186.833", BoldStyle));
            gridInnerCell2 = new PdfPCell(gridInnerStr_P12);
            gridInnerCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell2.PaddingBottom = 10;
            gridInnerCell2.PaddingTop = 10;
            gridInnerCell2.PaddingRight = 10;
            //gridInnerCell2.PaddingLeft = 23;
            gridInnerCell2.BorderWidthTop = 0;
            gridInnerCell2.BorderWidthLeft = 0;

            gridInner.AddCell(gridInnerCell1);
            gridInner.AddCell(gridInnerCell2);

            #endregion GridInner_Cell7

            #region GridInner_Cell8

            Phrase gridInnerStr_P13 = new Phrase();
            gridInnerStr_P13.Add(new Chunk("AMOUNT :", BoldStyle));
            gridInnerStr_P13.Add(new Chunk(" OMANI RIYALS One Hundred Eighty-Six And Baisa Eight Hundred Thirty-Three Only", BoldStyle));

            gridInnerCell1 = new PdfPCell(gridInnerStr_P13);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.PaddingBottom = 5;
            gridInnerCell1.PaddingLeft = 10;
            gridInnerCell1.PaddingTop = 10;
            gridInnerCell1.PaddingLeft = 20;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);


            #endregion GridInner_Cell8

            #region ForSign1

            Phrase gridInnerStr_P14 = new Phrase();
            gridInnerStr_P14.Add(new Chunk("AL MADINA INSURANCE CO. SAOG", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P14);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingBottom = 60;
            gridInnerCell1.PaddingRight = 30;
            gridInnerCell1.PaddingTop = 30;
            gridInnerCell1.Colspan = 2;
            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign1

            #region ForSign2

            Phrase gridInnerStr_P15 = new Phrase();
            gridInnerStr_P15.Add(new Chunk("Authorised Signatory", para));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P15);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_RIGHT;
            gridInnerCell1.BorderWidthTop = 0;
            gridInnerCell1.BorderWidthBottom = 0;
            gridInnerCell1.PaddingRight = 65;
            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion ForSign2


            #region BankAccount

            PdfPTable Row2 = new PdfPTable(2);
            float[] Row2Width = new float[] { 20, 80 };
            Row2.SetWidths(Row2Width);

            PdfPCell Bank_C1 = new PdfPCell(new Phrase(new Chunk("BANK ACCOUNT DETAILS", BoldStyle)));
            Bank_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_C1.PaddingBottom = 5;
            Bank_C1.Border = 0;
            Bank_C1.Colspan = 2;
            Row2.AddCell(Bank_C1);


            PdfPCell Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Beneficiary Name", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            PdfPCell Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Al Madina Insurance Co.SAOG", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Account No.", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("10000-0000-807", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Bank Name", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("MUZN ISLAMIC BANKING", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Bank Address", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Muzn,PO Box 751,", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Postal Code 112,Ruwi", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("Muscat,Sultanate of Oman", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);

            Bank_R1_C1 = new PdfPCell(new Phrase(new Chunk("Swift Code", para)));
            Bank_R1_C1.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C1.Border = 0;
            Row2.AddCell(Bank_R1_C1);

            Bank_R1_C2 = new PdfPCell(new Phrase(new Chunk("NBOMOMRXIBS", para)));
            Bank_R1_C2.HorizontalAlignment = Element.ALIGN_LEFT;
            Bank_R1_C2.Border = 0;
            Row2.AddCell(Bank_R1_C2);




            gridInnerCell1 = new PdfPCell(Row2);
            //gridInnerCell1.AddElement(Row2);
            gridInnerCell1.PaddingLeft = 5f;
            gridInnerCell1.Colspan = 2;
            gridInnerCell1.BorderWidthTop = 0;
            gridInner.AddCell(gridInnerCell1);

            #endregion BankAccount

            #region E&OE

            Phrase gridInnerStr_P16 = new Phrase();
            gridInnerStr_P16.Add(new Chunk("E&OE", BoldStyle));
            gridInnerCell1 = new PdfPCell(gridInnerStr_P16);
            gridInnerCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            gridInnerCell1.Border = 0;

            gridInnerCell1.Colspan = 2;

            gridInner.AddCell(gridInnerCell1);
            #endregion E&OE

            doc.Add(P1_T1);
            doc.Add(Title_Head);
            doc.Add(Row1);

            //doc.Add(NoteDetails);
            doc.Add(gridHeader1);
            doc.Add(gridHeader2);
            doc.Add(gridInner);


            #endregion Tax Credit Note Generation



            doc.Close();


            bPDF = ms.ToArray();

            return bPDF;
        }




    }
}
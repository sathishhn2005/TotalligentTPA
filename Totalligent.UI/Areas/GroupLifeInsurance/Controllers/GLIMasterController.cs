using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Totalligent.UI.Models;
using Totalligent.BAL;
using Totalligent.BusinessEntities;

namespace Totalligent.UI.Areas.GroupLifeInsurance.Controllers
{
    public class GLIMasterController : Controller
    {
        // GET: GroupLifeInsurance/GLIMaster
        public ActionResult ProducerMaster()
        {

            List<BankMaster> lstBM = null;
            MasterSelectedList objCCMasters = new MasterSelectedList();
            ProducerMasterModel obj = new ProducerMasterModel();
            
            new GLIMasterBAL().GetBankMasters(out lstBM);
            
            obj.lstBankMaster = null;

            var lsDDLBankMaster = new List<SelectListItem>();
            foreach (var element in lstBM)
            {
                lsDDLBankMaster.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = lsDDLBankMaster;
            }

            List<BusinessDesignationTypeMaster> lstBDTM = null;
            new GLIMasterBAL().GetBusinessDesignationTypeMaster(out lstBDTM);
            obj.lstBusinessTypeMaster = null;

            var lstddlBusinessType = new List<SelectListItem>();
            foreach (var element in lstBDTM)
            {
                lstddlBusinessType.Add(new SelectListItem
                {
                    Value = element.BusinessDesignationTypeMasterID.ToString(),
                    Text = element.TypeName
                });
                obj.lstBusinessTypeMaster = lstddlBusinessType;
            }

            var selectListNationlity = new List<SelectListItem>();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            foreach (var element in objCCMasters.lstNationlity)
            {
                selectListNationlity.Add(new SelectListItem
                {
                    Value = element.NationalityId.ToString(),
                    Text = element.Name
                });
                obj.lstNationlity = selectListNationlity;
            }

            TempData["PMFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_PM";
            return View(obj);

        }
        public ActionResult RIMaster()
        {

            List<BankMaster> lstBM = null;
            RIMasterModel obj = new RIMasterModel();
            new GLIMasterBAL().GetBankMasters(out lstBM);
            obj.lstRIMaster = null;

            var selectList = new List<SelectListItem>();
            foreach (var element in lstBM)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = selectList;
            }
            
            var selectListNationlity = new List<SelectListItem>();
            MasterSelectedList objCCMasters = new MasterSelectedList();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            foreach (var element in objCCMasters.lstNationlity)
            {
                selectListNationlity.Add(new SelectListItem
                {
                    Value = element.NationalityId.ToString(),
                    Text = element.Name
                });
                obj.lstNationlity = selectListNationlity;
            }
            TempData["FolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_RI";
            return View(obj);

        }
        public ActionResult InsuranceCompanyMaster()
        {
            List<BankMaster> lstBM = null;
            ICMasterModel obj = new ICMasterModel();
            new GLIMasterBAL().GetBankMasters(out lstBM);
            obj.lstICMaster = null;

            var selectList = new List<SelectListItem>();

            foreach (var element in lstBM)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = selectList;
            }

            var selectListNationlity = new List<SelectListItem>();
            MasterSelectedList objCCMasters = new MasterSelectedList();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            foreach (var element in objCCMasters.lstNationlity)
            {
                selectListNationlity.Add(new SelectListItem
                {
                    Value = element.NationalityId.ToString(),
                    Text = element.Name
                });
                obj.lstNationlity = selectListNationlity;
            }
            TempData["ICFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_IC";
            return View(obj);
        }
        public ActionResult ClientMaster()
        {
            List<BankMaster> lstBM = null;
            MasterSelectedList objCCMasters = new MasterSelectedList();
            CCMasterModel obj = new CCMasterModel();
            new GLIMasterBAL().GetBankMasters(out lstBM);
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            obj.lstCCMaster = null;


            var selectList = new List<SelectListItem>();
            var selectListICM = new List<SelectListItem>();
            var selectListRI = new List<SelectListItem>();
            var selectListLOB = new List<SelectListItem>();
            var selectListPM = new List<SelectListItem>();

            foreach (var element in lstBM)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = selectList;
            }
            foreach (var element in objCCMasters.lstInsCompddl)
            {
                selectListICM.Add(new SelectListItem
                {
                    Value = element.ICMId.ToString(),
                    Text = element.InsurancecompanyName
                });
                obj.lstCCInsddl = selectListICM;
            }
            foreach (var element in objCCMasters.lstProducerMaster)
            {
                selectListPM.Add(new SelectListItem
                {
                    Value = element.ProducerMasterID.ToString(),
                    Text = element.ProducerName
                });
                obj.lstProducerMaster = selectListPM;
            }
            foreach (var element in objCCMasters.lstRIMaster)
            {
                selectListRI.Add(new SelectListItem
                {
                    Value = element.ReInsurerMasterId.ToString(),
                    Text = element.ReInsurerName
                });
                obj.lstRIMaster = selectListRI;
            }
            foreach (var element in objCCMasters.lstLOB)
            {
                selectListLOB.Add(new SelectListItem
                {
                    Value = element.LOBId.ToString(),
                    Text = element.LOBName
                });
                obj.lstLOB = selectListLOB;
            }

            List<BusinessDesignationTypeMaster> lstBDTM = null;
            new GLIMasterBAL().GetBusinessDesignationTypeMaster(out lstBDTM);
            obj.lstBusinessTypeMaster = null;

            var lstddlBusinessType = new List<SelectListItem>();
            foreach (var element in lstBDTM)
            {
                lstddlBusinessType.Add(new SelectListItem
                {
                    Value = element.BusinessDesignationTypeMasterID.ToString(),
                    Text = element.TypeName
                });
                obj.lstBusinessTypeMaster = lstddlBusinessType;
            }
           
            var selectListNationlity = new List<SelectListItem>();
            foreach (var element in objCCMasters.lstNationlity)
            {
                selectListNationlity.Add(new SelectListItem
                {
                    Value = element.NationalityId.ToString(),
                    Text = element.Name
                });
                obj.lstNationlity = selectListNationlity;
            }
            TempData["CMFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_CM";
            return View(obj);
        }

        public ActionResult EmployeeMaster()
        {
            List<BankMaster> lstBM = null;
            EmployeeMasterModel obj = new EmployeeMasterModel();
            new GLIMasterBAL().GetBankMasters(out lstBM);
            MasterSelectedList objCCMasters = new MasterSelectedList();
            new GLIMasterBAL().GetMasterData(out objCCMasters);
            obj.lstEMaster = null;

            var selectList = new List<SelectListItem>();
            var lstClientMasterdata = new List<SelectListItem>();

            foreach (var element in lstBM)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = selectList;
            }


            foreach (var element in objCCMasters.lstCCMaster)
            {
                lstClientMasterdata.Add(new SelectListItem
                {
                    Value = element.ClientCompanyMasterId.ToString(),
                    Text = element.ClientCompanyName
                });
                obj.lstClientMaster = lstClientMasterdata;
            }
            
            var selectListNationlity = new List<SelectListItem>();
            foreach (var element in objCCMasters.lstNationlity)
            {
                selectListNationlity.Add(new SelectListItem
                {
                    Value = element.NationalityId.ToString(),
                    Text = element.Name
                });
                obj.lstNationlity = selectListNationlity;
            }
            TempData["EMFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_EM";
            return View(obj);
        }

        public ActionResult MedicalProviderMaster()
        {
            List<BankMaster> lstBM = null;
            MedicalProviderModel obj = new MedicalProviderModel();
            new GLIMasterBAL().GetBankMasters(out lstBM);
            obj.lstRIMaster = null;

            var selectList = new List<SelectListItem>();

            foreach (var element in lstBM)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.BankID.ToString(),
                    Text = element.BankName
                });
                obj.lstBankMaster = selectList;
            }
            TempData["MPFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_MP";
            return View(obj);
        }
        public ActionResult DrugMaster()
        {
            TempData["DMFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_DM";
            return View();
        }
        public ActionResult BenefitMaster()
        {
            TempData["BMFolderName"] = DateTime.Now.ToString("ddMMyyyyHHmmss") + "_BM";
            return View();
        }

    }
}
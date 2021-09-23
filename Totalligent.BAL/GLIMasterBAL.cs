using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.DAL;
using Totalligent.BusinessEntities;

namespace Totalligent.BAL
{
    public class GLIMasterBAL
    {
       
        #region CommonMaster        
        public int GetBankMasters(out List<BankMaster> lstBankMaster)
        {
            return new GLIMasterDAL().GetBankMasters(out lstBankMaster);
        }
        public int GetBusinessDesignationTypeMaster(out List<BusinessDesignationTypeMaster> lstBusinessTypeMaster)
        {
            return new GLIMasterDAL().GetBusinessDesignationTypeMaster(out lstBusinessTypeMaster);
        }
        public int GetMasterData(out MasterSelectedList lst)
        {

            return new GLIMasterDAL().GetDefaultMasters(out lst);
        }
        #endregion

        #region RIMaster  
        public long DMLRIMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLRIMaster(Action, JPramValue);
        }

        public int GetAutocompleteRINameRICodeCity(string prefixText, string Action, out List<ReInsurerMaster> lstRIMaster)
        {
            return new GLIMasterDAL().GetAutocompleteRINameRICodeCity(prefixText, Action, out lstRIMaster);
        }

        public int GetRIMaster(string RIName, string RICode, string City, out List<ReInsurerMaster> lstRIMaster)
        {
            return new GLIMasterDAL().GetRIMaster(RIName, RICode, City, out lstRIMaster);
        }

        public int DeactivateRIMaster(long ReInsurerMasterId)
        {
            return new GLIMasterDAL().DeactivateRIMaster(ReInsurerMasterId);
        }

        public int pUpdateFolderPathRIMaster(long RIMAsterID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathRIMaster(RIMAsterID, ZipFilePath);
        }
       
        public long BulkInsertRIMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertRIMaster(Action, JPramValue, Createdby, out Msg);
        }
        #endregion

        #region ProducerMaster
        public long DMLProducerMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLProducerMaster(Action, JPramValue);
        }
        public long AddBusinessType(string BT)
        {
            return new GLIMasterDAL().AddBusinessType(BT);
        }
        public int pUpdateFolderPathProducerMaster(long ProducerID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathProducerMaster(ProducerID, ZipFilePath);
        }
        public int GetAutocompleteProducerName_Code_City(string prefixText, string Action, out List<ProducerMaster> lstPMMaster)
        {
            return new GLIMasterDAL().GetAutocompleteProducerName_Code_City(prefixText, Action, out lstPMMaster);
        }

        public int GetProducerMaster(string PMName, string PMCode, string PMCity, out List<ProducerMaster> lstPMMaster)
        {
            return new GLIMasterDAL().GetProducerMaster(PMName, PMCode, PMCity, out lstPMMaster);
        }
        public int DeactivatePMMaster(long ProducerMasterID)
        {
            return new GLIMasterDAL().DeactivatePMMaster(ProducerMasterID);
        }
        public long BulkInsertPMMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertPMMaster(Action, JPramValue, Createdby, out Msg);
        }

        #endregion

        #region ClientCompanyMaster  
        public long DMLCCMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLCCMaster(Action, JPramValue);
        }

        public int GetAutocompleteCCName(string prefixText, string Action, out List<ClientCompanyMaster> lstCCMaster)
        {
            return new GLIMasterDAL().GetAutocompleteCCMaster(prefixText, Action, out lstCCMaster);
        }

        public int GetCCMaster(string CCName, string CCCode, string City, out List<ClientCompanyMaster> lstCCMaster)
        {
            return new GLIMasterDAL().GetCCMaster(CCName, CCCode, City, out lstCCMaster);
        }

        public int DeactivateCCMaster(long ClientCompanyMasterId)
        {
            return new GLIMasterDAL().DeactivateCCMaster(ClientCompanyMasterId);
        }

        public int pUpdateFolderPathCCMaster(long RIMAsterID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathCCMaster(RIMAsterID, ZipFilePath);
        }
        public long BulkInsertCCMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertCCMaster(Action, JPramValue, Createdby, out Msg);
        }
        public int GetProducers(string BT,out List<ProducerMaster> lstProducerMaster)
        {
            return new GLIMasterDAL().GetProducers(BT,out lstProducerMaster);
        }
        #endregion

        #region InsuranceCompanyMaster  
        public long DMLICMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLICMaster(Action, JPramValue);
        }

        public int GetAutocompleteICName(string prefixText, string Action, out List<InsuranceCompanyMaster> lstICMaster)
        {
            return new GLIMasterDAL().GetAutocompleteICMaster(prefixText, Action, out lstICMaster);
        }

        public int GetICMaster(string CCName, string CCCode, string City, out List<InsuranceCompanyMaster> lstICMaster)
        {
            return new GLIMasterDAL().GetICMaster(CCName, CCCode, City, out lstICMaster);
        }

        public int DeactivateICMaster(long ICMId)
        {
            return new GLIMasterDAL().DeactivateICMaster(ICMId);
        }
        public int pUpdateFolderPathICMaster(long ICMasterID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathICMaster(ICMasterID, ZipFilePath);
        }
        public long BulkInsertICMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertICMaster(Action, JPramValue, Createdby, out Msg);
        }
        #endregion

        #region EmployeeMaster  
        public long DMLEmpMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLEmpMaster(Action, JPramValue);
        }

        public int GetAutocompleteEmpName(string prefixText, string Action, out List<EmployeeMaster> lstEmpMaster)
        {
            return new GLIMasterDAL().GetAutocompleteEmpMaster(prefixText, Action, out lstEmpMaster);
        }

        public int GetEmpMaster(string CCName, string CCCode, string City, out List<EmployeeMaster> lstEmpMaster)
        {
            return new GLIMasterDAL().GetEmpMaster(CCName, CCCode, City, out lstEmpMaster);
        }

        public int DeactivateEmpMaster(long EmpId)
        {
            return new GLIMasterDAL().DeactivateEmpMaster(EmpId);
        }
        public int pUpdateFolderPathEmpMaster(long EmpMasterID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathempMaster(EmpMasterID, ZipFilePath);
        }
        public long BulkInsertEmpMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertEmpMaster(Action, JPramValue, Createdby, out Msg);
        }
        public int GetSpouses(string EmployeeUniqueNumber, out List<EmployeeMaster> lstEmpMaster)
        {
            return new GLIMasterDAL().GetSpouseList(EmployeeUniqueNumber, out lstEmpMaster);
        }
        #endregion

        #region MedicalProviderMaster  
        public long DMLMPMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLMPMaster(Action, JPramValue);
        }

        public int GetAutocompleteMPName(string prefixText, string Action, out List<MedicalProviderMaster> lstMPMaster)
        {
            return new GLIMasterDAL().GetAutocompleteMPMaster(prefixText, Action, out lstMPMaster);
        }

        public int GetMPMaster(string MedicalProvider, string Name, string ContactPerson, out List<MedicalProviderMaster> lstMPMaster)
        {
            return new GLIMasterDAL().GetMPMaster(MedicalProvider, Name, ContactPerson, out lstMPMaster);
        }

        public int DeactivateMPMaster(long MPId)
        {
            return new GLIMasterDAL().DeactivateMPMaster(MPId);
        }
        public int pUpdateFolderPathMPMaster(long EmpMasterID, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathMPMaster(EmpMasterID, ZipFilePath);
        }
        public long BulkInsertMPMaster(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertMPMaster(Action, JPramValue, Createdby, out Msg);
        }
        #endregion

        #region DrugMaster  
        public int DMLDrugMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLDrugMaster(Action, JPramValue);
        }

        public int GetAutocompleteDrugNameCode(string prefixText, string Action, out List<DrugMaster> lstdm)
        {
            return new GLIMasterDAL().GetAutocompleteDrugNameCode(prefixText, Action, out lstdm);
        }

        public int GetDM(string DrugName, string DrugCode ,out List<DrugMaster> lstDM)
        {
            return new GLIMasterDAL().GetDrugMaster(DrugName, DrugCode, out lstDM);
        }

        public int DeactivateDrugMaster(int DrugId)
        {
            return new GLIMasterDAL().DeactivateDrugMaster(DrugId);
        }

        public int pUpdateFolderPathDrugMaster(int DrugId, string ZipFilePath)
        {
            return new GLIMasterDAL().pUpdateFolderPathDrugMaster(DrugId, ZipFilePath);
        }

        public long BulkInsertDM(string Action, string JPramValue, long Createdby, out string Msg)
        {
            return new GLIMasterDAL().BulkInsertDrugMaster(Action, JPramValue, Createdby, out Msg);
        }
        #endregion

        #region BenefitsMaster  
        public int DMLBenefitsMaster(string Action, string JPramValue)
        {
            return new GLIMasterDAL().DMLBenefitsMaster(Action, JPramValue);
        }

        public int GetAutocompleteBMCode(string prefixText, string Action, out List<BenefitsMaster> lstbm)
        {
            return new GLIMasterDAL().GetAutocompleteBenefitsNameCode(prefixText, Action, out lstbm);
        }

        public int GetBenefits(string BenefitsName, string BenefitsCode, out List<BenefitsMaster> lstbM)
        {
            return new GLIMasterDAL().GetBenefitsMaster(BenefitsName, BenefitsCode, out lstbM);
        }
        #endregion
    }

}


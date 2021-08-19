using System.Collections.Generic;


namespace Totalligent.BusinessEntities
{
    public class MasterSelectedList
    {
        public List<InsuranceCompanyMaster> lstInsCompddl { get; set; }
        public List<LOB> lstLOB { get; set; }
        public List<ProducerMaster> lstProducerMaster { get; set; }
        public List<ReInsurerMaster> lstRIMaster { get; set; }
        public List<ClientCompanyMaster> lstCCMaster { get; set; }
        public List<BusinessDesignationTypeMaster> lstBDTypeMaster{ get; set; }
        public List<BranchMaster> lstBranchMaster{ get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.DAL;
using Totalligent.BusinessEntities;


namespace Totalligent.BAL
{
    public class GLIQuotationBAL
    {
        public long DMLQuotationMaster(string Action, string JParamValQuotationDetails, string JParamValCoverageDetails, out List<Quotation> objResponse)
        {
            return new GLIQuotationDAL().DMLQuotationMaster(Action, JParamValQuotationDetails, JParamValCoverageDetails, out objResponse);
        }
        public long RejectDraft(long Qid, string Action)
        {
            return new GLIQuotationDAL().RejectDraft(Qid, Action);
        }

    }
}

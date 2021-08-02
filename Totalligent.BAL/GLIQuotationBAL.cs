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
        public long DMLQuotationMaster(string Action, string JPramValue)
        {
            return new GLIQuotationDAL().DMLQuotationMaster(Action, JPramValue);
        }

    }
}

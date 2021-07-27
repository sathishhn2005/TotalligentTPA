using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Totalligent.BusinessEntities
{
    public class BusinessDesignationTypeMaster
    {
        public int BusinessDesignationTypeMasterID { get; set; }
        public string TypeName { get; set; }
        public string TypeCode { get; set; }
        public string Status { get; set; }
        public long CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public long ModifyBy { get; set; }
        public DateTime ModifyAt { get; set; }

    }
}

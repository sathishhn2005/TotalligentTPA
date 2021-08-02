using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.Utilities;
using Totalligent.BusinessEntities;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Totalligent.DAL
{
    public class GLIQuotationDAL
    {
        readonly Utility objUtility = new Utility();
        DBEngine objDBEngine;
        DataTable dtResult;
        Hashtable HTOutParam = null;
        public long DMLQuotationMaster(string Action, string JPramValue)
        {
            long RIMAsterID = 0;
            int InsRow = 0;
            SqlCommand sqlCommand = new SqlCommand();
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar),
                                            new SqlParameter("@ReturnRIid",SqlDbType.BigInt)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;
                Param[2].Direction = ParameterDirection.Output;
                using (objDBEngine = new DBEngine())
                {
                    sqlCommand = objDBEngine.DMLOperationOutPutParam("pDMLQuotationMaster", Param, out InsRow);
                }
                RIMAsterID = (long)sqlCommand.Parameters["@ReturnRIid"].Value;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return RIMAsterID;
        }
    }
}

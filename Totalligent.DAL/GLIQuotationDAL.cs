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
        public long DMLQuotationMaster(string Action, string JParamValQuotationDetails, string JParamValCoverageDetails,out List<Quotation> objResponse)
        {
            long RIMAsterID = 0;
            objResponse = null;
            //int InsRow = 0;
            SqlCommand sqlCommand = new SqlCommand();
            DataTable dt = new DataTable();
            
            dtResult = new DataTable();
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamValQuotationDetails",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamValCoverageDetails",SqlDbType.NVarChar)
                                            
                                      };
                Param[0].Value = Action;
                Param[1].Value = JParamValQuotationDetails;
                Param[2].Value = JParamValCoverageDetails;
                //Param[3].Direction = ParameterDirection.Output;
                using (objDBEngine = new DBEngine())
                {
                    dt = objDBEngine.GetDataTable("pDMLQuotationMaster", Param);
                    if (dt.Rows.Count > 0)
                    {
                        objResponse = new List<Quotation>();
                        DTtoListConverter.ConvertTo(dt, out objResponse);
                        RIMAsterID = 1;
                    }
                    //sqlCommand = objDBEngine.DMLOperationOutPutParam("pDMLQuotationMaster", Param, out InsRow);
                }
                //RIMAsterID = (long)sqlCommand.Parameters["@ReturnRIid"].Value;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return RIMAsterID;
        }
        public long RejectDraft(long Qid, string Action)
        {
            long response = 0;
            int InsRow = 0;
            SqlCommand sqlCommand = new SqlCommand();
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@QId",SqlDbType.BigInt),
                                            new SqlParameter("@ReturnRIid",SqlDbType.BigInt)
                                      };
                Param[0].Value = Action;
                Param[1].Value = Qid;
                Param[2].Direction = ParameterDirection.Output;
                using (objDBEngine = new DBEngine())
                {
                    sqlCommand = objDBEngine.DMLOperationOutPutParam("pRejectQuotation", Param, out InsRow);
                }
                response = (long)sqlCommand.Parameters["@ReturnRIid"].Value;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return response;
        }
    }
}

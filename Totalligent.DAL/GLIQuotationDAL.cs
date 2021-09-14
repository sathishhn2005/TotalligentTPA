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
        public long DMLQuotationMaster(string Action, string JParamValQuotationDetails, string JParamValCoverageDetails, out List<Quotation> objResponse)
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
        public long GetSumOfSalary(string CompanyName, out decimal SumOfSalary)
        {
            long returnCode = -1;
            SumOfSalary = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();

                    SqlCommand cmd;
                    cmd = new SqlCommand
                    {
                        CommandText = "pGetSumOfSalary",
                        CommandTimeout = 180,
                        Connection = con,
                        CommandType = CommandType.StoredProcedure
                    };
                    SqlParameter UDTparam = new SqlParameter
                    {
                        ParameterName = "@CompanyName",
                        Size = -1,
                        Value = CompanyName
                    };
                    cmd.Parameters.Add(UDTparam);

                    SumOfSalary = Convert.ToDecimal(cmd.ExecuteScalar());

                }
            }

            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long GetEmpCount(string CompanyName, out int EmpCount)
        {
            long returnCode = -1;
            EmpCount = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();

                    SqlCommand cmd;
                    cmd = new SqlCommand
                    {
                        CommandText = "pGetEmpCount",
                        CommandTimeout = 180,
                        Connection = con,
                        CommandType = CommandType.StoredProcedure
                    };
                    SqlParameter UDTparam = new SqlParameter
                    {
                        ParameterName = "@CompanyName",
                        Size = -1,
                        Value = CompanyName
                    };
                    cmd.Parameters.Add(UDTparam);

                    EmpCount = Convert.ToInt32(cmd.ExecuteScalar());

                }
            }

            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long GetQuotationPremiumReinsurer(string InsuranceCompanyName, string ClientCompanyName, out Quotation objRIRate, out List<Quotation> lstRate)
        {
            long RIMAsterID = 0;
            lstRate = null;
            SqlCommand sqlCommand = new SqlCommand();
            objRIRate = null;
            DataSet dt = new DataSet();

           
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@InsuranceCompanyName",SqlDbType.NVarChar),
                                            new SqlParameter("@ClientCompanyName",SqlDbType.NVarChar),
                                            

                                      };
                Param[0].Value = InsuranceCompanyName;
                Param[1].Value = ClientCompanyName;
               
                using (objDBEngine = new DBEngine())
                {
                    dt = objDBEngine.GetDataSet("pGetQuotationReinsurer", Param);
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        objRIRate = new Quotation();
                        foreach (DataRow dr in dt.Tables[0].Rows)
                        {

                            objRIRate.Premium_SumAssured = Convert.ToDecimal(dr["Premium_SumAssured"]);
                            objRIRate.Premium_GrossRate = Convert.ToDecimal(dr["Premium_GrossRate"]);
                            objRIRate.Premium_BrokerName = Convert.ToString(dr["Premium_BrokerName"]);
                            objRIRate.Premium_BrokerCommssion = Convert.ToDecimal(dr["Premium_BrokerCommssion"]);
                        }
                    }
                    if (dt.Tables[1].Rows.Count > 0)
                    {
                        lstRate = new List<Quotation>();
                        DTtoListConverter.ConvertTo(dt.Tables[1], out lstRate);
                        RIMAsterID = 1;
                    }
                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return RIMAsterID;
        }
    }
}

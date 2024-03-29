﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.BusinessEntities;
using Totalligent.Utilities;

namespace Totalligent.DAL
{
    public class TotalligentMasterDAL
    {
        readonly Utility objUtility = new Utility();
        public long SaveAgent(AgentMaster objAgentMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertAgentMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@AgentName", objAgentMaster.AgentName);
                    //cmd.Parameters.AddWithValue("@AgentCode", objAgentMaster.AgentCode);
                    cmd.Parameters.AddWithValue("@Address", objAgentMaster.Address);
                    cmd.Parameters.AddWithValue("@City", objAgentMaster.City);
                    cmd.Parameters.AddWithValue("@Zipcode", objAgentMaster.Zipcode);
                    cmd.Parameters.AddWithValue("@ContactPerson", objAgentMaster.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objAgentMaster.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objAgentMaster.EmailId);
                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveBroker(BrokerMaster objBrokerMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertBrokerMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@BrokerName", objBrokerMaster.BrokerName);
                    //cmd.Parameters.AddWithValue("@BrokerCode", objBrokerMaster.BrokerCode);
                    cmd.Parameters.AddWithValue("@Address", objBrokerMaster.Address);
                    cmd.Parameters.AddWithValue("@City", objBrokerMaster.City);
                    cmd.Parameters.AddWithValue("@Zipcode", objBrokerMaster.Zipcode);
                    cmd.Parameters.AddWithValue("@ContactPerson", objBrokerMaster.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objBrokerMaster.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objBrokerMaster.EmailId);
                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveClientCompany(ClientCompanyMaster objCCMaster, out string UserName, out string Password)
        {
            long returnCode = -1;
            UserName = string.Empty;
            Password = string.Empty;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertClientCompanyMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@ClientCompanyName", objCCMaster.ClientCompanyName);
                    cmd.Parameters.AddWithValue("@Address", objCCMaster.Address);
                    //cmd.Parameters.AddWithValue("@City", objCCMaster.City);
                    //cmd.Parameters.AddWithValue("@Zipcode", objCCMaster.Zipcode);
                    //cmd.Parameters.AddWithValue("@Password", objCCMaster.Password);
                    cmd.Parameters.AddWithValue("@ContactPerson", objCCMaster.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objCCMaster.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objCCMaster.EmailId);
                    cmd.Parameters.AddWithValue("@Currency", objCCMaster.Currency);
                    //cmd.Parameters.AddWithValue("@Provider", objCCMaster.Provider);
                    //cmd.Parameters.AddWithValue("@ProviderCommission", objCCMaster.ProviderCommission);
                    //cmd.Parameters.AddWithValue("@ReInsurer", objCCMaster.ReInsurer);
                    //cmd.Parameters.AddWithValue("@ReInsurerRate", objCCMaster.ReInsurerRate);
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        UserName = reader.GetValue(0).ToString();
                        Password = reader.GetValue(1).ToString();
                        
                    }
                    reader.Close();
                    cmd.Dispose();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveDiagnostics(DiagnosticsMaster objDiagMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertDiagnosticsMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@DiagnosticsName", objDiagMaster.DiagnosticsName);
                    cmd.Parameters.AddWithValue("@DiagnosticsCode", objDiagMaster.DiagnosticsCode);
                    returnCode = cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveDrugs(DrugMaster objDrugMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertDrugMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@DrugName", objDrugMaster.DrugName);
                    cmd.Parameters.AddWithValue("@DrugCode", objDrugMaster.DrugCode);
                    returnCode = cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveHospitalMaster(HospitalMaster objHosMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertHospitalMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@HospitalName", objHosMaster.HospitalName);
                    cmd.Parameters.AddWithValue("@Address", objHosMaster.Address);
                    cmd.Parameters.AddWithValue("@State", objHosMaster.State);
                    cmd.Parameters.AddWithValue("@City", objHosMaster.City);
                    cmd.Parameters.AddWithValue("@Zipcode", objHosMaster.Zipcode);
                    cmd.Parameters.AddWithValue("@ContactPerson", objHosMaster.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objHosMaster.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objHosMaster.EmailId);
                    cmd.Parameters.AddWithValue("@Band", objHosMaster.Band);
                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveInsCompanyMaster(InsuranceCompanyMaster objInsCom)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertInsCompanyMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@InsurancecompanyName", objInsCom.InsurancecompanyName);
                    cmd.Parameters.AddWithValue("@Address", objInsCom.Address);
                    cmd.Parameters.AddWithValue("@State", objInsCom.State);
                    cmd.Parameters.AddWithValue("@City", objInsCom.City);
                    cmd.Parameters.AddWithValue("@Zipcode", objInsCom.Zipcode);
                    cmd.Parameters.AddWithValue("@ContactPerson", objInsCom.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objInsCom.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objInsCom.EmailId);
                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveLabMaster(LabMaster objLabMaster)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertLabMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@LabName", objLabMaster.LabName);
                    //cmd.Parameters.AddWithValue("@LabCode", objLabMaster.LabCode);
                    cmd.Parameters.AddWithValue("@Address", objLabMaster.Address);
                    cmd.Parameters.AddWithValue("@State", objLabMaster.State);
                    cmd.Parameters.AddWithValue("@City", objLabMaster.City);
                    cmd.Parameters.AddWithValue("@Zipcode", objLabMaster.Zipcode);
                    cmd.Parameters.AddWithValue("@ContactPerson", objLabMaster.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objLabMaster.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objLabMaster.EmailId);
                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long BulkUpload(string Extension, string filePath, string UserName)
        {
            long returnCode = -1;
            string conString = string.Empty;
            string sheetName = string.Empty;
            bool IsFileMatch = false;
            try
            {

                conString = objUtility.GetOLEDBConnectionString(Extension);


                DataTable dt = new DataTable();
                conString = string.Format(conString, filePath);

                using (OleDbConnection connExcel = new OleDbConnection(conString))
                {
                    using (OleDbCommand cmdExcel = new OleDbCommand())
                    {
                        using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
                        {
                            cmdExcel.Connection = connExcel;

                            //Get the name of First Sheet.
                            connExcel.Open();
                            DataTable dtExcelSchema;
                            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                            sheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                            connExcel.Close();

                            //Read Data from First Sheet.
                            connExcel.Open();
                            cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
                            odaExcel.SelectCommand = cmdExcel;
                            odaExcel.Fill(dt);
                            connExcel.Close();
                        }
                    }
                }

                //string tableName = sheetName.Split('$')[0];
                //   returnCode = BulkInsertMaster(dt, con, "dbo.TB_" + tableName);
                if (sheetName.Contains("$"))
                    sheetName = sheetName.Replace("$", "");

                if (sheetName.Equals("ProducerMaster"))
                {
                    IsFileMatch = true;
                }
                if (IsFileMatch)
                {
                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        if (dt.Rows.Count > 0)
                        {
                            int rowsCnt = dt.Rows.Count;
                            SqlCommand cmd;
                            cmd = new SqlCommand
                            {
                                CommandText = "SP_ProducerMasterBulkUpload",
                                CommandTimeout = 180,
                                Connection = con,
                                CommandType = CommandType.StoredProcedure
                            };
                            SqlParameter UDTparam = new SqlParameter
                            {
                                //ParameterName = "@UDT_MotorBulkUpload",
                                ParameterName = "@UDT_ProducerMaster",
                                Size = -1,
                                Value = dt
                            };
                            cmd.Parameters.AddWithValue("@UserName", UserName);
                            cmd.Parameters.Add(UDTparam);
                            returnCode = cmd.ExecuteNonQuery();
                        }

                    }

                }
                else
                    returnCode = -2;

            }
            catch (Exception ex)
            {

                throw ex;
            }

            return returnCode;
        }
        private long BulkInsertMaster(DataTable dt, SqlConnection con, string TableName)
        {
            long returnCode = -1;
            try
            {

                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                {
                    //Set the database table name.
                    sqlBulkCopy.DestinationTableName = TableName;

                    if (TableName.Equals("dbo.TB_AgentMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("AgentName", "AgentName");
                        //sqlBulkCopy.ColumnMappings.Add("AgentCode", "AgentCode");
                    }
                    if (TableName.Equals("dbo.TB_BrokerMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("BrokerName", "BrokerName");
                        //sqlBulkCopy.ColumnMappings.Add("BrokerCode", "BrokerCode");
                    }
                    if (TableName.Equals("dbo.TB_ClientCompanyMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("ClientCompanyName", "ClientCompanyName");
                        sqlBulkCopy.ColumnMappings.Add("State", "State");
                        sqlBulkCopy.ColumnMappings.Add("Currency", "Currency");
                        sqlBulkCopy.ColumnMappings.Add("Provider", "Provider");
                        sqlBulkCopy.ColumnMappings.Add("ProviderCommission", "ProviderCommission");
                        sqlBulkCopy.ColumnMappings.Add("ReInsurer", "ReInsurer");
                        sqlBulkCopy.ColumnMappings.Add("ReInsurerRate", "ReInsurerRate");
                    }
                    if (TableName.Equals("dbo.TB_DiagnosticsMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("DiagnosticsCode", "DiagnosticsCode");
                        sqlBulkCopy.ColumnMappings.Add("DiagnosticsName", "DiagnosticsName");
                    }
                    if (TableName.Equals("dbo.TB_DrugMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("DrugCode", "DrugCode");
                        sqlBulkCopy.ColumnMappings.Add("DrugName", "DrugName");
                    }
                    if (TableName.Equals("dbo.TB_HospitalMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("HospitalName", "HospitalName");
                        sqlBulkCopy.ColumnMappings.Add("State", "State");
                        sqlBulkCopy.ColumnMappings.Add("Band", "Band");
                    }
                    if (TableName.Equals("dbo.TB_InsuranceCompanyMaster"))
                    {
                        sqlBulkCopy.ColumnMappings.Add("InsurancecompanyName", "InsurancecompanyName");
                        sqlBulkCopy.ColumnMappings.Add("State", "State");
                    }
                    if (TableName.Equals("dbo.TB_LabMaster"))
                    {
                        //sqlBulkCopy.ColumnMappings.Add("LabCode", "LabCode");
                        sqlBulkCopy.ColumnMappings.Add("LabName", "LabName");
                        sqlBulkCopy.ColumnMappings.Add("State", "State");
                    }
                    if (TableName.Equals("dbo.TB_AgentMaster") || TableName.Equals("dbo.TB_BrokerMaster")
                        || TableName.Equals("dbo.TB_ClientCompanyMaster") ||
                        TableName.Equals("dbo.TB_HospitalMaster") || TableName.Equals("dbo.TB_InsuranceCompanyMaster")
                        || TableName.Equals("dbo.TB_LabMaster"))
                    {


                        sqlBulkCopy.ColumnMappings.Add("Address", "Address");
                        sqlBulkCopy.ColumnMappings.Add("City", "City");
                        sqlBulkCopy.ColumnMappings.Add("Zipcode", "Zipcode");
                        sqlBulkCopy.ColumnMappings.Add("ContactPerson", "ContactPerson");
                        sqlBulkCopy.ColumnMappings.Add("MobileNumber", "MobileNumber");
                        sqlBulkCopy.ColumnMappings.Add("EmailId", "EmailId");
                    }
                    con.Open();
                    sqlBulkCopy.WriteToServer(dt);
                    con.Close();
                    returnCode = 1;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return returnCode;
        }
        public long BulkUploadMotor(string Extension, string filePath, int reqFrom, out int rowsCnt, out string fileMismatchErr, string UserName,out List<ProducerMaster> lstPMBulkUpload)
        {
            lstPMBulkUpload = new List<ProducerMaster>();
            long returnCode = -1;
            reqFrom = 0;
            string conString = string.Empty;
            string sheetName = string.Empty;
            string sp_name = string.Empty;
            fileMismatchErr = string.Empty;
            bool IsFileMatch = false;
            rowsCnt = 0;

            
            try
            {

                conString = objUtility.GetOLEDBConnectionString(Extension);
                DataTable dt = new DataTable();
                conString = string.Format(conString, filePath);

                using (OleDbConnection connExcel = new OleDbConnection(conString))
                {
                    using (OleDbCommand cmdExcel = new OleDbCommand())
                    {
                        using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
                        {
                            cmdExcel.Connection = connExcel;

                            //Get the name of First Sheet.
                            connExcel.Open();
                            DataTable dtExcelSchema;
                            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                            sheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                            connExcel.Close();

                            //Read Data from First Sheet.
                            connExcel.Open();
                            cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
                            odaExcel.SelectCommand = cmdExcel;
                            odaExcel.Fill(dt);
                            connExcel.Close();
                        }
                    }
                }
               
                //if (IsFileMatch)
                //{
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    if (dt.Rows.Count > 0)
                    {
                        rowsCnt = dt.Rows.Count;
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_ProducerMasterUpload",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            //ParameterName = "@UDT_MotorBulkUpload",
                            ParameterName = "@UDT_ProducerMaster",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.AddWithValue("@UserName", UserName);
                        cmd.Parameters.Add(UDTparam);
                        SqlDataAdapter sdaAdapter = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        sdaAdapter.Fill(dt);
                        returnCode = dt.Rows.Count;
                        if (dt.Rows.Count > 0)
                        {
                            lstPMBulkUpload = (from DataRow dr in dt.Rows
                                              select new ProducerMaster()
                                              {
                                                  ProducerName = dr["UserName"].ToString(),
                                                  EmailId = dr["EmailId"].ToString(),
                                              }).ToList();

                        }
                    }

                }
                

            }
            catch (Exception ex)
            {

                throw ex;
            }

            return returnCode;
        }
    }
}

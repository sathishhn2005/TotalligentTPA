using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.Utilities;
using Totalligent.BusinessEntities;
using System.Data;
using System.Data.SqlClient;

namespace Totalligent.DAL
{
    public class GLIMasterDAL
    {
        readonly Utility objUtility = new Utility();
        DBEngine objDBEngine;
        DataTable dtResult;

        #region CommonMataDataMaster
        public int GetBankMasters(out List<BankMaster> lstBankMaster)
        {
            int ReturnCode = 0;
            DataTable dt = new DataTable();
            lstBankMaster = null;
            dtResult = new DataTable();
            try
            {
                SqlParameter[] Param = null;

                //SqlParameter[] Param = {
                //                            new SqlParameter("@BankID",SqlDbType.Int),
                //                            //new SqlParameter("@outParam",SqlDbType.NVarChar)
                //                      };
                //Param[0].Value = intOrgid;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = objDBEngine.GetDataTable("pGetBankMaster", Param);
                    //List<DataRow> obj = dtResult.AsEnumerable().ToList();                  
                    if (dtResult.Rows.Count > 0)
                    {
                        lstBankMaster = dtResult.AsEnumerable().Select(U => new BankMaster()
                        {
                            BankID = U.Field<int>("BankID"),
                            BankName = U.Field<string>("BankName")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;

                //        lstBankMaster = (from DataRow dr in dt.Rows
                //                           select new BankMaster()
                //                           {
                //                               BankID = Convert.ToInt32(dr["BankID"]),
                //                               BankName = dr["BankName"].ToString()
                //                           }).ToList();

                //using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                //{
                //    con.Open();
                //    SqlCommand cmd = new SqlCommand
                //    {
                //        CommandText = "pGetBankMaster"
                //    };

                //    cmd.CommandType = CommandType.StoredProcedure;
                //    cmd.Connection = con;
                //    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                //    {
                //        SelectCommand = cmd
                //    };
                //    sdaAdapter.Fill(dt);
                //    if (dt.Rows.Count > 0)
                //    {
                //        lstBankMaster = (from DataRow dr in dt.Rows
                //                           select new BankMaster()
                //                           {
                //                               BankID = Convert.ToInt32(dr["BankID"]),
                //                               BankName = dr["BankName"].ToString()
                //                           }).ToList();
                //    }
                //}
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }
        #endregion
        #region CommonMataDataMaster
        public int GetDefaultMasters(out MasterSelectedList obj)
        {
            int ReturnCode = 0;
            DataSet ds = new DataSet();
            obj = new MasterSelectedList();
            //lstBankMaster = null;
            // dtResult = new DataSet();
            try
            {
                SqlParameter[] Param = null;



                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    ds = objDBEngine.GetDataSet("pGetDefaultMaster", Param);
                    //List<DataRow> obj = dtResult.AsEnumerable().ToList();                  
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        obj.lstInsCompddl = ds.Tables[0].AsEnumerable().Select(U => new InsuranceCompanyMaster()
                        {
                            ICMId = U.Field<long>("ICMId"),
                            InsurancecompanyName = U.Field<string>("InsurancecompanyName")
                        }
                        ).ToList();
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        obj.lstLOB = ds.Tables[1].AsEnumerable().Select(U => new LOB()
                        {
                            LOBId = U.Field<long>("LOBId"),
                            LOBName = U.Field<string>("LOBName")
                        }
                        ).ToList();
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        obj.lstProducerMaster = ds.Tables[2].AsEnumerable().Select(U => new ProducerMaster()
                        {
                            Id = U.Field<long>("Id"),
                            Name = U.Field<string>("Name")
                        }
                        ).ToList();
                    }
                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        obj.lstRIMaster = ds.Tables[3].AsEnumerable().Select(U => new ReInsurerMaster()
                        {
                            ReInsurerMasterId = U.Field<long>("ReInsurerMasterId"),
                            ReInsurerName = U.Field<string>("ReInsurerName")
                        }
                        ).ToList();
                    }
                    if (ds.Tables[4].Rows.Count > 0)
                    {
                        obj.lstCCMaster = ds.Tables[4].AsEnumerable().Select(U => new ClientCompanyMaster()
                        {
                            ClientCompanyMasterId = U.Field<long>("ClientCompanyMasterId"),
                            ClientCompanyName = U.Field<string>("ClientCompanyName")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }
        #endregion

        #region RIMaster   

        public int DMLRIMaster(string Action, string JPramValue)
        {
            int intResult = 0;
            try
            {


                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDMLCCMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }

        public int GetAutocompleteRINameRICodeCity(string prefixText, string Action, out List<ReInsurerMaster> lstRIMaster)
        {
            int ReturnCode = 0;
            lstRIMaster = null;

            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@prefixText",SqlDbType.NVarChar),
                                            new SqlParameter("@Action",SqlDbType.NVarChar),

                                      };

                Param[0].Value = prefixText;
                Param[1].Value = Action;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();

                    dtResult = objDBEngine.GetDataTable("pGetAutocompleteRINameRICodeCity", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstRIMaster = dtResult.AsEnumerable().Select(U => new ReInsurerMaster()
                        {
                            ReInsurerName = U.Field<string>("ReInsurerName"),
                            ReInsurerCode = U.Field<string>("ReInsurerCode")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int GetRIMaster(string RIName, string RICode, string City, out List<ReInsurerMaster> lstRIMaster)
        {
            int ReturnCode = 0;
            lstRIMaster = null;

            try
            {

                SqlParameter[] Param = {
                                            new SqlParameter("@RIName",SqlDbType.NVarChar),
                                            new SqlParameter("@RICode",SqlDbType.NVarChar),
                                            new SqlParameter("@RICity",SqlDbType.NVarChar),

                                      };

                Param[0].Value = RIName;
                Param[1].Value = RICode;
                Param[2].Value = City;


                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetRIMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstRIMaster = dtResult.AsEnumerable().Select(U => new ReInsurerMaster()
                        {
                            ReInsurerMasterId = U.Field<long>("ReInsurerMasterId"),
                            ReInsurerName = U.Field<string>("ReInsurerName"),
                            ReInsurerCode = U.Field<string>("ReInsurerCode"),
                            ContactPerson = U.Field<string>("ContactPerson"),
                            MobileNumber = U.Field<string>("MobileNumber"),
                            EmailId = U.Field<string>("EmailId"),
                            Address = U.Field<string>("Address"),
                            City = U.Field<string>("City"),
                            State = U.Field<string>("State"),
                            Zipcode = U.Field<string>("Zipcode"),
                            BankID = U.Field<int>("BankID"),
                            IFSCCode = U.Field<string>("IFSCCode"),
                            //BankName = U.Field<string>("BankName"),
                            AccountNumber = U.Field<string>("AccountNumber"),
                            UploadKYC_01 = U.Field<string>("UploadKYC_01"),
                            Status = U.Field<string>("Status")

                        }).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int DeactivateRIMaster(long ReInsurerMasterId)
        {
            int intResult = 0;
            try
            {


                SqlParameter[] Param = {
                                            new SqlParameter("@ReInsurerMasterId",SqlDbType.BigInt),

                                      };
                Param[0].Value = ReInsurerMasterId;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDeactivateRIMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }
        #endregion

        #region ClientCompanyMaster  

        public int DMLCCMaster(string Action, string JPramValue)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDMLCCMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }

        public int GetAutocompleteCCMaster(string prefixText, string Action, out List<ClientCompanyMaster> lstCCMaster)
        {
            int ReturnCode = 0;
            lstCCMaster = null;

            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@prefixText",SqlDbType.NVarChar),
                                            new SqlParameter("@Action",SqlDbType.NVarChar),

                                      };

                Param[0].Value = prefixText;
                Param[1].Value = Action;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();

                    dtResult = objDBEngine.GetDataTable("pGetAutocompleteCCMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstCCMaster = dtResult.AsEnumerable().Select(U => new ClientCompanyMaster()
                        {
                            ClientCompanyName = U.Field<string>("ClientCompanyName"),
                            ClientCompCode = U.Field<string>("ClientCompCode")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int GetCCMaster(string CCName, string CCCode, string City, out List<ClientCompanyMaster> lstCCMaster)
        {
            int ReturnCode = 0;
            lstCCMaster = null;

            try
            {

                SqlParameter[] Param = {
                                            new SqlParameter("@CCName",SqlDbType.NVarChar),
                                            new SqlParameter("@CCCode",SqlDbType.NVarChar),
                                            new SqlParameter("@CCCity",SqlDbType.NVarChar),

                                      };

                Param[0].Value = CCName;
                Param[1].Value = CCCode;
                Param[2].Value = City;


                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetCCMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstCCMaster = dtResult.AsEnumerable().Select(U => new ClientCompanyMaster()
                        {
                            ClientCompanyMasterId = U.Field<long>("ClientCompanyMasterId"),
                            ClientCompanyName = U.Field<string>("ClientCompanyName"),
                            ClientCompCode = U.Field<string>("ClientCompCode"),
                            ContactPerson = U.Field<string>("ContactPerson"),
                            MobileNumber = U.Field<string>("MobileNumber"),
                            EmailId = U.Field<string>("EmailId"),
                            Address = U.Field<string>("Address"),
                            City = U.Field<string>("City"),
                            State = U.Field<string>("State"),
                            Zipcode = U.Field<string>("Zipcode"),
                            BankID = U.Field<int>("BankID"),
                            IFSCCode = U.Field<string>("IFSCCode"),
                            //BankName = U.Field<string>("BankName"),
                            AccountNumber = U.Field<string>("AccountNumber"),
                            UploadKYC_01 = U.Field<string>("UploadKYC_01"),


                        }).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int DeactivateCCMaster(long ClientCompanyMasterId)
        {
            int intResult = 0;
            try
            {


                SqlParameter[] Param = {
                                            new SqlParameter("@ClientCompanyMasterId",SqlDbType.BigInt),

                                      };
                Param[0].Value = ClientCompanyMasterId;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDeactivateCCMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }
        #endregion

        #region InsuranceCompanyMaster  

        public int DMLICMaster(string Action, string JPramValue)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDMLICMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }

        public int GetAutocompleteICMaster(string prefixText, string Action, out List<InsuranceCompanyMaster> lstICMaster)
        {
            int ReturnCode = 0;
            lstICMaster = null;

            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@prefixText",SqlDbType.NVarChar),
                                            new SqlParameter("@Action",SqlDbType.NVarChar),

                                      };

                Param[0].Value = prefixText;
                Param[1].Value = Action;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();

                    dtResult = objDBEngine.GetDataTable("pGetAutocompleteICMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstICMaster = dtResult.AsEnumerable().Select(U => new InsuranceCompanyMaster()
                        {
                            InsurancecompanyName = U.Field<string>("InsurancecompanyName"),
                            InsCompCode = U.Field<string>("InsCompCode")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int GetICMaster(string CCName, string CCCode, string City, out List<InsuranceCompanyMaster> lstICMaster)
        {
            int ReturnCode = 0;
            lstICMaster = null;

            try
            {

                SqlParameter[] Param = {
                                            new SqlParameter("@ICName",SqlDbType.NVarChar),
                                            new SqlParameter("@ICCode",SqlDbType.NVarChar),
                                            new SqlParameter("@ICCity",SqlDbType.NVarChar),

                                      };

                Param[0].Value = CCName;
                Param[1].Value = CCCode;
                Param[2].Value = City;


                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetICMMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstICMaster = dtResult.AsEnumerable().Select(U => new InsuranceCompanyMaster()
                        {
                            ICMId = U.Field<long>("ICMId"),
                            InsurancecompanyName = U.Field<string>("InsurancecompanyName"),
                            InsCompCode = U.Field<string>("InsCompCode"),
                            ContactPerson = U.Field<string>("ContactPerson"),
                            MobileNumber = U.Field<string>("MobileNumber"),
                            EmailId = U.Field<string>("EmailId"),
                            Address = U.Field<string>("Address"),
                            City = U.Field<string>("City"),
                            State = U.Field<string>("State"),
                            Zipcode = U.Field<string>("Zipcode"),
                            BankID = U.Field<int>("BankID"),
                            IFSCCode = U.Field<string>("IFSCCode"),
                            //BankName = U.Field<string>("BankName"),
                            AccountNumber = U.Field<string>("AccountNumber"),
                            UploadKYC_01 = U.Field<string>("UploadKYC_01"),


                        }).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int DeactivateICMaster(long ICMId)
        {
            int intResult = 0;
            try
            {


                SqlParameter[] Param = {
                                            new SqlParameter("@ICMId",SqlDbType.BigInt),

                                      };
                Param[0].Value = ICMId;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDeactivateICMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }
        #endregion

        #region EmployeeMaster  

        public int DMLEmpMaster(string Action, string JPramValue)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDMLEmpMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }

        public int GetAutocompleteEmpMaster(string prefixText, string Action, out List<EmployeeMaster> lstEmpMaster)
        {
            int ReturnCode = 0;
            lstEmpMaster = null;

            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@prefixText",SqlDbType.NVarChar),
                                            new SqlParameter("@Action",SqlDbType.NVarChar),

                                      };

                Param[0].Value = prefixText;
                Param[1].Value = Action;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();

                    dtResult = objDBEngine.GetDataTable("pGetAutocompleteEmpMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstEmpMaster = dtResult.AsEnumerable().Select(U => new EmployeeMaster()
                        {
                            EmployeeName = U.Field<string>("EmployeeName"),
                            EmployeeUniqueNumber = U.Field<string>("EmployeeUniqueNumber")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int GetEmpMaster(string EmpName, string EmpId, string ClientName, out List<EmployeeMaster> lstEmpMaster)
        {
            int ReturnCode = 0;
            lstEmpMaster = null;

            try
            {

                SqlParameter[] Param = {
                                            new SqlParameter("@EmpName",SqlDbType.NVarChar),
                                            new SqlParameter("@EmpId",SqlDbType.NVarChar),
                                            new SqlParameter("@ClientName",SqlDbType.NVarChar),

                                      };

                Param[0].Value = EmpName;
                Param[1].Value = EmpId;
                Param[2].Value = ClientName;


                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetEmpMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstEmpMaster = dtResult.AsEnumerable().Select(U => new EmployeeMaster()
                        {
                            EmployeeId = U.Field<long>("EmployeeId"),
                            EmployeeName = U.Field<string>("EmployeeName"),
                            EmployeeUniqueNumber = U.Field<string>("EmployeeUniqueNumber"),
                            Age = U.Field<int>("Age"),
                            DOB = U.Field<DateTime>("DOB"),
                            Nationality = U.Field<string>("Nationality"),
                            Category = U.Field<string>("Category"),
                        }).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int DeactivateEmpMaster(long EmpId)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@EmpId",SqlDbType.BigInt),

                                      };
                Param[0].Value = EmpId;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDeactivateEmpMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }
        #endregion

        #region MedicalProviderMaster  

        public int DMLMPMaster(string Action, string JPramValue)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@Action",SqlDbType.NVarChar),
                                            new SqlParameter("@JParamVal",SqlDbType.NVarChar)
                                      };
                Param[0].Value = Action;
                Param[1].Value = JPramValue;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDMLMPMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }

        public int GetAutocompleteMPMaster(string prefixText, string Action, out List<MedicalProviderMaster> lstMPMaster)
        {
            int ReturnCode = 0;
            lstMPMaster = null;

            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@prefixText",SqlDbType.NVarChar),
                                            new SqlParameter("@Action",SqlDbType.NVarChar),

                                      };

                Param[0].Value = prefixText;
                Param[1].Value = Action;

                objDBEngine = new DBEngine();

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();

                    dtResult = objDBEngine.GetDataTable("pGetAutocompleteMPMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstMPMaster = dtResult.AsEnumerable().Select(U => new MedicalProviderMaster()
                        {
                            Name = U.Field<string>("Name"),
                            MedicalProvider = U.Field<string>("MedicalProvider")
                        }
                        ).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int GetMPMaster(string MedicalProvider, string Name, string ContactPerson, out List<MedicalProviderMaster> lstMPMaster)
        {
            int ReturnCode = 0;
            lstMPMaster = null;

            try
            {

                SqlParameter[] Param = {
                                            new SqlParameter("@MPName",SqlDbType.NVarChar),
                                            new SqlParameter("@MPProvider",SqlDbType.NVarChar),
                                            new SqlParameter("@ContactPerson",SqlDbType.NVarChar),

                                      };

                Param[0].Value = Name;
                Param[1].Value = MedicalProvider;
                Param[2].Value = ContactPerson;


                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetMPMaster", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        lstMPMaster = dtResult.AsEnumerable().Select(U => new MedicalProviderMaster()
                        {
                            MedicalProviderId = U.Field<long>("MedicalProviderId"),
                            MedicalProvider = U.Field<string>("MedicalProvider"),
                            Name = U.Field<string>("Name"),
                            ContactPerson = U.Field<string>("ContactPerson"),
                            MobileNumber = U.Field<string>("MobileNumber"),
                            EmailId = U.Field<string>("EmailId"),
                            Category = U.Field<string>("Category"),
                        }).ToList();
                    }

                }

                ReturnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ReturnCode;
        }

        public int DeactivateMPMaster(long MPId)
        {
            int intResult = 0;
            try
            {
                SqlParameter[] Param = {
                                            new SqlParameter("@MPId",SqlDbType.BigInt),

                                      };
                Param[0].Value = MPId;

                using (objDBEngine = new DBEngine())
                {
                    intResult = objDBEngine.DMLOperation("pDeactivateMPMaster", Param);

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return intResult;
        }
        #endregion
    }
}

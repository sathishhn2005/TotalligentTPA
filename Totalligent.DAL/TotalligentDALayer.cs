using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.Utilities;
using Totalligent.BusinessEntities;
using System.Collections;

namespace Totalligent.DAL
{
    public class TotalligentDALayer
    {

        readonly Utility objUtility = new Utility();
        DBEngine objDBEngine;
        DataTable dtResult;
        Hashtable HTOutParam = null;

        public List<UserType> GetUserTypeMaster()
        {
            List<UserType> lstUserType = new List<UserType>();
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetUserType"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lstUserType = (from DataRow dr in dt.Rows
                                       select new UserType()
                                       {
                                           UserTypeId = Convert.ToInt32(dr["UserTypeId"]),
                                           Designation = dr["Designation"].ToString()
                                       }).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstUserType;
        }
        public List<Role> GetRoles()
        {
            List<Role> lstRoles = new List<Role>();
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetRoles"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lstRoles = (from DataRow dr in dt.Rows
                                    select new Role()
                                    {
                                        RoleId = Convert.ToInt32(dr["RoleId"]),
                                        Description = dr["Description"].ToString()
                                    }).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstRoles;
        }
        public Employee GetLoginInfo(string Username, string Password, int RoleId, out string IsFirstLogin)
        {
            string Uname = string.Empty;
            IsFirstLogin = string.Empty;
            Employee objEmp = new Employee();
            SqlDataReader reader;
            try
            {

                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetLoginInfo"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@RoleId", RoleId);
                    SqlParameter param = new SqlParameter
                    {
                        ParameterName = "@IsFirstLogin",
                        Direction = ParameterDirection.Output,
                        SqlDbType = SqlDbType.Char,
                        Size = 10
                    };
                    cmd.Parameters.Add(param);

                    // Uname = cmd.ExecuteScalar().ToString();
                    //Uname = (cmd.ExecuteScalar() ?? "").ToString();

                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        objEmp.EmployeeId = (int)reader.GetValue(0);
                        objEmp.UserName = reader.GetValue(1).ToString();
                        objEmp.UserEmployeeNo = reader.GetValue(2).ToString();
                        objEmp.Designation = reader.GetValue(3).ToString();
                        objEmp.ReportingManager = reader.GetValue(4).ToString();
                        objEmp.EmailId = reader.GetValue(5).ToString();
                        objEmp.MobileNumber = reader.GetValue(6).ToString();
                        objEmp.RoleId = (int)reader.GetValue(7);
                        objEmp.Loginid = (int)reader.GetValue(8);
                    }
                    reader.Close();
                    cmd.Dispose();

                    IsFirstLogin = Convert.ToString(cmd.Parameters["@IsFirstLogin"].Value);
                    if (string.IsNullOrEmpty(IsFirstLogin))
                    {
                        IsFirstLogin = "N";
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objEmp;
        }
        public long RegisterUser(Register objRegister)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_CompanyRegistration"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@CompanyName", objRegister.CompanyName);
                    cmd.Parameters.AddWithValue("@Address", objRegister.Address);
                    cmd.Parameters.AddWithValue("@City", objRegister.City);
                    cmd.Parameters.AddWithValue("@StateName", objRegister.StateName);
                    cmd.Parameters.AddWithValue("@ContactPerson", objRegister.ContactPerson);
                    cmd.Parameters.AddWithValue("@MobileNumber", objRegister.MobileNumber);
                    cmd.Parameters.AddWithValue("@EmailId", objRegister.EmailId);
                    cmd.Parameters.AddWithValue("@Currency", objRegister.Currency);
                    cmd.Parameters.AddWithValue("@CreatedBy", "Developer");
                    long returnCode = cmd.ExecuteNonQuery();
                    return returnCode;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public long UpdateNewPassword(string Username, string OldPswd, string NewPswd)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_UpdatePassword"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@UserName", Username);
                    cmd.Parameters.AddWithValue("@OldPassword", OldPswd);
                    cmd.Parameters.AddWithValue("@NewPassword", NewPswd);

                    long returnCode = cmd.ExecuteNonQuery();
                    return returnCode;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public long SaveLogin(string UserName, string Password, int RoleId)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_SaveLogin"
                    };
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@RoleId", RoleId);

                    long returnCode = cmd.ExecuteNonQuery();
                    return returnCode;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public long RegisterEmployee(Employee objRegisterEmployee, out string UserName, out string EmailId)
        {
            long returnCode = -1;
            SqlDataReader reader;
            UserName = string.Empty;
            EmailId = string.Empty;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_EmployeeRegistration"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@UserName", objRegisterEmployee.UserName);
                    cmd.Parameters.AddWithValue("@UserEmployeeNo", objRegisterEmployee.UserEmployeeNo);
                    cmd.Parameters.AddWithValue("@UserTypeId", objRegisterEmployee.UserTypeId);
                    cmd.Parameters.AddWithValue("@ReportingManager", objRegisterEmployee.ReportingManager);
                    cmd.Parameters.AddWithValue("@EmailId", objRegisterEmployee.EmailId);
                    cmd.Parameters.AddWithValue("@MobileNumber", objRegisterEmployee.MobileNumber);
                    cmd.Parameters.AddWithValue("@CreatedBy", "Admin");
                    cmd.Parameters.AddWithValue("@RoleId", objRegisterEmployee.RoleId);
                    //long returnCode = cmd.ExecuteNonQuery();

                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        UserName = reader.GetValue(0).ToString();
                        EmailId = reader.GetValue(1).ToString();
                    }
                    reader.Close();
                    cmd.Dispose();
                    if (!string.IsNullOrEmpty(UserName) && !string.IsNullOrEmpty(EmailId))
                        returnCode = 1;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public string InsertClient(Register objRegisterClient)
        {
            string PolicyNumber = string.Empty;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    DataTable dt = objUtility.ConvertToClient(objRegisterClient);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_RegisterClient",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_ClientRegistration",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.Add(UDTparam);
                        PolicyNumber = cmd.ExecuteScalar().ToString() ?? "";
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return PolicyNumber;
        }
        public List<Register> GetClients(string PolicyNumber)
        {
            List<Register> lstClients = new List<Register>();
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_Clients"
                    };
                    cmd.Parameters.AddWithValue("@PolicyNumber", PolicyNumber);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lstClients = (from DataRow dr in dt.Rows
                                      select new Register()
                                      {
                                          ClientId = Convert.ToInt32(dr["ClientId"]),
                                          PolicyNumber = dr["PolicyNumber"].ToString(),
                                          ClientName = dr["ClientName"].ToString(),
                                          Address = dr["CompanyAddress"].ToString(),
                                          City = dr["City"].ToString(),
                                          StateName = dr["StateName"].ToString(),
                                          ZipCode = (long)dr["ZipCode"],
                                          ContactPerson = dr["ContactPerson"].ToString(),
                                          MobileNumber = dr["MobileNumber"].ToString(),
                                          EmailId = dr["EmailId"].ToString(),
                                          Currency = dr["Currency"].ToString(),
                                          Broker = dr["Broker"].ToString(),
                                          Reinsurer = dr["Reinsurer"].ToString(),
                                      }).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstClients;
        }
        public long TPAInsComRegister(InsuranceCompany objInsCompanyRegister, out string PolicyNumber)
        {
            long returnCode = -1;
            PolicyNumber = string.Empty;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    DataTable dt = objUtility.ConvertToInsCompany(objInsCompanyRegister);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand cmd;
                        cmd = new SqlCommand
                        {
                            CommandText = "SP_RegisterInsCompany",
                            CommandTimeout = 180,
                            Connection = con,
                            CommandType = CommandType.StoredProcedure
                        };
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_InsCompanyRegistration",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.Add(UDTparam);
                        if (!string.IsNullOrEmpty(cmd.ExecuteScalar().ToString()))
                            PolicyNumber = cmd.ExecuteScalar().ToString() ?? "";
                    }
                }
            }

            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public List<InsuranceCompany> GetCompanies(string CompanyDraftNo)
        {
            List<InsuranceCompany> lstCompanies = new List<InsuranceCompany>();
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetCompanies"
                    };
                    cmd.Parameters.AddWithValue("@CompanyDraftNo", CompanyDraftNo);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lstCompanies = (from DataRow dr in dt.Rows
                                        select new InsuranceCompany()
                                        {
                                            ClientId = Convert.ToInt32(dr["InsCompanyId"]),
                                            PolicyNumber = dr["PolicyNumber"].ToString(),
                                            CompanyName = dr["CompanyName"].ToString(),
                                            Address = dr["CompanyAddress"].ToString(),
                                            City = dr["City"].ToString(),
                                            StateName = dr["StateName"].ToString(),
                                            ZipCode = (long)dr["ZipCode"],
                                            ContactPerson = dr["ContactPerson"].ToString(),
                                            MobileNumber = dr["MobileNumber"].ToString(),
                                            EmailId = dr["EmailId"].ToString(),
                                            Currency = dr["Currency"].ToString(),
                                            Broker = dr["Broker"].ToString(),
                                            Reinsurer = dr["Reinsurer"].ToString(),
                                        }).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstCompanies;
        }
        public long SaveRaiseTicket(RaiseTickets objRaiseTickets)
        {
            long returnCode = -1;

            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_RaiseTicket"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@TicketId", objRaiseTickets.TicketId);
                    cmd.Parameters.AddWithValue("@RaisedBy", objRaiseTickets.RaisedBy);
                    cmd.Parameters.AddWithValue("@Description", objRaiseTickets.Description);
                    cmd.Parameters.AddWithValue("@CreatedAt", objRaiseTickets.CreatedAt);
                    cmd.Parameters.AddWithValue("@CreatedBy", objRaiseTickets.CreatedBy);

                    returnCode = cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public int IsUserExists(string UserName, out List<Employee> lstUsers)
        {
            int i = 0;
            DataTable dt = new DataTable();
            lstUsers = new List<Employee>();
            //List<Employee> lstUsers = new List<Employee>();
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_ResetPassword"
                    };
                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    i = dt.Rows.Count;
                    if (dt.Rows.Count > 0)
                    {
                        lstUsers = (from DataRow dr in dt.Rows
                                    select new Employee()
                                    {
                                        UserName = dr["UserName"].ToString(),
                                        MobileNumber = dr["MobileNumber"].ToString(),
                                        EmailId = dr["EmailId"].ToString(),
                                        TicketId = (int)dr["TicketId"],

                                    }).ToList();

                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return i;
        }
        public List<RaiseTickets> GetTickets()
        {
            List<RaiseTickets> lstViewTickets = new List<RaiseTickets>();
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_ViewTickets"
                    };
                    // cmd.Parameters.AddWithValue("@CompanyDraftNo", CompanyDraftNo);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lstViewTickets = (from DataRow dr in dt.Rows
                                          select new RaiseTickets()
                                          {
                                              TicketId = Convert.ToInt32(dr["TicketId"]),
                                              RaisedBy = dr["RaisedBy"].ToString(),
                                              Description = dr["Description"].ToString(),
                                              CreatedAt = Convert.ToDateTime(dr["CreatedAt"].ToString()),
                                              Status = dr["Status"].ToString(),
                                              EmailId = dr["EmailId"].ToString()

                                          }).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstViewTickets;
        }
        public long CloseRaisedTicket(RaiseTickets objRaiseTickets, out List<Employee> lstMailNewPwsd)
        {
            long returnCode = -1;
            lstMailNewPwsd = new List<Employee>();

            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_CloseTicket"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@TicketId", objRaiseTickets.TicketId);
                    cmd.Parameters.AddWithValue("@RaisedBy", objRaiseTickets.RaisedBy);
                    cmd.Parameters.AddWithValue("@Newpassword", objRaiseTickets.Newpassword);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(dt);
                    returnCode = dt.Rows.Count;
                    if (dt.Rows.Count > 0)
                    {
                        lstMailNewPwsd = (from DataRow dr in dt.Rows
                                          select new Employee()
                                          {
                                              UserName = dr["UserName"].ToString(),
                                              Newpassword = dr["Newpassword"].ToString(),
                                              EmailId = dr["EmailId"].ToString(),
                                              TicketId = (int)dr["TicketId"],

                                          }).ToList();

                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SavePM(ProducerMaster objPM, out string UserName, out string EmailId)
        {
            long returnCode = -1;
            SqlDataReader reader;
            UserName = string.Empty;
            EmailId = string.Empty;
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_InsertProducerMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    // cmd.Parameters.AddWithValue("@MasterType", objPM.MasterType);
                    // cmd.Parameters.AddWithValue("@Name", objPM.Name);
                    // cmd.Parameters.AddWithValue("@UserName", objPM.UserName);
                    cmd.Parameters.AddWithValue("@Password", objPM.Password);
                    cmd.Parameters.AddWithValue("@EmailId", objPM.EmailId);
                    // cmd.Parameters.AddWithValue("@AddedBy", objPM.AddedBy);
                    //  cmd.Parameters.AddWithValue("@MobileNumber", objPM.MobileNumber);
                    //  cmd.Parameters.AddWithValue("@CreatedBy", "Admin");
                    //  cmd.Parameters.AddWithValue("@RoleId", objPM.RoleId);
                    //long returnCode = cmd.ExecuteNonQuery();

                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        UserName = reader.GetValue(0).ToString();
                        EmailId = reader.GetValue(1).ToString();
                    }
                    reader.Close();
                    cmd.Dispose();
                    if (!string.IsNullOrEmpty(UserName) && !string.IsNullOrEmpty(EmailId))
                        returnCode = 1;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long SaveEM(EmployeeMaster objEM)
        {
            long returnCode = -1;
            DataTable dt = objUtility.ConvertToEmployeeMasterGenerator(objEM);
            try
            {
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_EmployeeMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    SqlParameter UDTparam = new SqlParameter
                    {
                        ParameterName = "@UDT_EmployeeMaster",
                        Size = -1,
                        Value = dt
                    };
                    // cmd.Parameters.AddWithValue("@QuotationId", QuotationId);
                    cmd.Parameters.AddWithValue("@UserName", "Admin");
                    cmd.Parameters.Add(UDTparam);

                    returnCode = cmd.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long CreateQuotation(Quotation obj, long QuotationId, out string draftNo)
        {
            long returnCode = -1;
            SqlDataReader reader;
            draftNo = string.Empty;
            try
            {
                DataTable dt = objUtility.ConvertToQuotationGenerator(obj);
                if (dt.Rows.Count > 0)
                {


                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand
                        {
                            CommandText = "SP_CreateQuotation"
                        };

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_QuotationGenerator",
                            Size = -1,
                            Value = dt
                        };
                        cmd.Parameters.AddWithValue("@QuotationId", QuotationId);
                        cmd.Parameters.AddWithValue("@UserName", "Admin");
                        cmd.Parameters.Add(UDTparam);
                        reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            draftNo = reader.GetValue(0).ToString();
                            // EmailId = reader.GetValue(1).ToString();
                        }
                        reader.Close();
                        cmd.Dispose();

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long InsertEndorsement(Endorsement obj, long EndorsementId, out List<Endorsement> lst, DataTable dtGLEndorsement, DataTable dtWLEndorsement)
        {
            long returnCode = -1;
            lst = null;
            try
            {
                DataTable dtEndorsement = objUtility.ConvertToEndorsement(obj);
                // DataTable dtGLEndorsement = dt1;
                // DataTable dtWLEndorsement = obj.WLEndorsement;
                if (dtEndorsement.Rows.Count > 0 && dtGLEndorsement.Rows.Count > 0 && dtWLEndorsement.Rows.Count > 0)
                {
                    using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand
                        {
                            CommandText = "SP_InsertEndorsement"
                        };

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        SqlParameter UDTparam = new SqlParameter
                        {
                            ParameterName = "@UDT_Endorsement",
                            Size = -1,
                            Value = dtEndorsement
                        };
                        SqlParameter UDTparam1 = new SqlParameter
                        {
                            ParameterName = "@UDTGLEndorsement",
                            Size = -1,
                            Value = dtGLEndorsement
                        };
                        SqlParameter UDTparam2 = new SqlParameter
                        {
                            ParameterName = "@UDTWLEndorsement",
                            Size = -1,
                            Value = dtWLEndorsement
                        };
                        //cmd.Parameters.AddWithValue("@QuotationId", QuotationId);
                        cmd.Parameters.AddWithValue("@UserName", "Admin");
                        cmd.Parameters.Add(UDTparam);
                        cmd.Parameters.Add(UDTparam1);
                        cmd.Parameters.Add(UDTparam2);
                        SqlDataAdapter sdaAdapter = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        DataSet ds = new DataSet();
                        sdaAdapter.Fill(ds);


                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            DTtoListConverter.ConvertTo(ds.Tables[0], out lst);
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
        public long GetUWDashBoardDetails(string UserName, out UnderWriter lstInfo)
        {
            long returnCode = -1;
            lstInfo = new UnderWriter();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetUWDashboard"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    //cmd.Parameters.AddWithValue("@Password", lstInput.Password);
                    //cmd.Parameters.AddWithValue("@RoleId", lstInput.Role);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    //DataSet ds = new DataSet();
                    sdaAdapter.Fill(ds);
                    List<Quotation> lst = new List<Quotation>();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            lstInfo.TNPYear = Convert.ToInt64(dr["TNPYear"]);
                            lstInfo.TotalNoPolQuotationDrafted = Convert.ToInt64(dr["TotalNoPolQuotationDrafted"]);
                            lstInfo.TotNoPolIssued = Convert.ToInt64(dr["TotNoPolIssued"]);
                            lstInfo.TotalNoPolRejected = Convert.ToInt64(dr["TotalNoPolRejected"]);
                        }

                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        DTtoListConverter.ConvertTo(ds.Tables[1], out lst);
                        lstInfo.lstQuotation = lst;
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables[2].Rows)
                        {
                            lstInfo.TotalPremiumEarned = Convert.ToInt64(dr["TotalPremiumEarned"]);
                            lstInfo.TotalPremiumRejected = Convert.ToInt64(dr["TotalPremiumRejected"]);
                            lstInfo.TotalPremiumPending = Convert.ToInt64(dr["TotalPremiumPending"]);
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
        public int GetPolicyIssuance(string DraftNo, out List<Quotation> lstQuotation)
        {
            int ReturnCode = 0;
            lstQuotation = null;

            try
            {
                SqlParameter[] Param = { new SqlParameter("@DraftNo", SqlDbType.NVarChar) };
                if (string.IsNullOrEmpty(DraftNo))
                {
                    DraftNo = string.Empty;
                }
                Param[0].Value = DraftNo;

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetPolicyIssuance", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        DTtoListConverter.ConvertTo(dtResult, out lstQuotation);
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

        public long EditQuotation(string UserName, long? QuotationId, out Quotation objQuo)
        {
            long returnCode = -1;
            objQuo = new Quotation();
            try
            {
                SqlParameter[] Param = { new SqlParameter("@QuotationId", SqlDbType.BigInt) };

                Param[0].Value = QuotationId;

                using (objDBEngine = new DBEngine())
                {
                    dtResult = new DataTable();
                    dtResult = objDBEngine.GetDataTable("pGetQuotation", Param);

                    if (dtResult.Rows.Count > 0)
                    {
                        DataRow row = dtResult.Rows[0];
                        objQuo = new Quotation
                        {
                            QuotationId = Convert.ToInt32(row["QuotationId"]),
                            DraftNo = row["DraftNo"].ToString(),
                            Status = row["Status"].ToString(),
                            PolicyNo = row["PolicyNo"].ToString(),
                            InsuranceCompanyName = row["InsuranceCompanyName"].ToString(),
                            ClientCompanyName = row["ClientCompanyName"].ToString(),
                            ScopeofCoverage = row["ScopeofCoverage"].ToString(),
                            Jurisdiction = row["Jurisdiction"].ToString(),
                            Address = row["Address"].ToString(),
                            City = row["City"].ToString(),
                            KYCDetails = row["KYCDetails"].ToString(),
                            BankName = row["BankName"].ToString(),
                            IFSCCode = row["IFSCCode"].ToString(),
                            Branch = row["Branch"].ToString(),
                            PeriodofInsurance = Convert.ToDateTime(row["PeriodofInsurance"]),
                            Category = row["Category"].ToString(),

                            TotalEmployees = Convert.ToInt32(row["TotalEmployees"]),
                            TotalDependents = Convert.ToInt32(row["TotalDependents"]),
                            TotalSpousedependents = Convert.ToInt32(row["TotalSpousedependents"]),
                            TotalChilddependents = Convert.ToInt32(row["TotalChilddependents"]),
                            PolicyCurrency = Convert.ToInt64(row["PolicyCurrency"]),


                            EligibilityCriteria = row["EligibilityCriteria"].ToString(),
                            SumAssured_SA = Convert.ToDecimal(row["SumAssured_SA"]),
                            AgeLimitforEmployees = Convert.ToInt32(row["AgeLimitforEmployees"]),
                            AgeLimitforDependentSpouse = Convert.ToInt32(row["AgeLimitforDependentSpouse"]),
                            AgeLimitforDependentChild = Convert.ToInt32(row["AgeLimitforDependentChild"]),


                            FCL = Convert.ToInt64(row["FCL"]),
                            ClientPremium = Convert.ToDecimal(row["ClientPremium"]),
                            InsuranceLevy = Convert.ToDecimal(row["InsuranceLevy"]),
                            PolicyFee = Convert.ToDecimal(row["PolicyFee"]),
                            TotalPremium = Convert.ToDecimal(row["TotalPremium"]),


                            BrokerName = row["BrokerName"].ToString(),
                            Brokerage = Convert.ToDecimal(row["Brokerage"]),
                            RICount = Convert.ToDecimal(row["RICount"]),

                            RI1in_Percentage = row["RI1in_Percentage"].ToString(),
                            RI2in_Percentage = row["RI2in_Percentage"].ToString(),
                            RI3in_Percentage = row["RI3in_Percentage"].ToString(),
                            RIRate = row["RIRate"].ToString(),
                            RIRetension = row["RIRetension"].ToString(),
                            AMIRetension = row["AMIRetension"].ToString(),

                            RIPremium = Convert.ToDecimal(row["RIPremium"]),
                            AMILoading = Convert.ToDecimal(row["AMILoading"]),
                            TotalEmployeescount = Convert.ToInt32(row["TotalEmployeescount"]),
                            EstimatedAnnualWages = Convert.ToDecimal(row["EstimatedAnnualWages"]),


                            AnnualRate = row["AnnualRate"].ToString(),
                            Premium_EAW_Rate = row["Premium_EAW_Rate"].ToString(),
                            Premium_Incl_levy_PolFeeRO = Convert.ToDecimal(row["Premium_Incl_levy_PolFeeRO"]),
                            VATonWCpremium = Convert.ToDecimal(row["VATonWCpremium"]),
                            TotalPremiumInclVAT = Convert.ToDecimal(row["TotalPremiumInclVAT"]),


                            BrokerPercentage = row["BrokerPercentage"].ToString(),
                            BrokerAmount = Convert.ToDecimal(row["BrokerAmount"])
                        };
                    }

                }

                returnCode = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public List<DataPoint> GetDBBarchartUW(int flag, string uname)
        {
            List<DataPoint> lst = new List<DataPoint>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "GetBarChartUW"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    //cmd.Parameters.AddWithValue("@flag", flag);
                    cmd.Parameters.AddWithValue("@UserName", uname);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new DataPoint()
                               {

                                   y = dr["MonthName"].ToString(),
                                   a = (decimal)dr["TotalPremiumEarned"],
                                   b = (decimal)dr["TotalPremiumRejected"],
                                   c = (decimal)dr["TotalPremiumPending"],

                               }).ToList();
                    }

                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public List<DataPoint> GetLinechartUWriter(int flag, string uname)
        {
            List<DataPoint> lst = new List<DataPoint>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetLineChartUW"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    //cmd.Parameters.AddWithValue("@flag", flag);
                    cmd.Parameters.AddWithValue("@UserName", uname);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new DataPoint()
                               {

                                   y = dr["MonthName"].ToString(),
                                   a = (long)dr["Pending"],
                                   b = (long)dr["Approved"],
                                   c = (long)dr["Rejected"],
                                   d = (long)dr["Total"],

                               }).ToList();
                    }

                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public List<ProducerMaster> GetUserList(string BussType)
        {
            List<ProducerMaster> lst = new List<ProducerMaster>();
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetProducerList"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@MasterType", BussType);

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lst = (from DataRow dr in ds.Tables[0].Rows
                               select new ProducerMaster()
                               {
                                   ProducerMasterID = (long)dr["Id"],
                                   ProducerName = dr["Name"].ToString(),
                                   EmailId = dr["EmailId"].ToString(),

                               }).ToList();
                    }
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lst;
        }
        public long GetClientMaster(out List<ClientCompanyMaster> lst)
        {
            long returnCode = -1;
            lst = null;
            try
            {

                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetClientCompanyMaster"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    DataSet ds = new DataSet();
                    sdaAdapter.Fill(ds);


                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DTtoListConverter.ConvertTo(ds.Tables[0], out lst);
                    }

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }
        public long GetGLWLPolicy(out Endorsement objEndo, string CompanyName)
        {
            long returnCode = -1;
            objEndo = new Endorsement();
            try
            {

                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "SP_GetGLWLPolicyNos"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        objEndo.GLPolicyNumber = (string)reader.GetValue(0);
                        objEndo.WCPolicyNumber = reader.GetValue(1).ToString();
                        objEndo.PolicyPeriod = reader.GetValue(2).ToString();

                    }
                    reader.Close();

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return returnCode;
        }

        #region EntomentPDF

        public long GetGL_WL_PDFdata(long EndorsementID, string PdfType, out List<Endorsement> lstEndorsement)
        {
            long returnCode = -1;
            lstEndorsement = null;
            try
            {

                using (SqlConnection con = new SqlConnection(objUtility.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "PGetGLWLPDFdata"
                    };

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@EndorsementId", EndorsementID);
                    cmd.Parameters.AddWithValue("@PdfType", PdfType);

                    SqlDataAdapter objSqlDataAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };

                    DataSet ds = new DataSet();
                    objSqlDataAdapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DTtoListConverter.ConvertTo(ds.Tables[0], out lstEndorsement);
                    }

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return returnCode;
        }

        #endregion
    }
}

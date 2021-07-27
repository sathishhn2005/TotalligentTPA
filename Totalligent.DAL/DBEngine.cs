using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Totalligent.Utilities;

namespace Totalligent.DAL
{
    public class DBEngine : IDisposable
    {
        #region Declaration
        DataTable objdt = null;
        DataSet objds = null;
        SqlConnection objConn;
        SqlCommand objCmd;
        SqlDataAdapter objSqlDataAdapter;
        readonly Utility objUtility = new Utility();
        #endregion


        public void Dispose()
        {
            if (ConnectionState.Open == objConn.State)
            {
                objConn.Close();
            }

        }
        public int DMLOperation(string SPname, SqlParameter[] arrParam)
        {
            int ReturnCode = 0;
            try
            {
                using (objConn = new SqlConnection(objUtility.GetConnectionString()))
                {
                    objConn.Open();
                    objCmd = new SqlCommand(SPname, objConn);
                    objCmd.CommandType = CommandType.StoredProcedure;

                    foreach (SqlParameter SPpram in arrParam)
                    {
                        objCmd.Parameters.Add(SPpram);
                    }

                    ReturnCode = objCmd.ExecuteNonQuery();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

                if (ConnectionState.Open == objConn.State)
                {
                    objConn.Close();
                }
            }

            return ReturnCode;

        }
        public DataTable GetDataTable(string SPname, SqlParameter[] arrParam)
        {
            objdt = new DataTable();
            try
            {
                using (objConn = new SqlConnection(objUtility.GetConnectionString()))
                {
                    objConn.Open();
                    objCmd = new SqlCommand(SPname, objConn);
                    objCmd.CommandType = CommandType.StoredProcedure;

                    if (arrParam != null)
                    {
                        foreach (SqlParameter SPpram in arrParam)
                        {
                            objCmd.Parameters.Add(SPpram);
                        }
                    }
                    objSqlDataAdapter = new SqlDataAdapter(objCmd);

                    using (objSqlDataAdapter = new SqlDataAdapter(objCmd))
                    {
                        objSqlDataAdapter.Fill(objdt);
                    }

                }

                return objdt;
            }
            catch (Exception ex)
            {
                // Write  Logger  error
                throw ex;
            }
            finally
            {

                if (ConnectionState.Open == objConn.State)
                {
                    objConn.Close();
                }
            }
        }
        public DataSet GetDataSet(string SPname, SqlParameter[] arrParam)
        {
            objds = new DataSet();
            try
            {
                using (objConn = new SqlConnection(objUtility.GetConnectionString()))
                {
                    objConn.Open();
                    objCmd = new SqlCommand(SPname, objConn);
                    objCmd.CommandType = CommandType.StoredProcedure;


                    if (arrParam != null)
                    {
                        foreach (SqlParameter SPpram in arrParam)
                        {
                            objCmd.Parameters.Add(SPpram);
                        }
                    }
                    objSqlDataAdapter = new SqlDataAdapter(objCmd);

                    using (objSqlDataAdapter = new SqlDataAdapter(objCmd))
                    {
                        objSqlDataAdapter.Fill(objds);
                    }

                }

                return objds;
            }
            catch (Exception ex)
            {
                // Write  Logger  error
                throw ex;
            }
            finally
            {

                if (ConnectionState.Open == objConn.State)
                {
                    objConn.Close();
                }
            }
        }


    }
}

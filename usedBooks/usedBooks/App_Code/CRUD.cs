using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for CRUD
/// </summary>
public class CRUD
{
   // SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    DataTable dt;
    SqlDataAdapter adp;
    DataSet ds;
    DataView dv;

    static public string DB_CONN_ST = WebConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString.ToString();
    private string _connectionString = WebConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString.ToString();
    static public string conStr = WebConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString;
    public SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString);

    //DataSet ds;
    public CRUD()
    {
          //
        // TODO: Add constructor logic here
        //
    }
    
    // Insert, Update, Delete  passing individual field .... transition 
    //public bool contactInsert(string name, string email, string cellPhone)
    //{
    //    SqlConnection con = new SqlConnection(_connectionString);
    //    SqlCommand cmd = new SqlCommand(@" Insert   student(name,email,cellPhone) 
    //                                    values (@name,@email,@cellPhone)", con);
    //    cmd.Parameters.AddWithValue("@name", name);
    //    cmd.Parameters.AddWithValue("@email", email);
    //    cmd.Parameters.AddWithValue("@cellPhone", cellPhone);
    //    using (con)
    //    {
    //        con.Open();
    //        int x = cmd.ExecuteNonQuery();
    //        if (x >= 1)
    //            return true;
    //        else
    //            return false;
    //    }
    //}
    //public bool contactUpdate(int studentId, string name, string email, string cellPhone) // passing individual field
    //{
    //    SqlConnection con = new SqlConnection(_connectionString);
    //    SqlCommand cmd = new SqlCommand(@"UPDATE student
    //                                SET name=@name,email=@email , cellPhone = @cellPhone
    //                                WHERE studentId=@studentId", con);
    //    cmd.Parameters.AddWithValue("@name", name);
    //    cmd.Parameters.AddWithValue("@email", email);
    //    cmd.Parameters.AddWithValue("@cellPhone", cellPhone);
    //    cmd.Parameters.AddWithValue("@studentId", studentId);
    //    using (con)
    //    {
    //        con.Open();
    //        int x = cmd.ExecuteNonQuery();
    //        if (x >= 1)
    //            return true;
    //        else
    //            return false;
    //    }
    //}
    //public bool contactDelete(int studentId)
    //{ 
    //    SqlConnection con = new SqlConnection(_connectionString);
    //    SqlCommand cmd = new SqlCommand(@"  delete student where studentId = @studentId", con);
    //    cmd.Parameters.AddWithValue("@studentId", studentId);
    //    using (con)
    //    {
    //        con.Open();
    //        int x = cmd.ExecuteNonQuery();
    //        if (x >= 1)
    //            return true;
    //        else
    //            return false;
    //    }
    //}
    public DataSet getDsPassSql(string mySql)
    {
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(mySql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        using (con)
        {
            con.Open();
            da.Fill(ds);
            return ds;
        }
    }
    public DataSet getDataSet(string mySql)
    {
        DataSet ds;
        using (SqlConnection cn = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(mySql, cn))
            {

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                using (cn)
                {
                    cn.Open();
                    da.Fill(ds);
                    return ds;
                }
            }
        }
    }

    public SqlDataReader getDrPassSql(string mySql)
    {
        SqlDataReader dr;
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(@mySql, con);
            con.Open();
            dr = cmd.ExecuteReader();
            return dr;
    }

    // Best approach to CRUD via passing sql and dictionary object 
    public bool authenticateUser(string mySql, Dictionary<string, object> formValues)
    {
        bool blnAuthenticate = false;
        SqlDataReader dr;
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(mySql, con);
        foreach (KeyValuePair<string, object> p in formValues)
        {
            // can put validation here to see if the value is empty or not 
            cmd.Parameters.AddWithValue(p.Key, p.Value);
        }
        using (con)
        {
            con.Open();
            dr = cmd.ExecuteReader();
            blnAuthenticate = dr.Read();// if has row, true, else false
            dr.Close();
            con.Close();
            return blnAuthenticate;
        }
    }
    public SqlDataReader getDrPassSqlDic(string mySql, Dictionary<string, object> formValues)
    {
        SqlDataReader dr;
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(mySql, con);
        foreach (KeyValuePair<string, object> p in formValues)
        {
            // can put validation here to see if the value is empty or not 
            cmd.Parameters.AddWithValue(p.Key, p.Value);
        }
            con.Open();
            dr = cmd.ExecuteReader(CommandBehavior.Default);
            //  dr.Close();
            //  con.Close();  // closing will cause an error
            return dr;
    }
    public DataSet getDataSetPassSqlDic(string mySql, Dictionary<string, object> formValues)
    {
        DataSet ds;
        using (SqlConnection cn = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(mySql, cn))
            {
                foreach (KeyValuePair<string, object> p in formValues)
                {
                    // can put validation here to see if the value is empty or not 
                    cmd.Parameters.AddWithValue(p.Key, p.Value);
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                 ds = new DataSet();
                using (cn)
                {
                    cn.Open();
                    da.Fill(ds);
                    return ds;
                }
            }
        }
    }

    public int InsertUpdateDeleteViaSqlDic(string sqlStatement, Dictionary<string, object> InputParaList)
    {
        int rowAffected;
        try
        {
            using (SqlConnection cn = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatement, cn))
                {
                    cmd.CommandType = CommandType.Text;
                    foreach (KeyValuePair<string, object> p in InputParaList)
                    {
                        cmd.Parameters.AddWithValue(p.Key, p.Value);
                    }
                    using (cn)
                    {
                        cn.Open();
                        rowAffected = cmd.ExecuteNonQuery();
                    }
                }
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            throw ex;
        }
        //////            return new List<Dictionary<string, object>>();
        ////return new List<DataTable>();
        return rowAffected;
    }
    public int InsertUpdateDelete(string sqlStatement,  int myPk)
    { // added on 3/8/2015
        int rowAffected;
        try
        {
            using (SqlConnection cn = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatement, cn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id",myPk);
                   
                    cn.Open();
                    rowAffected = cmd.ExecuteNonQuery();
                }
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            throw ex;
        }
        //////            return new List<Dictionary<string, object>>();
        ////return new List<DataTable>();
        return rowAffected;
    }
    public int InsertUpdateDeleteViaSqlDicRtnIdentity(string mySql, Dictionary<string, object> myPara)
    {
        Int32 newIdentityId = 000;
        try
        {
            using (SqlCommand cmd = new SqlCommand(mySql, con))
            {
                cmd.CommandType = CommandType.Text;
                foreach (KeyValuePair<string, object> p in myPara)
                {
                    cmd.Parameters.AddWithValue(p.Key, p.Value);
                }
                using (con)
                {
                    con.Open();
                    newIdentityId = (Int32.Parse(cmd.ExecuteScalar().ToString()));
                }
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            throw ex;
        }
        //   return new List<Dictionary<string, object>>(); ////return new List<DataTable>();
        return newIdentityId;
    }
    // select in via DataReader and DataSet...... transition
    public SqlDataReader drContact()
    {
        SqlDataReader dr;
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(@"SELECT studentId,name,email,cellPhone from student", con);
            con.Open();
            dr = cmd.ExecuteReader();
            return dr;
        // note,  I cannot used using in dr, because it will close the connection 
    }
    public DataSet dsContact()
    {
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(@"SELECT studentId,name,email,cellPhone from student", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        using (con)
        {
            con.Open();
            da.Fill(ds);
            return ds;
        }
    }
    //public SqlDataReader passSqlGetDr2(string mySql, string myWhereValue)
    //{
    //    string ActiveSql = mySql + " where  " + myWhereValue;
    //    SqlDataReader dr;
    //    SqlConnection con = new SqlConnection(_connectionString);
    //    SqlCommand cmd = new SqlCommand(@mySql, con);
    //   // cmd.Parameters.AddWithValue(whereClause, whereClause);
    //    con.Open();
    //    dr = cmd.ExecuteReader();
    //    return dr;
    //}

    // passing object instead of single variables
    //public bool contactInsert(string mySql, object myObj)
    //{
    //    SqlConnection con = new SqlConnection(_connectionString);
    //    SqlCommand cmd = new SqlCommand(mySql, con);
    //    cmd.Parameters.AddWithValue("@name", name);
    //    cmd.Parameters.AddWithValue("@email", email);
    //    cmd.Parameters.AddWithValue("@cellPhone", cellPhone);
    //    using (con)
    //    {
    //        con.Open();
    //        int x = cmd.ExecuteNonQuery();
    //        if (x >= 1)
    //            return true;
    //        else
    //            return false;
    //    }
    //}

    //    #region  Ali  you must do this tonight 
    //    public bool Insert(string mySql)
    //    {
    //        SqlConnection con = new SqlConnection(_connectionString);
    //        SqlCommand cmd = new SqlCommand(@" Insert   student(name,email,cellPhone) 
    //                                        values (@name,@email,@cellPhone)", con);
    //        cmd.Parameters.AddWithValue("@name", name);
    //        cmd.Parameters.AddWithValue("@email", email);
    //        cmd.Parameters.AddWithValue("@cellPhone", cellPhone);
    //        using (con)
    //        {
    //            con.Open();
    //            int x = cmd.ExecuteNonQuery();
    //            if (x >= 1)
    //                return true;
    //            else
    //                return false;
    //        }
    //    }

    //    public bool Update(string mySql, employee myObject ) // passing individual field via object
    //    {
    //        SqlConnection con = new SqlConnection(_connectionString);
    //        SqlCommand cmd = new SqlCommand(@"UPDATE student
    //                                    SET name=@name,email=@email , cellPhone = @cellPhone
    //                                    WHERE studentId=@studentId", con);
    //        cmd.Parameters.AddWithValue("@name", myObject.name);
    //        cmd.Parameters.AddWithValue("@city", myObject.city);
    //        cmd.Parameters.AddWithValue("@cellPhone", cellPhone);
    //        cmd.Parameters.AddWithValue("@studentId", studentId);
    //        using (con)
    //        {
    //            con.Open();
    //            int x = cmd.ExecuteNonQuery();
    //            if (x >= 1)
    //                return true;
    //            else
    //                return false;
    //        }
    //    }
    //    public bool Delete(string mySql, int myPk)
    //    {
    //        SqlConnection con = new SqlConnection(_connectionString);
    //        SqlCommand cmd = new SqlCommand(@"  delete student where studentId = @studentId", con);
    //        cmd.Parameters.AddWithValue("@studentId", myPk);
    //        using (con)
    //        {
    //            con.Open();
    //            int x = cmd.ExecuteNonQuery();
    //            if (x >= 1)
    //                return true;
    //            else
    //                return false;
    //        }
    //    }

    //    #endregion

    // this is the one to use in production 5/27/2014

    // select via DataReader and DataSet passing sql as par.... transition

    /// <summary>
    ///  used to get latest counter for each category to be used for auto generation per cat
    /// </summary>
    public string getPk(string mySql, string ddlSelectedCategory, int ddlSelectedCategoryValue)
    {
        SqlConnection con = new SqlConnection(_connectionString);
        SqlCommand cmd = new SqlCommand(@mySql, con);
        cmd.Parameters.AddWithValue(ddlSelectedCategory, ddlSelectedCategoryValue);//@counterCategoryId    
        using (con)
        {
            con.Open();
            return cmd.ExecuteScalar().ToString();
        }
    }

    #region Calling Stored Procedure
    public DataSet select(string storedProcedure)
    {
        try
        {

            cmd = new SqlCommand();
            ds = new DataSet();
            adp = new SqlDataAdapter();
            _connectionString = CRUD.DB_CONN_ST;//WebConfigurationManager.ConnectionStrings["conStrABC"].ConnectionString.ToString();
            con = new SqlConnection(_connectionString);  // ConnectionString changed to Global.DB_CONN_STR
            cmd.CommandText = storedProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            if (cmd.Connection.State == ConnectionState.Closed)
                using (con)
                {
                    cmd.Connection.Open();
                    //foreach (KeyValuePair<string, object> spData in param)
                    //{
                    //    cmd.Parameters.AddWithValue(spData.Key, spData.Value);
                    //}
                    //adp.SelectCommand = cmd;
                    adp.Fill(ds);
                    return ds;
                }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            ds.Dispose();
            cmd.Connection.Close();
            cmd.Dispose();
        }
        return ds;
    }
    public DataSet select(string storedProcedure, Dictionary<string, object> spInputPara)
    {
        try
        {

            cmd = new SqlCommand();
            ds = new DataSet();
            adp = new SqlDataAdapter();
            _connectionString = CRUD.DB_CONN_ST;//WebConfigurationManager.ConnectionStrings["conStrABC"].ConnectionString.ToString();
            con = new SqlConnection(_connectionString);  // ConnectionString changed to Global.DB_CONN_STR
            cmd.CommandText = storedProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            if (cmd.Connection.State == ConnectionState.Closed)
                using (con)
                {
                    cmd.Connection.Open();
                    foreach (KeyValuePair<string, object> spData in spInputPara)
                    {
                        cmd.Parameters.AddWithValue(spData.Key, spData.Value);
                    }
                    //adp.SelectCommand = cmd;
                    adp.Fill(ds);
                    return ds;
                }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            ds.Dispose();
            cmd.Connection.Close();
            cmd.Dispose();
        }
        return ds;
    }
    public string checkUserExist(string storedProcedure, Dictionary<string, object> spInputPara)
    {
        string strUserName = "";
        try
        {
            cmd = new SqlCommand();
            adp = new SqlDataAdapter();
            _connectionString = CRUD.DB_CONN_ST;//WebConfigurationManager.ConnectionStrings["conStrABC"].ConnectionString.ToString();
            con = new SqlConnection(_connectionString);  // ConnectionString changed to Global.DB_CONN_STR
            cmd.CommandText = storedProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            if (cmd.Connection.State == ConnectionState.Closed)
                using (con)
                {
                    cmd.Connection.Open();
                    foreach (KeyValuePair<string, object> spData in spInputPara)
                    {
                        cmd.Parameters.AddWithValue(spData.Key, spData.Value);
                    }
                    strUserName =  cmd.ExecuteScalar().ToString();
                   
                }
        }
        catch (Exception ex)
        {

        }
        finally
        {
             cmd.Connection.Close();
            cmd.Dispose();
        }
        return strUserName;
    }
    #endregion
   
#region Calling Stored Procedure
    public DataSet getDsViaSp(string storedProcedure)
    {
        SqlConnection con = new SqlConnection(conStr);  //conStrProd
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet ds = new DataSet();
        try
        {
            cmd.CommandText = storedProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            if (cmd.Connection.State == ConnectionState.Closed)
                using (con)
                {
                    cmd.Connection.Open();
                    //foreach (KeyValuePair<string, object> spData in param)
                    //{
                    //    cmd.Parameters.AddWithValue(spData.Key, spData.Value);
                    //}
                    adp.SelectCommand = cmd;
                    adp.Fill(ds);
                    return ds;
                }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cmd.Dispose();
            ds.Dispose();
        }
        return ds;
    }
    public DataSet getDsViaSpDic(string storedProcedure, Dictionary<string, object> spInputPara)
    {
        SqlConnection con = new SqlConnection(conStr);  //conStrProd
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet ds = new DataSet();
        try
        {
            cmd.CommandText = storedProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            if (cmd.Connection.State == ConnectionState.Closed)
                using (con)
                {
                    cmd.Connection.Open();
                    foreach (KeyValuePair<string, object> spData in spInputPara)
                    {
                        cmd.Parameters.AddWithValue(spData.Key, spData.Value);
                    }
                    adp.SelectCommand = cmd;
                    adp.Fill(ds);
                    return ds;
                }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            cmd.Dispose();
            ds.Dispose();
        }
        return ds;
    }
    #endregion
}


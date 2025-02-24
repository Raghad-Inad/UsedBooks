using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class userManagement : System.Web.UI.Page
    {
        String connectionString = @"Data Source=DESKTOP-TDJ2PRH\SQLEXPRESS;Initial Catalog=usedBooks;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populategvUserManagement();

            }

        }
        void populategvUserManagement()
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                CRUD myCrud = new CRUD();
                string mySql = @" select * from [user] ";
                DataSet ds = myCrud.getDataSet(mySql);
                Session["userdt"] = ds.Tables[0];
                gvUserManagement.DataSource = Session["userdt"];
                gvUserManagement.DataBind();
            }
        }


        protected void gvUserManagement_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gvUserManagement.EditIndex = e.NewEditIndex;
            populategvUserManagement();
        }


        protected void gvUserManagement_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                CRUD mycrud = new CRUD();
                String mySql = @"Update [user] set userFullName=@userFullName, userName=@userName, userEmail=@userEmail,userPhone=@userPhone,userPassword=@userPassword WHERE userId=@userId";
                SqlCommand sqlCmd = new SqlCommand(mySql, con);
                sqlCmd.Parameters.AddWithValue("@userFullName", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserFullName") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userName", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserName") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userEmail", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserEmail") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userPhone", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserPhone") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userPassword", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserPassword") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userId", Convert.ToInt32(gvUserManagement.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                gvUserManagement.EditIndex = -1;
                populategvUserManagement();

            }
        }

        protected void gvUserManagement_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                CRUD mycrud = new CRUD();
                String mySql = @"Delete from [user] where userId=@userId";
                SqlCommand sqlCmd = new SqlCommand(mySql, con);
                sqlCmd.Parameters.AddWithValue("@userId", Convert.ToInt32(gvUserManagement.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                populategvUserManagement();
            }
        }
    }
}
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["role"] == "admin")
                {
                    populategvUserManagement();
                }
                else
                    Response.Redirect("AdminloginPage.aspx");


            }

        }
        void populategvUserManagement()
        {

            CRUD myCrud = new CRUD();
            string mySql = @" select * from [user] ";
            DataSet ds = myCrud.getDataSet(mySql);
            Session["userdt"] = ds.Tables[0];
            gvUserManagement.DataSource = Session["userdt"];
            gvUserManagement.DataBind();

        }


        protected void gvUserManagement_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gvUserManagement.EditIndex = e.NewEditIndex;
            populategvUserManagement();
        }


        protected void gvUserManagement_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            CRUD mycrud = new CRUD();

            string mySql = @"Update [user] set userFullName=@userFullName, userName=@userName, userEmail=@userEmail,userPhone=@userPhone,userPassword=@userPassword WHERE userId=@userId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();

            myPara.Add("@userFullName", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserFullName") as TextBox).Text.Trim());
            myPara.Add("@userName", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserName") as TextBox).Text.Trim());
            myPara.Add("@userEmail", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserEmail") as TextBox).Text.Trim());
            myPara.Add("@userPhone", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserPhone") as TextBox).Text.Trim());
            myPara.Add("@userPassword", (gvUserManagement.Rows[e.RowIndex].FindControl("txtuserPassword") as TextBox).Text.Trim());
            myPara.Add("@userId", Convert.ToInt32(gvUserManagement.DataKeys[e.RowIndex].Value.ToString()));
            int ff = mycrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            gvUserManagement.EditIndex = -1;
            populategvUserManagement();


        }

        protected void gvUserManagement_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @" select * from [user] where (UserId  in (select UserId from [book]) OR 
                               UserId  in (select UserId from [Order])) and userId=@userId ";
            Dictionary<string, object> myPara = new Dictionary<string, object>();

            myPara.Add("@userId", Convert.ToInt32(gvUserManagement.DataKeys[e.RowIndex].Value.ToString()));
            DataTable dt = myCrud.getDTPassSqlDic(mySql,myPara);
            if (dt.Rows.Count != 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                   " alert('Cannot dalete this User'); ", true);
                 return;
            }
            else
            {
                
                    string mySql3 = @"Delete from [user] where userId=@userId";
                    Dictionary<string, object> myPara3 = new Dictionary<string, object>();

                    myPara3.Add("@userId", Convert.ToInt32(gvUserManagement.DataKeys[e.RowIndex].Value.ToString()));
                    int ff = myCrud.InsertUpdateDeleteViaSqlDic(mySql3, myPara3);
                
            }
            gvUserManagement.EditIndex = -1;
            populategvUserManagement();

        }
    }
}
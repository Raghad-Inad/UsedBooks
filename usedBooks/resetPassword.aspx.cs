using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class resetPassword : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString;
        string guideValue;
        DataTable dt = new DataTable();
        int userId;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                guideValue = Request.QueryString["userId"];
                if (guideValue != null)
                {

                    CRUD myCrud = new CRUD();
                    string mySql = @"select * from [user] where UserId =" + guideValue + "";

                    DataTable dt = myCrud.getDT(mySql);

                    if (dt.Rows.Count != 0)
                    {
                        userId = Convert.ToInt32(dt.Rows[0][0]);
                    }
                    else
                    {
                        Response.Write("<script>alert('Your password reset link is expired or invalid! Try Again.');</script>");
                    }

                    txtclientPassword.Visible = true;
                    txtConfirmPassword.Visible = true;
                    btnSubmit.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Your password reset link is expired or invalid! Try Again.');</script>");
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("update [user] set userPassword='" + txtclientPassword.Text + "' where userId='" + Request.QueryString["userId"] + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();

                Panelsuccess.Visible = true;
                PanelError.Visible = false;



            }
        }
    }
}
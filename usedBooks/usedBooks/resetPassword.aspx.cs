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
            //this.Master.FindControl("linkAboutUs").Visible = false;
            //this.Master.FindControl("linkServices").Visible = false;
            //this.Master.FindControl("linkTeam").Visible = false;
            //this.Master.FindControl("linkfaq").Visible = false;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                guideValue = Request.QueryString["userId"];
                if (guideValue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from forgotPass where forgetGuide='" + guideValue + "'", con);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        userId = Convert.ToInt32(dt.Rows[0][2]);
                    }
                    else
                    {
                        Response.Write("<script>alert('Your password reset link is expired or invalid! Try Again.');</script>");
                    }
                }
                //else
                //{
                //    Response.Redirect("~/forgotPasswordPage.aspx");
                //}
            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    txtNewPassword.Visible = true;
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
            if (txtNewPassword.Text != "" && txtConfirmPassword.Text != "" && txtNewPassword.Text == txtConfirmPassword.Text)
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("update user set userPassword='" + txtNewPassword.Text + "' where userId='" + userId + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("delete from forgotPass where userId='" + userId + "'", con);
                    cmd2.ExecuteNonQuery();
                    lblOutput.Text = "Succeed Operation! Password Successfully Changed.";
                    lblOutput.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                lblOutput.Text = "Failed Operation! An entry is required or has an invalid value. Please correct and try again.";
                lblOutput.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}
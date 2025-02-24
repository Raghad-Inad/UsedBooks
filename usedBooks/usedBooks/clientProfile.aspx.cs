using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class clientProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //this.Master.FindControl("linkAboutUs").Visible = false;
            //this.Master.FindControl("linkServices").Visible = false;
            //this.Master.FindControl("linkTeam").Visible = false;
            //this.Master.FindControl("linkfaq").Visible = false;
            //this.Master.FindControl("lbtnEnglish").Visible = false;
            //this.Master.FindControl("lbtnArabic").Visible = false;


            //try
            //{
            //    if (Session["userEmail"].ToString() == "" || Session["userEmail"] == null)
            //    {
            //        Response.Write("<script>alert('Session Expired Login Again!');</script>");
            //        Response.Redirect("~/loginPage.aspx");
            //    }
            //    else
            //    {
            //        if (!Page.IsPostBack)
            //        {
            //            getUserPersonalDetails();
            //        }
            //        else
            //        {
            //            //
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('Session Expired Login Again!');</script>");
            //    Response.Redirect("~/loginPage.aspx");
            //}

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ValidateEmpty(txtuserFullName.Text) || ValidateEmpty(txtuserName.Text) || ValidateEmpty(txtuserEmail.Text) || ValidateEmpty(ddlUniversity.SelectedValue) || ValidateEmpty(txtuserPhone.Text))
            {
                lblOutput.Text = "Please fill  all the fields correctly!";
                lblOutput.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                int PK = int.Parse(txtUserId.Text);
                CRUD myCrud = new CRUD();
                string mySql = @"Update user set userFullName=@userFullName, userName=@userName, uniId=@uniId , userEmail=@userEmail,userPhone=@userPhone 
                                WHERE userId=@userId";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@userId", PK);
                myPara.Add("@userFullName", txtuserFullName.Text);
                myPara.Add("@userName", txtuserName.Text);
                myPara.Add("@userEmail", txtuserEmail.Text);
                myPara.Add("@userPhone", txtuserPhone.Text);
                myPara.Add("@uniId", ddlUniversity.SelectedValue);
                int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
                if (rtn >= 1)
                {
                    lblOutput.Text = "Success operation! Your information has been updated.";
                    lblOutput.ForeColor = System.Drawing.Color.Green;
                    sendEmail();
                }
                else
                {
                    lblOutput.Text = "Failed operation! Please Try Again.";
                    lblOutput.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        private bool ValidateEmpty(string empty)
        {
            if (empty == "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void sendEmail()
        {
            try
            {
                MailMessage ms = new MailMessage();
                ms.From = new MailAddress("area3846@gmail.com");
                ms.To.Add(txtuserEmail.Text);
                ms.Subject = "used books!";
                ms.Body = "Thank you for updating your profile with Used Books family!";
                //
                SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
                sc.Port = 587;
                sc.Credentials = new NetworkCredential("area3846@gmail.com", "bjdlioxkagrmleuy");
                sc.EnableSsl = true;
                sc.Send(ms);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                else
                {
                    //
                }
                SqlCommand cmd = new SqlCommand(@"select userId,userFullName,userName, uniId, userPassword,userEmail,userPhone
                                                        from user where userEmail= '" + Session["userEmail"] + "'", con);
                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                if (dtbl.Rows.Count > 0)
                {
                    txtUserId.Text = dtbl.Rows[0]["userId"].ToString();
                    txtuserFullName.Text = dtbl.Rows[0]["userFullName"].ToString();
                    txtuserName.Text = dtbl.Rows[0]["userName"].ToString();
                    ddlUniversity.SelectedValue = dtbl.Rows[0]["uniId"].ToString();
                    txtOldPassword.Text = dtbl.Rows[0]["userPassword"].ToString();
                    txtuserEmail.Text = dtbl.Rows[0]["userEmail"].ToString();
                    txtuserPhone.Text = dtbl.Rows[0]["userPhone"].ToString();

                }
                else
                {
                    //
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if (ValidateEmpty(txtNewPassword.Text))
            {
                lblAjax.Text = "Please fill the new password field correctly!";
                lblAjax.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string mySql = @"update user set userPassword = @userPassword
                                       where userId = @userId";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@userId", txtUserId.Text);
                myPara.Add("@userPassword", txtNewPassword.Text);
                CRUD myCrud = new CRUD();
                int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
                if (rtn >= 1)
                {
                    lblAjax.Text = "Success operation! Your profile has been updated.";
                    lblAjax.ForeColor = System.Drawing.Color.Green;
                    sendEmail();
                }
                else
                {
                    lblAjax.Text = "Failed operation! Please Try Again.";
                    lblAjax.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (ChBoxDelete.Checked == true)
            {
                CRUD myCrud = new CRUD();
                string mySql = @"delete user where userId = @userId";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@userId", int.Parse(txtUserId.Text));
                int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
                if (rtn >= 1)
                {
                    lblOutput.Text = "Success operation! Your account has been deleted.";
                    lblOutput.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblOutput.Text = "Failed operation! Please Try Again.";
                    lblOutput.ForeColor = System.Drawing.Color.Red;
                }
                Session["role"] = null;
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                lblOutput.Text = "Checkbox to approve account removal!";
                lblOutput.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected override void InitializeCulture()
        {
            base.InitializeCulture();
            if (Session["culture"] != null)
            {
                CultureInfo ci = new CultureInfo(Session["culture"].ToString());
                Thread.CurrentThread.CurrentCulture = ci;
                Thread.CurrentThread.CurrentUICulture = ci;
            }
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            switch (btn.ID)
            {
                case ("lbtnEnglish"):
                    Session["culture"] = "en-US";
                    Server.Transfer(Request.Url.PathAndQuery, false);
                    break;
                case ("lbtnArabic"):
                    Session["culture"] = "ar-SA";
                    Server.Transfer(Request.Url.PathAndQuery, false);
                    break;
            }
        }

    }
}
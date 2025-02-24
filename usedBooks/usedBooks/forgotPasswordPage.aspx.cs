using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class forgotPasswordPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //this.Master.FindControl("linkAboutUs").Visible = false;
            //this.Master.FindControl("linkServices").Visible = false;
            //this.Master.FindControl("linkTeam").Visible = false;
            //this.Master.FindControl("linkfaq").Visible = false;
            //this.Master.FindControl("linkLanguage").Visible = false;

        }
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            try
            {
                String guide = Guid.NewGuid().ToString();
                int Pk = 0;
                string Email = "";
                CRUD myCrud = new CRUD();
                string mySql = @"select * from user where userEmail =@userEmail";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@userEmail", txtuserEmail.Text);

                SqlDataReader dr = myCrud.getDrPassSqlDic(mySql, myPara);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Pk = int.Parse(dr["userId"].ToString());
                        Email = dr["userEmail"].ToString();
                        // send email 
                        sendEmail(Pk, Email, guide);
                        insertEmailGuide(Pk, Email, guide);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void insertEmailGuide(int Id, string Email, string Guide)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"insert into forgotPass(forgetGuide, userId) values (@forgetGuide, @userId)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@forgetGuide", Guide);
            myPara.Add("@userId", Id);
            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Password reset instructions have been sent.";
                lblOutput.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblOutput.Text = "Failed Operation! Please Try Again";
                lblOutput.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void sendEmail(int intId, string strEmail, string strGuide)
        {
            try
            {
                String EmailBody = "Hello " + strEmail + ",<br/><br/> Click on the provided link to reset your password. <br/><br/>  http://localhost:51515//resetPassword.aspx?userId=" + strGuide;
                MailMessage PassRecMail = new MailMessage("area3846@gmail.com", strEmail);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";
                PassRecMail.Priority = MailPriority.High;
                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                SMTP.UseDefaultCredentials = false;
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "area3846@gmail.com",
                    Password = "bjdlioxkagrmleuy"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);
                lblOutput.Text = "Password reset instructions have been sent, Check your email to reset your password.";
                lblOutput.ForeColor = System.Drawing.Color.Green;
                txtuserEmail.Text = "";
            }
            catch (Exception)
            {
                lblOutput.Text = "Failed Operation! Please Try Again";
                lblOutput.ForeColor = System.Drawing.Color.Red;
            }

        }


    }
}
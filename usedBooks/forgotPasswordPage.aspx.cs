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
           

        }
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            try
            {
                String guide = Guid.NewGuid().ToString();
                int Pk = 0;
                string Email = "";
                CRUD myCrud = new CRUD();
                string mySql = @"select * from [user] where userEmail ='"+ txtuserEmail.Text + "'";
               
                SqlDataReader dr = myCrud.getDrPassSql(mySql);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Pk = int.Parse(dr["userId"].ToString());
                        Email = dr["userEmail"].ToString();
                        // send email 
                        sendEmail(Pk, Email, Pk.ToString());
                        Panelsuccess.Visible = true;
                        PanelError.Visible = false;
                    }
                }
                else
                {
                    PanelError.Visible = true;
                    Panelsuccess.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
       protected void sendEmail(int intId, string strEmail, string strGuide)
        {
            try
            {
                String EmailBody = "Hello " + strEmail + ",<br/><br/> Click on the provided link to reset your password. <br/><br/>  http://localhost:59692/resetPassword?userId=" + strGuide;
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
               
                txtuserEmail.Text = "";
            }
            catch (Exception)
            {
                
            }

        }


    }
}
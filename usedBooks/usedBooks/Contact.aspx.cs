using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using usedBooks.App_Code;

namespace usedBooks
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.FindControl("linkAboutUs").Visible = false;
            //this.Master.FindControl("linkServices").Visible = false;
            this.Master.FindControl("linkfaq").Visible = false;
        }

        protected void btnSendMailViaMailMgr_Click(object sender, EventArgs e)
        {

            if (common.IsNullOrEmptyControlObj(txtSenderEmail, lblOutput, "Please fill  your email !") == true) return;
            if (common.IsNullOrEmptyControlObj(txtSubject, lblOutput, "Please fill the Subject !") == true) return;
            if (common.IsNullOrEmptyControlObj(txtBody, lblOutput, "Please fill email body !") == true) return;

            MailMessage ms = new MailMessage();
            ms.From = new MailAddress("area3846@gmail.com");
            ms.To.Add(txtSenderEmail.Text);
            ms.Subject = txtSubject.Text;
            ms.Body = txtBody.Text;

            string myFrom = txtSenderEmail.Text;
            string myBody = "";
            myBody += (string.IsNullOrEmpty(Session["email"] as string) ? myFrom + "\n\n" : "");
            myBody += txtBody.Text;
            myBody += @"


       Regards,

        Used Book Website.
        Students of UHB.
        Hafr Al-Batin.
        Kingdom Of Saudi Arabia.";

            SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
            sc.Port = 587;
            sc.Credentials = new NetworkCredential("area3846@gmail.com", "bjdlioxkagrmleuy");
            sc.EnableSsl = true;
            sc.Send(ms);

            Response.Write("<script>alert('" + "the email has been send successfully" + "');</script>");
            //common.PostMsg(lblOutput, sc, "green");

            //sendEmail();  // step 1
        }
        // protected void sendEmail()
        // {

        //     string rtn = "";
        //     if (common.IsNullOrEmptyControlObj(txtSenderEmail, lblOutput, "Please fill  your email !") == true) return;
        //     if (common.IsNullOrEmptyControlObj(txtSubject, lblOutput, "Please fill the Subject !") == true) return;
        //     if (common.IsNullOrEmptyControlObj(txtBody, lblOutput, "Please fill email body !") == true) return;

        //     // catpure user input
        //     string myTo = "";
        //     // catpure user input
        //     if (!string.IsNullOrEmpty(Session["email"] as string))
        //     {
        //         myTo = (Session["email"].ToString());
        //     }
        //     else
        //     {
        //         myTo = "area3846@gmail.com";
        //     }
        //     string myFrom = txtSenderEmail.Text;
        //     string mySubject = txtSubject.Text;
        //     string myBody = "";
        //     myFrom = txtSenderEmail.Text;
        //     mySubject = txtSubject.Text;
        //     myBody = txtBody.Text;

        //     myBody += (string.IsNullOrEmpty(Session["email"] as string) ? myFrom + "\n\n" : "");
        //     myBody += txtBody.Text;
        //     myBody += @"


        //Regards,

        // Used Book Website.
        // Students of UHB.
        // Hafr Al-Batin.
        // Kingdom Of Saudi Arabia.";
        //     try
        //     {
        //         //// 2. setp ...  pass uploaded list to email server to be sent to the admin
        //         mailMgr myMailmgr = new mailMgr();
        //         rtn = myMailmgr.sendEmailViaGmail();  // to notify user via eamil done mar 2020
        //         common.PostMsg(lblOutput, rtn, "green");
        //     }
        //     catch (Exception ex)
        //     {
        //         lblOutput.Text = ex.Message.ToString();
        //     }
        // }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            common.clearControl(txtSenderEmail);
            common.clearControl(txtSubject);
            common.clearControl(txtBody);
            common.clearControl(lblOutput);
            Session["email"] = null;
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
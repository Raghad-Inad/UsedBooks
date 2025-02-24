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
         
        }

        protected void btnSendMailViaMailMgr_Click(object sender, EventArgs e)
        {

            if (common.IsNullOrEmptyControlObj(txtSenderEmail, lblOutput, "Please fill  your email !") == true) return;
            if (common.IsNullOrEmptyControlObj(txtSubject, lblOutput, "Please fill the Subject !") == true) return;
            if (common.IsNullOrEmptyControlObj(txtBody, lblOutput, "Please fill email body !") == true) return;

            string body = @"<body> Email: " + txtSenderEmail.Text + "<br>Subject: " + txtSubject.Text + "<br> " +
                            "Message : " + txtBody.Text + " <br>Regards,<br>" +
                            "Used Book Website.<br>" +
                            "Students of UHB.< br > " +
                            "Hafr Al-Batin.<br>" +
                            "Kingdom Of Saudi Arabia. </body>";

            MailMessage ms = new MailMessage();
            ms.From = new MailAddress("area3846@gmail.com");
            ms.To.Add("area3846@gmail.com");
            ms.Subject = txtSubject.Text;
            ms.IsBodyHtml = true;
            ms.Body = body;


            SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
            sc.Port = 587;
            sc.Credentials = new NetworkCredential("area3846@gmail.com", "bjdlioxkagrmleuy");
            sc.EnableSsl = true;
            sc.Send(ms);

            Panelsuccess.Visible=true;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            common.clearControl(txtSenderEmail);
            common.clearControl(txtSubject);
            common.clearControl(txtBody);
            common.clearControl(lblOutput);
            Session["email"] = null;
        }
   

    }
}
using System;
using System.Collections.Generic;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.IO;
using System.Web.UI.WebControls;
using System.Configuration;

/// <summary>
/// Summary description for mailMgr
/// </summary>

namespace usedBooks.App_Code
{

    public class mailMgr : MailMessage
    {
        // create properties
        public string myFrom { get; set; }
        public string myTo { get; set; }

        public string mySubject { get; set; }
        public bool myIsBodyHtml { get; set; }
        public string myBody { get; set; }
        public int myPortNumber { get; set; }
        public bool myEnableSSL { get; set; }
        public string myUserName { get; set; }
        public string myPassword { get; set; }
        public string myHostsmtpAddress { get; set; }
        public int myPort { get; set; }
        public NetworkCredential myCredentials { get; set; }
        public string myEnableSsl { get; set; }

        public mailMgr()
        {
            //............ Gmail SMTP
            //// constructor to initialize properties 
            myFrom = ConfigurationManager.AppSettings["emailFrom"];
            myTo = ConfigurationManager.AppSettings["emailTo"];
            mySubject = " Notify Admin of Site Activity via gmail smtp ";
            myIsBodyHtml = true;
            myBody = @"you will pass the body from the sender. as part of the constructor value";
            myBody += @" 

        Regards,

        Ali Mohamed Hamidaddin
        IT Consultant, Chairperson of Application Training Department
        Executive Administration of Information Technology
        King Fahad Medical City
        P.O.Box 59046, Riyadh 11525
        Kingdom Of Saudi Arabia
        (+966) 11 288 9999 Ext: 19110
        (+966) 538692448
        ahameed@kfmc.med.sa";
            myHostsmtpAddress  = ConfigurationManager.AppSettings["HostsmtpAddress"]; //"owa.kfmc.med.sa";// "smtp.gmail.com";//"smtp.mail.yahoo.com";  //mail.wdbcs.com 
            myPortNumber =   int.Parse(ConfigurationManager.AppSettings["PortNumber"]);  //25;//587;
            myEnableSSL =  bool.Parse(ConfigurationManager.AppSettings["EnableSSL"]);
            myUserName = ConfigurationManager.AppSettings["emailUserName"]; // "aalhussein63@gmail.com";
            myPassword = ConfigurationManager.AppSettings["emailPassword"]; // my Email password 
        }

        public string EmailViaGmail() // worked 100%, this is a nice one use it with  properties
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom, myTo, mySubject, myBody)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                    //lblMsg.Text = ("Email Send successfully");
                    //lblMsg.ForeColor = Color.Green; // using System.Drawing above 2/2018
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                    //lblMsg.Text = (ex.Message);
                    //lblMsg.ForeColor = Color.DarkRed; // using System.Drawing above 2/2018
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
        public string EmailViaGmail(FileUpload myFileUpload) // worked 100%, this is a nice one use it with  properties
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom, myTo, mySubject, myBody)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    if (myFileUpload.HasFile)
                    {
                        foreach (HttpPostedFile file in myFileUpload.PostedFiles)
                        {
                            string fileName = Path.GetFileName(file.FileName);
                            //file.SaveAs(Server.MapPath("~/docEmailed/") + fileName); 
                            m.Attachments.Add(new Attachment(file.InputStream, fileName));
                        }
                    }
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                    //lblMsg.Text = ("Email Send successfully");
                    //lblMsg.ForeColor = Color.Green; // using System.Drawing above 2/2018
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                    //lblMsg.Text = (ex.Message);
                    //lblMsg.ForeColor = Color.DarkRed; // using System.Drawing above 2/2018
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
        public string EmailViaGmail(string myTo, string myFrom) // worked 100%, this is a nice one use it with  properties
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom, myTo, mySubject, myBody)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                    //lblMsg.Text = ("Email Send successfully");
                    //lblMsg.ForeColor = Color.Green; // using System.Drawing above 2/2018
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                    //lblMsg.Text = (ex.Message);
                    //lblMsg.ForeColor = Color.DarkRed; // using System.Drawing above 2/2018
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
        public string EmailViaGmail(string myTo, string myFrom, Dictionary<string, object> myFiles) // worked 100%, 
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom, myTo, mySubject, myBody)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    if (myFiles != null)
                    {
                        foreach (KeyValuePair<string, object> p in myFiles)
                        {
                            // can put validation here to see if the value is empty or not 
                            m.Attachments.Add(new Attachment(p.Value.ToString(), p.Key));
                        }
                    }
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                    //lblMsg.Text = ("Email Send successfully");
                    //lblMsg.ForeColor = Color.Green; // using System.Drawing above 2/2018
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                    //lblMsg.Text = (ex.Message);
                    //lblMsg.ForeColor = Color.DarkRed; // using System.Drawing above 2/2018
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
        public string EmailViaGmailPassingDicFiles(string myTo, string myFrom, string myBody, List<HttpPostedFile> myFiles) // worked 100%, 
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom, myTo, mySubject, myBody)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    if (myFiles.Count >=1)
                    {
                        foreach (HttpPostedFile file in myFiles)
                        {
                            string fileName = Path.GetFileName(file.FileName);
                            //file.SaveAs(Server.MapPath("~/uploadedDocs/") + fileName); 
                            m.Attachments.Add(new Attachment(file.InputStream, fileName));
                        }
                    }
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
        
               /// <summary>
        ///  this use contact us reviewed 9/2020
        /// </summary>
        public string sendEmailViaGmail(string myTo2, string myFrom2,string mySubject2, string myBody2, FileUpload myFileUpload) // worked 100%,
        {
            //string visitorUserName = Page.User.Identity.Name;
            using (MailMessage m = new MailMessage(myFrom2, myTo2, mySubject2, myBody2)) // .............................1
            {
                SmtpClient sc = new SmtpClient(myHostsmtpAddress, myPortNumber); //..................................2
                try
                {
                    if (myFileUpload.HasFile)
                    {
                        foreach (HttpPostedFile file in myFileUpload.PostedFiles)
                        {
                            string fileName = Path.GetFileName(file.FileName);
                            //file.SaveAs(Server.MapPath("~/docEmailed/") + fileName); 
                            m.Attachments.Add(new Attachment(file.InputStream, fileName));
                        }
                    }
                    sc.Credentials = new System.Net.NetworkCredential(myUserName, myPassword);  //.................3
                    sc.EnableSsl = true;
                    sc.Send(m);
                    return "Email Send successfully";
                    //lblMsg.Text = ("Email Send successfully");
                    //lblMsg.ForeColor = Color.Green; // using System.Drawing above 2/2018
                }
                catch (SmtpFailedRecipientException ex)
                {
                    SmtpStatusCode statusCode = ex.StatusCode;
                    if (statusCode == SmtpStatusCode.MailboxBusy || statusCode == SmtpStatusCode.MailboxUnavailable || statusCode == SmtpStatusCode.TransactionFailed)
                    {   // wait 5 seconds, try a second time
                        Thread.Sleep(5000);
                        sc.Send(m);
                        return ex.Message.ToString();
                    }
                    else
                    {
                        throw;
                    }
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                    //lblMsg.Text = (ex.Message);
                    //lblMsg.ForeColor = Color.DarkRed; // using System.Drawing above 2/2018
                }
                finally
                {
                    m.Dispose();
                }
            }// end using 
        }
       
        }//cls
    }//NS

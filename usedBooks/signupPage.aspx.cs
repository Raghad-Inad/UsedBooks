using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class signupPage : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateDdlUniversity();
                
            }

        }

        protected void populateDdlUniversity()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select uniId, uniName from university";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlUniversity.DataTextField = "uniName";
            ddlUniversity.DataValueField = "uniId";
            ddlUniversity.DataSource = dr;
            ddlUniversity.DataBind();
            ListItem liUniversity = new ListItem("Select university", "0");
            ddlUniversity.Items.Insert(0, liUniversity);
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                PanelError.Visible = true;
                return;
            }
            else
            {
                try
                {
                    MailMessage ms = new MailMessage();
                    ms.From = new MailAddress("area3846@gmail.com");
                    ms.To.Add(txtclientEmail.Text);
                    ms.Subject = "Welcome to used books community!";
                    ms.Body = "Welcome, We are excites you have joined used books website!";
                    SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
                    sc.Port = 587;
                    sc.Credentials = new NetworkCredential("area3846@gmail.com", "bjdlioxkagrmleuy");
                    sc.EnableSsl = true;
                    sc.Send(ms);
                    signUpNewMember();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
        }
        //Check if Those passwords did not match
        //public bool confirmPassword()
        //{
        //    string password = txtclientPassword.Text.Trim();
        //    string confirmPassword = txtConfirmPassword.Text.Trim();

        //    if (password.Equals(confirmPassword))
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}
        //Check This account already exists
        public bool checkMemberExists()
        {
            try
            {
                CRUD myCrud = new CRUD();
                string mySql = @"select * from [user] where userEmail='" + txtclientEmail.Text.Trim() + "' OR UserName='" + txtUserName.Text.Trim() + "'";
                DataTable dt = myCrud.getDT(mySql);
                if (dt.Rows.Count !=0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        
        void signUpNewMember()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"insert into [user] (userFullName,userName,userPassword,userEmail,userPhone,uniId)
                    values(@userFullName,@userName,@userPassword,@userEmail,@userPhone,@uniId)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@userFullName", txtclientFName.Text);
            myPara.Add("@userName", txtUserName.Text);
            myPara.Add("@userPassword", txtclientPassword.Text);
            myPara.Add("@userEmail", txtclientEmail.Text);
            myPara.Add("@userPhone", txtclientPhone.Text);
            myPara.Add("@uniId", ddlUniversity.SelectedValue);
            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                //Session["role"] = "user";
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    " alert('Thank you for Signing Up with Used Book website!'); window.open('Home.aspx');", true);

            }

            else
            {
                Response.Write("<script>alert('Please try again!');</script>");
            }
        }


    }
}
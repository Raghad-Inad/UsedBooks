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
            if (!IsPostBack)
            {
                if (Session["role"] == "user")
                {
                    populateDdlUniversity();
                    getUserPersonalDetails();
                }
                else
                    Response.Redirect("Loginpage.aspx");

            }

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
                int PK = int.Parse(txtUserId.Text);
                CRUD myCrud = new CRUD();
                string mySql = @"Update [user] set userFullName=@userFullName, userName=@userName, uniId=@uniId , userEmail=@userEmail,userPhone=@userPhone 
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
                Panelsuccess.Visible = true;
                PanelError.Visible = false;
                sendEmail();

            }
            else
            {
                Panelsuccess.Visible = false;
                PanelError.Visible = true;
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
        void getUserPersonalDetails()
        {
            try
            {
                CRUD myCrud = new CRUD();
                string mySql = @"  select userId,userFullName,userName, uniId, userPassword,userEmail,userPhone
                                                        from [user] where userId= " + Session["userId"] + "";
                DataTable dtbl = myCrud.getDT(mySql);
                
                if (dtbl.Rows.Count > 0)
                {
                    txtUserId.Text = dtbl.Rows[0]["userId"].ToString();
                    txtuserFullName.Text = dtbl.Rows[0]["userFullName"].ToString();
                    txtuserName.Text = dtbl.Rows[0]["userName"].ToString();
                    ddlUniversity.SelectedValue = dtbl.Rows[0]["uniId"].ToString();
                    
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
       
        

    }
}
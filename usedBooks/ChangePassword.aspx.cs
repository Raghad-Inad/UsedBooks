using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == "user")
            {

            }
            else
                Response.Redirect("Loginpage.aspx");
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {

            string mySql = @"update [user] set userPassword = @userPassword
                                       where userId = @userId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@userId", Session["userId"]);
            myPara.Add("@userPassword", txtclientPassword.Text);
            CRUD myCrud = new CRUD();
            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                Panelsuccess.Visible = true;
                PanelError.Visible = false;

            }
            else
            {
                Panelsuccess.Visible = false;
                PanelError.Visible = true;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["role"] == "user")
                {
                    PanelLogin.Visible = false;
                    PanelSignUp.Visible = false;
                    PanelMang.Visible = false;
                    PanelService.Visible = true;
                    PanelNewOrders.Visible = true;
                    PanelOrder.Visible = true;
                    linkLogout.Visible = true;
                    linkMsg.Visible = true;
                    LinkChang.Visible = false;
                    linkMsg.Text = "Hello, &nbsp;" + Session["userFullName"].ToString();

                }
                else if (Session["role"] == "admin")
                {
                    PanelLogin.Visible = false;
                    PanelSignUp.Visible = false;
                    PanelMang.Visible = true;
                    PanelService.Visible = false;
                    PanelNewOrders.Visible = false;
                    PanelOrder.Visible = false;
                    linkLogout.Visible = true;
                    linkMsg.Visible = true;
                    LinkChang.Visible = false;
                    linkMsg.Text = "Hello, Admin";
                }

                else
                {
                    PanelLogin.Visible = true;
                    PanelMang.Visible = false;
                    PanelService.Visible = false;
                    PanelNewOrders.Visible = false;
                    PanelOrder.Visible = false;
                    PanelSignUp.Visible = true;
                    linkLogout.Visible = false;
                    LinkChang.Visible = false;
                    linkMsg.Visible = false;
                }
            }

           
        }

       
        protected void linkSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupPage.aspx");
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = null;
            Session["status"] = "";

            Response.Redirect("Home.aspx");

        }

        protected void linkOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

        //protected void linkNewOrders_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("newOrders.aspx");
        //}
      

        protected void linkBookManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookManagement.aspx");
        }

        protected void linkOrderManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderManagement.aspx");
        }

        protected void linkUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("userManagement.aspx");
        }

        protected void linkMsg_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("user"))
            {
                Response.Redirect("clientProfile.aspx");
            }
            else
            {
                //
            }
        }


        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
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
                    Response.Redirect(Request.Url.PathAndQuery, false);
                    break;
                case ("lbtnArabic"):
                    Session["culture"] = "ar-SA";

                    Response.Redirect(Request.Url.PathAndQuery, false);
                    break;
            }
        }

        protected void LinkChang_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }//cls
}//ns
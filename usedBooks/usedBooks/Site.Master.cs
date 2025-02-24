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


            try
            {
                if (Session["role"] == null)
                {
                    linkLogIn.Visible = true; // user login link button
                    linkSignup.Visible = true; // sign up link button

                    linkServices.Visible = false;
                    linkLogout.Visible = false; // logout link button
                    linkMsg.Visible = false; // hello user link button
                    linkManagement.Visible = false;
                    linkOrder.Visible = false;
                    //linknewOrders.Visible = false;
                    //lbtnAdminLogin.Visible = true; // admin login link button
                }
                else if (Session["role"].Equals("user"))
                {
                    linkLogIn.Visible = false; // user login link button
                    linkSignup.Visible = false; // sign up link button
                    linkManagement.Visible = false;

                    //linknewOrders.Visible = true;
                    linkOrder.Visible = true;
                    linkServices.Visible = true;
                    //linkServicesddl.Visible = true;
                    linkLogout.Visible = true; // logout link button
                    linkMsg.Visible = true; // hello user link button
                    linkMsg.Text = "Hello, &nbsp;" + Session["userFullName"].ToString();
                    //lbtnAdminLogin.Visible = true; // admin login link button
                }

                else if (Session["role"].Equals("admin"))
                {
                    linkLogIn.Visible = false; // user login link button
                    linkSignup.Visible = false; // sign up link button

                    linkServices.Visible = true;
                    //linkServicesddl.Visible = true;

                    linkLogout.Visible = true; // logout link button
                    linkMsg.Visible = true; // hello user link button
                    linkMsg.Text = "Hello, Admin";
                    //linkManage.Visible = true; // admin management link button
                    //linknewOrders.Visible = false;
                    linkOrder.Visible = false;
                    linkManagement.Visible = true;
                    //linkUserManagement.Visible = true; // manage instructors link button
                    //linkBookManagement.Visible = true;
                    //linkOrderManagement.Visible = true;

                    //linkVolunteersManagement.Visible = true;
                }
            }
            catch (Exception ex)
            {
                //
            }
        }

        protected void linkLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void linkSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupPage.aspx");
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            //Session["role"] = "";
            Session["role"] = null;
            Session["status"] = "";

            linkLogIn.Visible = true; // user login link button
            linkSignup.Visible = true; // sign up link button
            //linkManage.Visible = false; // manage link button

            linkLogout.Visible = false; // logout link button
            linkMsg.Visible = false; // hello user link button

            linkManagement.Visible = false;
            //linkUserManagement.Visible = false; // manage instructors link button
            //linkBookManagement.Visible = false; // manage instructors link button
            //linkOrderManagement.Visible = false; // manage instructors link button

            //linkVolunteersManagement.Visible = false;
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
        protected void linkAboutUs_Click(object sender, EventArgs e)
        {

        }

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
    }//cls
}//ns
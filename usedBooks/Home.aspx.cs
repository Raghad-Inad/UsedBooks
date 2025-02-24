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
    public partial class Home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
                    if (Session["role"] == "admin")
                    {
                        Panel1.Visible=false;
                    }
                    else
                    Panel1.Visible = true;



            }
        }
        protected void lnkSellerService_Click(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                //Response.Write("<script>alert('You need to Sign up or Log In before getting benefits with our services!');</script>");
                //Response.Write("<script>window.open('" + "loginPage.aspx" + "','_blank');</script>"); //open a new tab
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                                        "alert", "alert('You need to Sign up or Log In before getting benefits with our services!');window.location ='loginPage.aspx';", true);
            }
            else
            {
                Response.Redirect("doners.aspx");
            }
        }

        protected void lnkBuyerService_Click(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                //Response.Write("<script>alert('You need to Sign up or Log In before getting benefits with our services!');</script>");
                //Response.Write("<script>window.open('" + "loginPage.aspx" + "','_blank');</script>"); //open a new tab
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                                        "alert", "alert('You need to Sign up or Log In before getting benefits with our services!');window.location ='loginPage.aspx';", true);
            }
            else
            {
                Response.Redirect("needy.aspx");
            }
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
                    Response.Redirect(Request.Url.PathAndQuery, false);
                    break;
                case ("lbtnArabic"):
                    Session["culture"] = "ar-SA";

                    Response.Redirect(Request.Url.PathAndQuery, false);
                    break;
            }
        }

    }
}
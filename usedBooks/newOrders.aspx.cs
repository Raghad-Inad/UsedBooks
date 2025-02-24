using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class newOrders : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["role"] == "user")
                {
                    populateGvDocs();
                }
                else
                    Response.Redirect("Loginpage.aspx");

            }
            
        }

       
        protected void populateGvDocs()
        {
            CRUD myCrud = new CRUD();
            gvDocs.DataSource = null;
            gvDocs.DataBind();
            string mySql = @"SELECT [book].bookId,[book].bookName, [order].orderId, [order].orderSentiment, [user].userFullName, [user].userPhone
                             FROM [order]  
                             INNER JOIN [Book] 
                             ON [book].bookId = [order].bookId 
                             INNER JOIN [user] 
                             ON  [order].userId = [user].userId
                            where  [Book].userId ='" + Session["userId"].ToString() + "' and [order].orderSentiment is null";
            using (SqlDataReader dr = myCrud.getDrPassSql(mySql))
            {
                if (dr.HasRows)
                {
                    gvDocs.DataSource = dr;
                    gvDocs.DataBind();
                }
            }
        }
        //string[] extnFiles = { ".pdf", ".doc", ".docx", ".xlsx" };

        protected void btnReject_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                int orderId = int.Parse(btn.CommandArgument);// int.Parse((grow.FindControl("lblclientDocId") as Label).Text);  
                CRUD myCrud = new CRUD();
                string mySql = @"update [order] set orderSentiment = 'Reject' where orderId=@orderId";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@orderId", orderId);
                int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
                Panelsuccess.Visible = true;
                PanelError.Visible = false;
                populateGvDocs();
            }
            catch (Exception ex)
            {

                Panelsuccess.Visible = false;
                PanelError.Visible = true;
            }
            populateGvDocs();
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                int orderId = int.Parse(btn.CommandArgument);// int.Parse((grow.FindControl("lblclientDocId") as Label).Text);  
                CRUD myCrud = new CRUD();
                string mySql = @"update [order] set orderSentiment = 'Accept' where orderId=@orderId";
                Dictionary<string, object> myPara = new Dictionary<string, object>();
                myPara.Add("@orderId", orderId);
                int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
                Panelsuccess.Visible = true;
                PanelError.Visible = false;
                populateGvDocs();
            }
            catch (Exception ex)
            {
                Panelsuccess.Visible = false;
                PanelError.Visible = true;
               
            }
            populateGvDocs();
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
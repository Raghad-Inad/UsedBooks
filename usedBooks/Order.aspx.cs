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
    public partial class Order : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["role"] == "user")
                {
                    populategvState();
                    populategvOrderRej();
                    populategvHold();
                }
                else
                    Response.Redirect("Loginpage.aspx");
            }
        }

        protected void populategvHold()
        {

            CRUD myCrud = new CRUD();

            string mySql = @"SELECT [order].orderId, [order].userId, [order].bookId, [user].userFullName, [order].orderSentiment, 
                             book.bookName, [user].userFullName
                             FROM  [order] 
                             INNER JOIN book 
                             ON   [order].bookId = book.bookId 
                             INNER JOIN [user] 
                             ON [order].userId = [user].userId
                             where [user].userId ='" + Session["userId"].ToString() + "' " +
                             "and [order].orderSentiment Is NULL ";

            SqlDataReader dr = myCrud.getDrPassSql(mySql);

            gvOrder.DataSource = dr;
            gvOrder.DataBind();
        }
        protected void populategvState()
        {

            CRUD myCrud = new CRUD();

            string mySql = @"SELECT [order].orderId, [order].userId, [order].bookId, [user].userFullName, 
                            [order].orderSentiment, [user].userphone, book.bookName, [user].userFullName
                             FROM  [order] 
                             INNER JOIN book 
                             ON   [order].bookId = book.bookId 
                             INNER JOIN [user] 
                             ON [order].userId = [user].userId
                             where [user].userId ='" + Session["userId"].ToString() + "' " +
                             "and [order].orderSentiment = 'accept' ";

            SqlDataReader dr = myCrud.getDrPassSql(mySql);

            gvState.DataSource = dr;
            gvState.DataBind();
        }

        protected void populategvOrderRej()
        {

            CRUD myCrud = new CRUD();

            string mySql = @"SELECT [order].orderId, [order].userId, [order].bookId, [user].userFullName, 
                            [order].orderSentiment, [user].userphone, book.bookName, [user].userFullName
                             FROM  [order] 
                             INNER JOIN book 
                             ON   [order].bookId = book.bookId 
                             INNER JOIN [user] 
                             ON [order].userId = [user].userId
                             where [user].userId ='" + Session["userId"].ToString() + "' " +
                             "and [order].orderSentiment = 'Reject' ";

            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvOrderRej.DataSource = dr;
            gvOrderRej.DataBind();
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
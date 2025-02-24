using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class needy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["role"] == "user")
                {
                    populateRepeater();
                }
                else
                    Response.Redirect("Loginpage.aspx");
                
            }
        }
        private void populateRepeater()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"  SELECT book.bookId, book.bookName, book.bookAuthor, book.bookInfo, book.bookDef, book.bookContact,"+
                               " book.bookPrice, book.bookPic, book.bookSentiment, [user].userFullName, [user].userPhone" +
                               " FROM  book INNER JOIN "+
                               "[user] ON book.userId = [user].userId WHere book.UserId<>" + Session["userId"];
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            Repeater1.DataSource = dr;
            Repeater1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"INSERT INTO [dbo].[order] ([userId],[bookId]) VALUES (@userId,@bookId)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
             
            int BookID= Convert.ToInt32(((Button)sender).CommandArgument);
            myPara.Add("@userId ", Session["userId"]);
            myPara.Add("@bookId", BookID);
           

            //myPara.Add("@durationOfUseId", ddlDurationOfUse.SelectedValue);
            
            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                   " alert('Your request has been send successfully'); window.open('Home.aspx');", true);
               

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                   " alert('Error The book has not been bought successfully');", true);
              
            }
        }
    }
}
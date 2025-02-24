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
            populateRepeater();
        }
        private void populateRepeater()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"  SELECT book.bookId, book.bookName, book.bookAuthor, book.bookInfo, book.bookDef, book.bookContact, book.bookPrice, book.bookPic, book.bookSentiment, [user].userFullName
                               FROM            book INNER JOIN
                               [user] ON book.userId = [user].userId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            Repeater1.DataSource = dr;
            Repeater1.DataBind();

        }
    }
}
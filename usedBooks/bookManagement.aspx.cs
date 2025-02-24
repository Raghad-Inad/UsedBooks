using ABC.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class bookManagement : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["role"] == "admin")
            {
                populategvBooksManagement();
            }
            else
                Response.Redirect("AdminloginPage.aspx");
        }
      
        protected void populategvBooksManagement()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT book.bookId, book.bookName, book.bookAuthor, book.bookInfo, book.bookDef, book.bookContact, book.bookPrice, book.bookPic, book.bookSentiment, [user].userName
                FROM     book INNER JOIN [user] ON book.userId = [user].userId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvBooks.DataSource = dr;
            gvBooks.DataBind();

        }
        protected void btnGridView_Click1(object sender, EventArgs e)
        {
            populategvBooksManagement();
        }

        protected void GetbookData(object sender, EventArgs e)
        {
            LinkButton mySender = sender as LinkButton;
            int intbookId = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            //lblOutput.Text = intbookId.ToString();

            CRUD myCrud = new CRUD();
            string mySql = @" select bookId,bookName,bookAuthor,bookInfo,bookDef,bookPrice
                              from book
                              where bookId = @bookId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@bookId ", intbookId);
          

            SqlDataReader dr = myCrud.getDrPassSqlDic(mySql, myPara);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["bookId"] = int.Parse(dr["bookId"].ToString());
                    txtbookinfo.Focus();
                    txtbookname.Text = dr["bookName"].ToString();
                    txtAuthorName.Text = dr["bookAuthor"].ToString();
                    txtbookinfo.Text = dr["bookInfo"].ToString();
                    txtbookDef.Text = dr["bookDef"].ToString();
                    txtbookPrice.Text = dr["bookPrice"].ToString();
                    
                }
            }

            Panelsuccess.Visible = false;

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtbookname.Text = "";
            txtAuthorName.Text = "";
            txtbookinfo.Text = "";
            txtbookDef.Text = "";
            txtbookPrice.Text = "";
            //ddlDurationOfUse.SelectedIndex =0;
            Session["BookId"] = null;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @" UPDATE book SET bookName = @bookName , bookAuthor = @bookAuthor , bookInfo = @bookInfo , bookDef =@bookDef , bookContact = @bookContact, 
		     bookPrice = @bookPrice WHERE bookId = @bookId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@bookId ", Session["bookId"]);
            myPara.Add("@bookName ", txtbookname.Text);
            myPara.Add("@bookAuthor", txtAuthorName.Text);
            myPara.Add("@bookInfo", txtbookinfo.Text);
            //myPara.Add("@devicePicture", FileUpload1.TabIndex);
            myPara.Add("@bookDef", txtbookDef.Text);
            myPara.Add("@bookContact", "");
            myPara.Add("@bookPrice", txtbookPrice.Text);

            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                Panelsuccess.Visible = true;
                PanelError.Visible = false;
                populategvBooksManagement();
                txtbookname.Text = "";
                txtAuthorName.Text = "";
                txtbookinfo.Text = "";
                txtbookDef.Text = "";
                txtbookPrice.Text = "";
                Session["BookId"] = null;

            }
            else
            {
                Panelsuccess.Visible = false;
                PanelError.Visible = true;
            }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Session["bookId"] != null)
            {
                CRUD myCrud = new CRUD();
                string mySql = @" select * from [Book] where BookId  in (select BookId from [Order]) and BookId=@BookId ";
                Dictionary<string, object> myPara = new Dictionary<string, object>();

                myPara.Add("@BookId", Convert.ToInt32(Session["bookId"]));
                DataTable dt = myCrud.getDTPassSqlDic(mySql, myPara);
                if (dt.Rows.Count != 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                       " alert('Cannot dalete this Book'); ", true);
                    Panelsuccess.Visible = false;
                    return;
                }
                else
                {

                    string mySql2 = @" delete from book 
                            where bookId = @bookId ";
                    Dictionary<string, object> myPara2 = new Dictionary<string, object>();
                    myPara2.Add("@bookId ", Session["bookId"]);

                    int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql2, myPara2);
                    if (rtn >= 1)
                    {
                        Panelsuccess.Visible = true;
                        PanelError.Visible = false;
                        populategvBooksManagement();
                        txtbookname.Text = "";
                        txtAuthorName.Text = "";
                        txtbookinfo.Text = "";
                        txtbookDef.Text = "";
                        txtbookPrice.Text = "";
                        Session["BookId"] = null;

                    }
                }

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                           " alert('Please Select Book'); ", true);
                Panelsuccess.Visible = false;
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void exportToExcel_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToExcel(gvBooks, "export to Excel");
            Panelsuccess.Visible = false;
        }


        protected void exportToWord_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToWord(gvBooks, "export to word");
            Panelsuccess.Visible = false;
        }

       
    }
}
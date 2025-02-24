using ABC.App_Code;
using System;
using System.Collections.Generic;
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
            //this.Master.FindControl("linkAboutUs").Visible = false;
            ////this.Master.FindControl("linkServices").Visible = false;
            //this.Master.FindControl("linkfaq").Visible = false;
           

            //this.Master.FindControl("linkLanguage").Visible = false;

            if (!Page.IsPostBack)
            {
                //populateddlDurationOfUse();
            }
        }
        //protected void populateddlDurationOfUse()
        //{
        //    CRUD myCrud = new CRUD();
        //    string mySql = @"select durationOfUseId ,durationOfUse from durationOfUse";
        //    SqlDataReader dr = myCrud.getDrPassSql(mySql);
        //    //ddlDurationOfUse.DataValueField = "durationOfUseId";
        //    //ddlDurationOfUse.DataTextField = "durationOfUse";
        //    //ddlDurationOfUse.DataSource = dr;
        //    //ddlDurationOfUse.DataBind();
        //}
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
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            CRUD myCrud = new CRUD();
            string mySql = @" INSERT INTO book(bookName,bookAuthor,bookInfo,bookDef,bookContact,bookPrice)
                           VALUES(@bookName,@bookAuthor,@bookInfo,@bookDef,@bookContact,@bookPrice)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@bookName ", txtbookname.Text);
            myPara.Add("@bookAuthor", txtAuthorName.Text);
            myPara.Add("@bookInfo", txtbookinfo.Text);
            //myPara.Add("@devicePicture", FileUpload1.TabIndex);
            myPara.Add("@bookDef", txtbookDef.Text);
            myPara.Add("@bookContact", txtbookContact.Text);
            myPara.Add("@bookPrice", txtbookPrice.Text);
            //myPara.Add("@durationOfUseId", ddlDurationOfUse.SelectedValue);

            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = " ops seccesful ";

            }
            else
            { lblOutput.Text = " ops feild ! "; }
            populategvBooksManagement();

        }
        protected void GetbookData(object sender, EventArgs e)
        {
            LinkButton mySender = sender as LinkButton;
            int intbookId = int.Parse(mySender.Text);
            lblOutput.Text = intbookId.ToString();

            CRUD myCrud = new CRUD();
            string mySql = @" select bookId,bookName,bookAuthor,bookInfo,bookDef,bookContact,bookPrice
                                        from book where bookId = @bookId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@bookId ", intbookId);
            myPara.Add("@bookName ", txtbookname.Text);
            myPara.Add("@bookAuthor", txtAuthorName.Text);
            myPara.Add("@bookInfo", txtbookinfo.Text);
            //myPara.Add("@devicePicture", FileUpload1.TabIndex);
            myPara.Add("@bookDef", txtbookDef.Text);
            myPara.Add("@bookContact", txtbookContact.Text);
            myPara.Add("@bookPrice", txtbookPrice.Text);

            SqlDataReader dr = myCrud.getDrPassSqlDic(mySql, myPara);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["bookId"] = int.Parse(dr["bookId"].ToString());
                    txtbookname.Text = dr["bookName"].ToString();
                    txtAuthorName.Text = dr["bookAuthor"].ToString();
                    txtbookinfo.Text = dr["bookInfo"].ToString();
                    txtbookDef.Text = dr["bookDef"].ToString();
                    txtbookContact.Text = dr["bookContact"].ToString();
                    txtbookPrice.Text = dr["bookPrice"].ToString();
                    //ddlDurationOfUse.SelectedValue = dr["durationOfUseId"].ToString();
                }
            }



        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtbookname.Text = "";
            txtAuthorName.Text = "";
            txtbookinfo.Text = "";
            txtbookDef.Text = "";
            txtbookContact.Text = "";
            txtbookPrice.Text = "";
            //ddlDurationOfUse.SelectedIndex =0;
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
            myPara.Add("@bookContact", txtbookContact.Text);
            myPara.Add("@bookPrice", txtbookPrice.Text);

            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = " ops seccesful ";
                populategvBooksManagement();

            }
            else
            { lblOutput.Text = " ops feild ! "; }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {

            CRUD myCrud = new CRUD();
            string mySql = @" delete from book 
                            where bookId = @bookId ";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@bookId ", Session["bookId"]);

            int rtn = myCrud.InsertUpdateDeleteViaSqlDic(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = " ops seccesful ";
                populategvBooksManagement();

            }
        }


        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void exportToExcel_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToExcel(gvBooks, "export to Excel");
        }


        protected void exportToWord_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToWord(gvBooks, "export to word");
        }

    }
}
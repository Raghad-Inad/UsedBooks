using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class doners : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //populateddlDurationOfUse();



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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbookname.Text = "";
            txtAuthorName.Text = "";
            txtbookinfo.Text = "";
            txtbookDef.Text = "";
            txtbookContact.Text = "";
            txtbookPrice.Text = "";

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.

            Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"  INSERT INTO book(bookName,bookAuthor,bookInfo,bookDef,bookContact,bookPrice)
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

        }

    }
}
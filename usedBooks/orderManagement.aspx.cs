using ABC.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace usedBooks
{
    public partial class orderManagement : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["role"] == "admin")
                {
                    populategvOrderManagement();
                }
                else
                    Response.Redirect("AdminloginPage.aspx");

            }
            
        }

        protected void populategvOrderManagement()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT [order].orderId, [order].userId, [order].bookId, [user].userFullName, [User].userPhone ,
                                    [order].orderSentiment, book.bookName, book.bookAuthor, book.bookInfo
									FROM   [order] 
                             INNER JOIN book 
                             ON   [order].bookId = book.bookId 
                             INNER JOIN [user] 
                             ON [order].userId = [user].userId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvOrder.DataSource = dr;
            gvOrder.DataBind();

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void exportToExcel_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToExcel(gvOrder, "export to Excel");
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            gvOrder.AllowPaging = false;

            gvOrder.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }


        protected void exportToWord_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToWord(gvOrder, "export to word");
        }

        //protected void btnExportToPdf_Click(object sender, EventArgs e)
        //{
        //    exportManager.ExportToPdf(gvOrder);
        //}


        //protected void lbtn_Click(object sender, EventArgs e)
        //{
        //    LinkButton btn = (LinkButton)sender;
        //    switch (btn.ID)
        //    {
        //        case ("lbtnEnglish"):
        //            Session["culture"] = "en-US";
        //            Server.Transfer(Request.Url.PathAndQuery, false);
        //            break;
        //        case ("lbtnArabic"):
        //            Session["culture"] = "ar-SA";
        //            Server.Transfer(Request.Url.PathAndQuery, false);
        //            break;
        //    }
        //}

    }
}
using ABC.App_Code;
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
    public partial class orderManagement : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            populategvOrderManagement();
        }

        protected void populategvOrderManagement()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"Select orderId,userId,bookId,orderSentiment from [dbo].[order]";
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
        }

        protected void exportToWord_Click(object sender, EventArgs e)
        {
            exportManager.ExportGridToWord(gvOrder, "export to word");
        }

        //protected void btnExportToPdf_Click(object sender, EventArgs e)
        //{
        //    exportManager.ExportToPdf(gvOrder);
        //}
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
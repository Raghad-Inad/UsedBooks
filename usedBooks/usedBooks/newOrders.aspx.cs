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
            populateGvDocs();
        }

        //protected void DownloadFile(object sender, EventArgs e)
        //{
        //    if (IsPostBack)
        //    {
        //        int orderId = int.Parse((sender as LinkButton).CommandArgument);
        //        byte[] bytes;
        //        string fileName, contentType;
        //        string constr = CRUD.conStr;
        //        using (SqlConnection con = new SqlConnection(constr))
        //        {
        //            using (SqlCommand cmd = new SqlCommand())
        //            {
        //                cmd.CommandText = @"  select  documentName,documentData from [order]
        //                                      where orderId = @orderId";
        //                cmd.Parameters.AddWithValue("@orderId", orderId);
        //                cmd.Connection = con;
        //                con.Open();
        //                using (SqlDataReader sdr = cmd.ExecuteReader())
        //                {
        //                    if (sdr.HasRows)
        //                    {
        //                        sdr.Read();
        //                        bytes = (byte[])sdr["documentData"];

        //                        fileName = sdr["documentName"].ToString();   //fileName changed to docName
        //                    }
        //                    else
        //                    {
        //                        lblOutput.Text = "File not found!";
        //                        lblOutput.ForeColor = System.Drawing.Color.Red;
        //                        return;
        //                    }
        //                }
        //                con.Close();
        //            }
        //        }
        //        Response.Clear();
        //        Response.Buffer = true;
        //        Response.Charset = "";
        //        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        //        Response.BinaryWrite(bytes);
        //        Response.Flush();
        //        Response.End();
        //    }
        //}

        protected void populateGvDocs()
        {
            CRUD myCrud = new CRUD();
            gvDocs.DataSource = null;
            gvDocs.DataBind();
            string mySql = @"SELECT [book].bookName, [order].orderId, [order].orderSentiment, [user].userFullName, [user].userPhone
                            FROM [book] INNER JOIN
                         [order] ON [book].bookId = [order].bookId INNER JOIN
                         [user] ON [book].userId = [user].userId AND [order].userId = [user].userId
                            where  [user].userId ='" + Session["userId"].ToString() + "' and [order].orderSentiment is null";
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
                lblOutput.Text = "The Order has been rejected Successfully!";
                lblOutput.ForeColor = System.Drawing.Color.Green;
                populateGvDocs();
            }
            catch (Exception ex)
            {

                lblOutput.Text = "Failed ops!";
                lblOutput.ForeColor = System.Drawing.Color.Red;
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
                lblOutput.Text = "The Order has been Accepted Successfully!";
                lblOutput.ForeColor = System.Drawing.Color.Green;
                populateGvDocs();
            }
            catch (Exception ex)
            {

                lblOutput.Text = "Failed ops!";
                lblOutput.ForeColor = System.Drawing.Color.Red;
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
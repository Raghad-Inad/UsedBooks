using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace usedBooks
{
    public partial class loginPage : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["usedBooks"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            try
            {
               
                CRUD myCrud = new CRUD();
                string mySql = @"select * from [user] where (userEmail='" + txtEmail.Text.Trim() + "' OR userName='" + txtEmail.Text.Trim() + "') AND userPassword='" + txtPassword.Text.Trim() + "'";
                SqlDataReader dr = myCrud.getDrPassSql(mySql);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["userId"] = dr.GetValue(0).ToString();
                        Session["userEmail"] = dr.GetValue(3).ToString();
                        Session["userFullName"] = dr.GetValue(1).ToString();
                        Session["userPassword"] = dr.GetValue(5).ToString();
                        Session["role"] = "user";
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                   " alert('Logged in successfully'); window.open('Home.aspx');", true);
                    
                }
                else
                {
                    
                    PanelError.Visible = true;
                    return;
                }
            }
            catch (Exception ex)
            {
                //
            }


            //try
            //{
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand("select * from [user] where userEmail='" + txtEmail.Text.Trim() + "' AND adminPassword='" + txtPassword.Text.Trim() + "'", con);
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {
            //            Session["adminEmail"] = dr.GetValue(1).ToString();
            //            Session["adminPassword"] = dr.GetValue(2).ToString();
            //            Session["role"] = "admin";
            //        }
            //        Response.Redirect("Home.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Invalid Email or Password');</script>");
            //    }
            //}
            //catch (Exception ex)
            //{
            //    //
            //}


            //try
            //{
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand("select * from [user] where userEmail='" + txtEmail.Text.Trim() + "' AND userPassword='" + txtPassword.Text.Trim() + "'", con);
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {

            //            Session["userId"] = dr.GetValue(0).ToString();
            //            Session["userEmail"] = dr.GetValue(3).ToString();
            //            Session["userFullName"] = dr.GetValue(1).ToString();
            //            Session["userPassword"] = dr.GetValue(5).ToString();
            //            Session["role"] = "user";

            //        }
            //        Response.Redirect("Home.aspx");
            //    }
            //    else
            //    {
            //        //
            //    }
            //}
            //catch (Exception ex)
            //{
            //    //
            //}

            //try
            //{
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand("select * from [user] where userName='" + txtEmail.Text.Trim() + "' AND userPassword='" + txtPassword.Text.Trim() + "'", con);
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {

            //            Session["userId"] = dr.GetValue(0).ToString();
            //            Session["userName"] = dr.GetValue(3).ToString();
            //            Session["userFullName"] = dr.GetValue(1).ToString();
            //            Session["userPassword"] = dr.GetValue(5).ToString();
            //            Session["role"] = "user";

            //        }
            //        Response.Redirect("Home.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Invalid Email or Password');</script>");
            //    }
            //}
            //catch (Exception ex)
            //{
            //    //
            //}

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupPage.aspx");
        }

        protected void lbtnForgotPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotPasswordPage.aspx");
        }

    }
}
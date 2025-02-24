<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="usedBooks.loginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Open+Sans:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/fontawesome-all.min.css" rel="stylesheet">
        <link href="css/swiper.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

        <!-- Header -->
        <header class="ex-header bg-dark-blue mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1>Log In</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

        <center>
    <!-- Icon -->
      <%--<img src="assets/img/userLogin.png" style="height:250px; width:250px;" alt="User Icon" />--%>
            <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
                <lord-icon
                    src="https://cdn.lordicon.com/szpdhodo.json"
                    trigger="hover"
                    colors="primary:#4be1ec,secondary:#cb5eee"
                    style="width:250px;height:250px">
                </lord-icon>
    </center>


        <!-- Form -->
        <div class="ex-form-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                                                
                        <!-- Contact Form -->
                        <form>

                            
                            <div class="row">
                            <div class="col-md-8" style="margin-left: 17%">
                                <asp:Label ID="lblEmail" runat="server" Text="Username:" meta:resourcekey="emailResource1"></asp:Label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Height="50px" placeholder="username or email"></asp:TextBox>
                            </div>
                        </div>
                            <br /> 
                            <div class="row">
                            <div class="col-md-8" style="margin-left: 17%">
                                <asp:Label ID="lblPassword" runat="server" Text="Password:" meta:resourcekey="passwordResource1"></asp:Label>
                                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" Height="50px" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                           <center>
                                <br />
                               <div class="row">

                                   <div class="form-group" >
                                        <div class="auto-style7">
                                        <asp:Button ID="btnLogIn" runat="server" class="btn-solid-reg mb-5"  Text="Log In" OnClick="btnLogIn_Click" style="font-size: large" meta:resourcekey="btnLogInResource1" />
                                        <asp:Button ID="btnSignUp" runat="server" class="btn-solid-reg mb-5" Text="Sign Up"  OnClick="btnSignUp_Click" style="font-size: large" meta:resourcekey="btnSignUpResource1"/>
                                        <br />

                                        </div>
                                   </div>
                            </div>
                          </center>

                            <center>
                                <asp:Button ID="lbtnForgotPass" runat="server" class="btn-solid-reg mb-5" Text="Forgot Password?"  OnClick="lbtnForgotPass_Click" style="font-size: large" meta:resourcekey="lbtnForgotPassResource1"/>
                            </center>
                        <br />
                            <br />
                        </form>
                        <!-- end of contact form -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-form-1 -->
        <!-- end of form -->

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="usedBooks.signupPage" %>
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
                        <h1>Sign Up</h1>
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
                            <div class="col">
                                    <asp:Label ID="lblclientFName" runat="server" Text="Full Name:" meta:resourcekey="fNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtclientFName" CssClass="form-control" runat="server" placeholder="First and last names. e.g, Manar Omar"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtclientFName" ErrorMessage="The name is invalid"
                                        ForeColor="Red" ValidationExpression="^[a-zA-Z]{2,40}\s*[a-zA-Z]{2,40}\s*$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col">
                                    <asp:Label ID="lblclientPhone" runat="server" Text="Phone Number:" meta:resourcekey="PhoneResource1"></asp:Label>
                                    <asp:TextBox ID="txtclientPhone" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtclientPhone" ErrorMessage="The phone number is invalid"
                                        ForeColor="Red" ValidationExpression="\d+" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                            <br />

                            <div class="row" style="align-items:center;"> <center>
                                <div class="col">
                                    <asp:Label ID="lblUniversity" runat="server" Text="University:" meta:resourcekey="UniversityResource1"></asp:Label>
                                    <asp:DropDownList class="btn btn-light dropdown-toggle dropdown-toggle-split"  style="width: 200px; height: 40px;" ID="ddlUniversity"
                                                runat="server" AppendDataBoundItems="True" meta:resourcekey="ddlUniversityResource1">
                                                 <asp:ListItem Value="0" Text="Select one " meta:resourcekey="ListItemResource1"></asp:ListItem>
                                     </asp:DropDownList>
                                </div></center>
                            </div>

                            <br />

                            <div class="row">
                                <div class="col">
                                     <asp:Label ID="lblclientEmail" runat="server" Text="Email:" meta:resourcekey="emailResource1"></asp:Label>
                                    <asp:TextBox ID="txtclientEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>

                            
                                <div class="col">
                                    <asp:Label ID="lblUserName" runat="server" Text="Username:" meta:resourcekey="userNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" placeholder="Username " ></asp:TextBox>
                                </div>
                            </div>


                            <br /> 
                            <br />
                            <div class="row">
                            <div class="col">
                                <asp:Label ID="lblclientPassword" runat="server" Text="Password:" meta:resourcekey="passwordResource1"></asp:Label>
                                <asp:TextBox ID="txtclientPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" meta:resourcekey="confirmPasswordResource1"></asp:Label>
                                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>

                            <br /> 
                            <br /> 
                            
                            <div class="row"><center>
                            <div class="col-md-8" >
                                <asp:Button ID="btnSignUp" class="btn btn-md btn-block btn-outline-secondary" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" meta:resourcekey="btnSignUpResource1" />
                            </div></center>
                            </div>

                          
                        
                        </form>
                        <!-- end of contact form -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-form-1 -->
        <!-- end of form -->

</asp:Content>

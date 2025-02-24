<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="usedBooks.signupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <!-- Header -->
    <header class="ex-header bg-dark-blue mb-4">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1" style="text-align: center;">
                    <h1>Sign Up</h1>
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </header> <!-- end of ex-header -->
  

        <!-- Form -->
    <div class="section wb">
        <div class="container">

            <form>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="x" ForeColor="Red" ></asp:ValidationSummary>
                                
                                <br />
                                <asp:Panel ID="PanelError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   This account already exists!
                               </div>
                                </asp:Panel>
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="row mb-3">
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblclientFName" runat="server" Text="Full Name:" meta:resourcekey="fNameResource1"></asp:Label>
                            <asp:TextBox ID="txtclientFName" CssClass="form-control" runat="server" placeholder="First , Second and last names. e.g, Manar Omar Almutairi"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtclientFName" ErrorMessage="The name is invalid"
                          ForeColor="Red" ValidationExpression="^[a-zA-Z]+[\s|-]?[a-zA-Z]+[\s|-]?[a-zA-Z]+$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                     
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtclientFName"
                                ForeColor="Red" ErrorMessage="Please Enter Client Name" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline ">
                            <asp:Label ID="lblclientPhone" runat="server" Text="Phone Number:" meta:resourcekey="PhoneResource1"></asp:Label>
                            <asp:TextBox ID="txtclientPhone" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtclientPhone" ErrorMessage="The phone number is invalid"
                                        ForeColor="Red" ValidationExpression="^[0-9]{10}$" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>
                               
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtclientPhone"
                                ForeColor="Red" ErrorMessage="Please Enter Phone Number" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="form-outline md-4">
                    <div class="col">
                        <asp:Label ID="lblUniversity" runat="server" Text="University:" meta:resourcekey="UniversityResource1"></asp:Label>
                        <asp:DropDownList class="form-control" Style="width: 100%; height: 40px;" ID="ddlUniversity"
                            runat="server" meta:resourcekey="ddlUniversityResource1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlUniversity"
                            ForeColor="Red" ErrorMessage="Please Select University" InitialValue="0" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblclientEmail" runat="server" Text="Email:" meta:resourcekey="emailResource1"></asp:Label>
                            <asp:TextBox ID="txtclientEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtclientEmail"
                                ForeColor="Red" ErrorMessage="Please Enter Client Email" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtclientEmail"
                                ForeColor="Red" ErrorMessage="Please Enter Client Email Correctlly Like(example@example.com)" Text="*" ValidationGroup="x" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblUserName" runat="server" Text="Username:" meta:resourcekey="userNameResource1"></asp:Label>
                            <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" placeholder="Username "></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName"
                                ForeColor="Red" ErrorMessage="Please Enter UserName" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblclientPassword" runat="server" Text="Password:" meta:resourcekey="passwordResource1"></asp:Label>
                            <asp:TextBox ID="txtclientPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtclientPassword" 
                                
                                ForeColor="Red" ErrorMessage="Please Enter Password" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" meta:resourcekey="confirmPasswordResource1"></asp:Label>
                            <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPassword"
                                ForeColor="Red" ErrorMessage="Please Enter Confirm Password" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtclientPassword"
                                ForeColor="Red" ErrorMessage="Please Enter  Confirm Password Correctly" Text="*" ValidationGroup="x" ControlToCompare="txtConfirmPassword"></asp:CompareValidator>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <center>
                            <div class="col-md-8" >
                                <asp:Button ID="btnSignUp" class="btn-solid-reg mb-5"
                                    runat="server" Text="Sign Up" OnClick="btnSignUp_Click"  ValidationGroup="x"
                                    meta:resourcekey="btnSignUpResource1" />
                                <br />
                                
                                </div></center>
                </div>

            </form>


            <!-- end of contact form -->

        </div>
        <!-- end of col -->
    </div>
                <!-- end of row -->
         

</asp:Content>

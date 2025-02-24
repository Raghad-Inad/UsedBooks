<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="forgotPasswordPage.aspx.cs" Inherits="usedBooks.forgotPasswordPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <!-- Header -->
        <header class="ex-header bg-dark-blue mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1>Forgot Password</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

        <div class="row">
            <div class="col-md-6 mx-auto">
                
                        <div class="row">
                            <div class="col">
                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                 <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                               <div class="alert alert-success" >
                                   Password reset instructions have been sent, Check your email to reset your password.
                               </div>
                           </asp:Panel>
                                 <asp:Panel ID="PanelError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                 This email does not exist
                               </div>
                           </asp:Panel>
                                <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                        <center>
                        <!-- Icon -->
                        <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
                            <lord-icon
                            src="https://cdn.lordicon.com/efdhjqgx.json"
                            trigger="hover"
                            colors="primary:#4be1ec,secondary:#cb5eee"
                            style="width:250px;height:250px">
                            </lord-icon>
                        </center>
                        </div>

                        <!-- Forgot Password Form -->
                        <br />
                        <h6 style="text-align:center;"><asp:Localize ID="Localize2" text="*Enter the email address associated with your account and we will send you instructions for resetting your password." runat="server" meta:resourcekey="Localize2Resource1"></asp:Localize></h6>
                        <br />
                        <div class="row">

                            <div class="col">
                                     <asp:Label ID="lbluserEmail" runat="server" Text="Email:" meta:resourcekey="emailResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <br />

                        <div class="row"><center>
                            <div class="col-md-8" >
                                <asp:Button ID="btnResetPassword" class="btn-solid-reg mb-5" runat="server" Text="Reset password" OnClick="btnSendEmail_Click" meta:resourcekey="btnResetPasswordResource1" />
                            </div></center>
                            </div>

                        
                    
            </div>
        </div>

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-form-1 -->
        <!-- end of form -->

</asp:Content>

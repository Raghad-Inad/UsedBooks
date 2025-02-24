<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="usedBooks.resetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <!------ Include the above in your HEAD tag ---------->

    <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Reset Password</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

    <!-- Tabs Titles -->
    <div class="container">
        <div class="row">
            
                    <div class="card-body">
                       
                       
                     
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
                                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="x" ForeColor="Red" ></asp:ValidationSummary>
                 <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                               <div class="alert alert-success" >
                                   Success operation! Your information has been updated.
                               </div>
                           </asp:Panel>
                                <asp:Panel ID="PanelError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   Failed operation! Please Try Again.
                               </div>
                           </asp:Panel>
                               
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                               <div class="alert alert-success" >
                                   The Password has been Saved Successfully!
                               </div>
                           </asp:Panel> 
                                 <asp:Panel ID="Panel2" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   Failed ops
                               </div>
                           </asp:Panel>
                                <br />
                                <br />
                                <div class="row mb-3">
                    <div class="col">
                        <div class="form-outline">
                            <asp:Label ID="lblclientPassword" runat="server" Text="Password:" meta:resourcekey="passwordResource1"></asp:Label>
                            <asp:TextBox ID="txtclientPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtclientPassword" 
                                
                                ForeColor="Red" ErrorMessage="Please Enter Password" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                                    </div>
                                 <div class="row mb-3">
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
                                </div>
                        </div>
                            <br /> 
                          
                        </div>

                           <center>
                                <br />
                               <div class="row">

                                   <div class="form-group" >
                                        <div class="auto-style7">
                                        <asp:Button ID="btnSubmit" class="btn-solid-reg mb-5" ValidationGroup="x"
                                            runat="server" Text="Update Password" OnClick="btnSubmit_Click"
                                            />

                                        </div>
                                   </div>
                            </div>
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


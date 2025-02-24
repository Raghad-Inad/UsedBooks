<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="usedBooks.resetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <!------ Include the above in your HEAD tag ---------->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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
                        <div class="row" style="margin-left:auto;">
                            <div class="col">
                         
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <asp:Label ID="lblOutput" runat="server" meta:resourcekey="lblOutputResource1"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
    <!-- Icon -->
      <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
<lord-icon
    src="https://cdn.lordicon.com/ajkxzzfb.json"
    trigger="hover"
    colors="primary:#4be1ec,secondary:#cb5eee"
    style="width:250px;height:250px">
</lord-icon>
    </center>
                            </div>
                        </div>
                        <!-- Forgot Password Form -->
                        <br />
                        <div class="row">
                            <div class="col-md-8" style="margin-left: 17%">
                                       <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" meta:resourcekey="newPasswordResource1"></asp:Label>
                                <asp:TextBox ID="txtNewPassword" CssClass="form-control" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-8" style="margin-left: 17%">
                                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" meta:resourcekey="confirmPasswordResource1"></asp:Label>
                                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <center>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btnSubmit" class="btn btn-md btn-block btn-outline-secondary" runat="server" Text="Submit" OnClick="btnSubmit_Click" meta:resourcekey="btnSubmitResource1" />
                            </div>
                        </div></center>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <br />
    <br />

</asp:Content>

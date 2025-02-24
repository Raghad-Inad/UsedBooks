<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clientProfile.aspx.cs" Inherits="usedBooks.clientProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
                        <h1 style="font-size: 45px">Profile</h1>
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
                        <!-- User Profile Form -->
                        <br />
                        <div class="row">
                            <div class="col">
                                <asp:Label ID="lbluserId" runat="server" Text="user Id:" meta:resourcekey="lbluserIdResource1"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtUserId" runat="server" placeholder="ID Number" ReadOnly="True" meta:resourcekey="txtUserIdResource1"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lbluserFullName" runat="server" Text="Full Name:" meta:resourcekey="lbluserFullNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserFullName" CssClass="form-control" runat="server" placeholder="Full Name" meta:resourcekey="txtuserFullNameResource1"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuserFullName" ErrorMessage="The name is invalid"
                                        ForeColor="Red"  ValidationExpression="^[a-zA-Z]{2,40}\s*[a-zA-Z]{2,40}\s*$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lbluserName" runat="server" Text="User Name:" meta:resourcekey="lbluserNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserName" CssClass="form-control" runat="server" placeholder="User Name" meta:resourcekey="txtuserNameResource1"></asp:TextBox>
                                   <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtuserName" ErrorMessage="The name is invalid"
                                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$" meta:resourcekey="RegularExpressionValidator2Resource1"></asp:RegularExpressionValidator>--%>
                                </div>

                            </div>
                                    <div class="row" style="align-items:center;"> <center>
                                <div class="col">
                                    <asp:Label ID="lblUniversity" runat="server" Text="University:" meta:resourcekey="UniversityResource1"></asp:Label>
                                    <asp:DropDownList class="btn btn-light dropdown-toggle dropdown-toggle-split"  style="width: 200px; height: 40px;" ID="ddlUniversity"
                                                runat="server" AppendDataBoundItems="True" meta:resourcekey="ddlUniversityResource1">
                                                 <asp:ListItem Value="0" Text="Select one " meta:resourcekey="ListItemResource1"></asp:ListItem>
                                     </asp:DropDownList>
                                </div></center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lbluserEmail" runat="server" Text="Email:" meta:resourcekey="lblEmailResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email" meta:resourcekey="txtuserEmailResource1"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lbluserPhone" runat="server" Text="Phone Number:" meta:resourcekey="lblPhoneResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserPhone" CssClass="form-control" runat="server" placeholder="Phone Number" meta:resourcekey="txtuserPhoneResource1"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtuserPhone" ErrorMessage="The phone number is invalid"
                                        ForeColor="Red" ValidationExpression="\d+" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Label ID="lblOldPassword" runat="server" Text="Old Password:" meta:resourcekey="lblOldPasswordResource1"></asp:Label>
                                <asp:TextBox ID="txtOldPassword" CssClass="form-control" runat="server" placeholder="Old Password" ReadOnly="True" meta:resourcekey="txtOldPasswordResource1"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" meta:resourcekey="lblNewPasswordResource1"></asp:Label>
                                <asp:TextBox ID="txtNewPassword" CssClass="form-control" runat="server" placeholder="New Password" TextMode="Password" meta:resourcekey="txtNewPasswordResource1"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                             <div class="col">
                                 <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
                                 </asp:ScriptManager>--%>
                                 <center>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="lblAjax" runat="server" meta:resourcekey="lblAjaxResource1"></asp:Label>
                                        <br />
                                        <asp:Button ID="btnUpdatePassword" class="btn btn-md btn-block btn-outline-secondary" runat="server" Text="Update Password" OnClick="btnUpdatePassword_Click" meta:resourcekey="btnUpdatePasswordResource1"/>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btnUpdatePassword" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel></center>
                                </div>
                                </div>
                        <br />
                        <center>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btnUpdate" class="btn btn-md btn-block btn-outline-secondary" runat="server" Text="Update" OnClick="btnUpdate_Click" meta:resourcekey="btnUpdateResource1"/>
                            </div>
                            </div></center>
                        <br /><center>
                        <div class="row">
                            <div class="col" >
                                <asp:Button ID="btnDelete" class="btn btn-md btn-block btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" meta:resourcekey="btnDeleteResource1" />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <asp:CheckBox ID="ChBoxDelete" runat="server" AutoPostBack="True" Text="Delete this Account?" meta:resourcekey="ChBoxDeleteResource1" />
                            </div>
                        </div></center>
                    
            </div>
        </div>
    </div>
     <br />
    <br />

</asp:Content>

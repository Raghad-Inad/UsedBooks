<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clientProfile.aspx.cs" Inherits="usedBooks.clientProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <!-- Header -->
    <header class="ex-header bg-dark-blue">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1" style="text-align: center;">
                    <h1 style="font-size: 45px">Profile</h1>
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
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
                                 <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                                     <center>
                                <div class="alert alert-success">
                                   Success operation! Your information has been updated.
                               </div></center>
                           </asp:Panel>
                                <asp:Panel ID="PanelError" runat="server" Visible="false">
                                    <center>
                                <div class="alert alert-danger" >
                                   Failed operation! Please Try Again.
                               </div></center>
                           </asp:Panel>
                                
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
                       <div class="row mb-3">
                    <div class="col">
                        <div class="form-outline">
                                    <asp:Label ID="lbluserFullName" runat="server" Text="Full Name:" meta:resourcekey="lbluserFullNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserFullName" CssClass="form-control" runat="server" placeholder="Full Name" meta:resourcekey="txtuserFullNameResource1"></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuserFullName" ErrorMessage="The name is invalid"
                          ForeColor="Red" ValidationExpression="^[a-zA-Z]+[\s|-]?[a-zA-Z]+[\s|-]?[a-zA-Z]+$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                     
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserFullName"
                                ForeColor="Red" ErrorMessage="Please Enter Client Name" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserFullName"
                                ForeColor="Red" ErrorMessage="Please Enter Client Name" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                       </div>
                    </div>
                    <div class="col">
                        <div class="form-outline ">
                                    <asp:Label ID="lbluserName" runat="server" Text="User Name:" meta:resourcekey="lbluserNameResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserName" CssClass="form-control" runat="server" placeholder="User Name" meta:resourcekey="txtuserNameResource1"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuserName"
                                ForeColor="Red" ErrorMessage="Please Enter UserName" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                         </div>
                    </div>
                </div>
                <div class="form-outline md-4">
                    <div class="col">
                                    <asp:Label ID="lblUniversity" runat="server" Text="University:" meta:resourcekey="UniversityResource1"></asp:Label>
                                    <asp:DropDownList class="form-control" 
                                         Style="width: 100%; height: 40px;" ID="ddlUniversity"
                                                runat="server" AppendDataBoundItems="True" meta:resourcekey="ddlUniversityResource1">
                                                 <asp:ListItem Value="0" Text="Select one " meta:resourcekey="ListItemResource1"></asp:ListItem>
                                     </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlUniversity"
                            ForeColor="Red" ErrorMessage="Please Select University" InitialValue="0" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                 
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col">
                                    <div class="form-outline">
                                        <asp:Label ID="lbluserEmail" runat="server" Text="Email:" meta:resourcekey="lblEmailResource1"></asp:Label>
                                        <asp:TextBox ID="txtuserEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email" meta:resourcekey="txtuserEmailResource1"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuserEmail"
                                            ForeColor="Red" ErrorMessage="Please Enter Client Email" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                    <div class="col">
                        <div class="form-outline">
                                    <asp:Label ID="lbluserPhone" runat="server" Text="Phone Number:" meta:resourcekey="lblPhoneResource1"></asp:Label>
                                    <asp:TextBox ID="txtuserPhone" CssClass="form-control" runat="server" placeholder="Phone Number" meta:resourcekey="txtuserPhoneResource1"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtuserPhone" ErrorMessage="The phone number is invalid"
                                        ForeColor="Red" ValidationExpression="^[0-9]{10}$" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtuserPhone"
                                ForeColor="Red" ErrorMessage="Please Enter Phone Number" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                       </div>
                            </div>
                        </div>
                      

                        <br />
                        <center>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btnUpdate" class="btn-solid-reg mb-5" runat="server" Text="Update" ValidationGroup="x"
                                    OnClick="btnUpdate_Click" meta:resourcekey="btnUpdateResource1"/>
                              <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="x" ForeColor="Red" ></asp:ValidationSummary>
                           
                            </div>
                            </div></center>
                        
                    
                        <div class="row"> <center>
                            <p class="p-large">in order to change your password, please  <a href="ChangePassword.aspx">click here</a></p>
                            </center>
                        </div>
            </div>
        </div>
    </div>
     <br />
    <br />

</asp:Content>

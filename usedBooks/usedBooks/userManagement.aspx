<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userManagement.aspx.cs" Inherits="usedBooks.userManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="//cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet" />
    <%--  --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

      
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
                        <h1 style="font-size: 45px">User Management</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

      <body>
        <form>

              <div class="container">                    
           
             
          <br />
          <br />
         
            
               

                        <div class="card" style="margin-left:auto;">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col">

                                <asp:GridView ID="gvUserManagement" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="userId" Height="250px" Width="802px" 
                                OnRowDeleting="gvUserManagement_RowDeleting" OnRowEditing="gvUserManagement_RowEditing"  OnRowUpdating="gvUserManagement_RowUpdating" meta:resourcekey="gvDriverResource1" PageSize="20">
                                   
                                    <Columns>
                                        <asp:TemplateField HeaderText="Name"  meta:resourcekey="TemplateFieldResource1">
                                           <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("userFullName") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtuserFullName" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <footerTemplate>
                                                <asp:TextBox ID="txtuserFullNameFooter" runat="server"></asp:TextBox>

                                            </footerTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User Name"  meta:resourcekey="TemplateFieldResource1">
                                           <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("userName") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtuserName" runat="server" Text='<%# Bind("userName") %>' meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <footerTemplate>
                                                <asp:TextBox ID="txtuserNameFooter" runat="server"></asp:TextBox>

                                            </footerTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email"  meta:resourcekey="TemplateFieldResource1">
                                           <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("userEmail") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtuserEmail" runat="server" Text='<%# Bind("userEmail") %>' meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <footerTemplate>
                                                <asp:TextBox ID="txtuserEmailFooter" runat="server"></asp:TextBox>

                                            </footerTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Phone"  meta:resourcekey="TemplateFieldResource1">
                                           <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("userPhone") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtuserPhone" runat="server" Text='<%# Bind("userPhone") %>' meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <footerTemplate>
                                                <asp:TextBox ID="txtuserPhoneFooter" runat="server"></asp:TextBox>

                                            </footerTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Password"  meta:resourcekey="TemplateFieldResource1">
                                           <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("userPassword") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtuserPassword" runat="server" Text='<%# Bind("userPassword") %>' meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <footerTemplate>
                                                <asp:TextBox ID="txtuserPasswordFooter" runat="server"></asp:TextBox>

                                            </footerTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField >
                                           <ItemTemplate>
                                             <asp:ImageButton ImageUrl="~/assets/img/Edit.png" runat="server" CommandName="Edit"  ToolTip="Edit" Width="30px" Height="30px" />
                                             <asp:ImageButton ImageUrl="~/assets/img/delete.png" runat="server" CommandName="Delete"  ToolTip="Delete" Width="30px" Height="30px" OnClientClick="return confirm('Are you sure? delete this user?');" />
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                             <asp:ImageButton ImageUrl="~/assets/img/Save.png" runat="server" CommandName="Update"  ToolTip="Save" Width="40px" Height="40px" />
                                              
                                        </EditItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                                          </div>
                                      </div>



                               

                                
                        </div> <%--card-body--%>


                        </div> <%--card--%>

                        
                    </div> <%--container--%>
        </form>


        <br />
             <br />

    </body>

</asp:Content>

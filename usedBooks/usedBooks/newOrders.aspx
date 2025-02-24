<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newOrders.aspx.cs" Inherits="usedBooks.newOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


    
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">New Orders</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

      <body>
        <form>

              <div class="container">
      

                              <asp:Label ID="lblOutput" runat="server" Text=" " CssClass="myFormOutput" meta:resourcekey="lblOutputResource1"></asp:Label>
                        
             
          <br />
          <br />
         
            <div class="card" style="margin-left:auto;">
               <div class="card-body">

                        

                                <div class="row">
                                    <div class="col">

                                <asp:GridView ID="gvDocs"  class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" Height="250px" Width="1060" 
                                 meta:resourcekey="gvDocsResource1" PageSize="20">
                                   
                                    <Columns>
                                  
                <asp:TemplateField HeaderText="Order ID" SortExpression="orderId" meta:resourcekey="orderId" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="TextBox1Resource"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="Label3Resource3" ></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Name" SortExpression="userFullName"  meta:resourcekey="userFullName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="TextBox2Resource" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="Label5Resource3" ></asp:Label>
                    </ItemTemplate>
                     <ItemStyle Width="210px"></ItemStyle>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="User Contact " SortExpression="userPhone"  meta:resourcekey="userPhone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("userPhone") %>' meta:resourcekey="TextBox2Resource5" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbldeviceDefects2" runat="server" Text='<%# Bind("userPhone") %>' meta:resourcekey="lbldeviceDefects2Resource2" ></asp:Label>
                    </ItemTemplate>
 <ItemStyle Width="210px"></ItemStyle>

                 </asp:TemplateField>
                  <asp:TemplateField HeaderText="Book Name" SortExpression="userPhone"  meta:resourcekey="bookName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="TextBox22Resource2" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbldeviceDefects22" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="lbldeviceDefects22Resource2" ></asp:Label> ( <asp:Label ID="Label1" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="Label1Resource4" ></asp:Label> )
                    </ItemTemplate>
                      <ItemStyle Width="210px"></ItemStyle>
                </asp:TemplateField>
            
       
              
                 <%--<asp:TemplateField  HeaderText="Document"  meta:resourcekey="Document">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDownload" runat="server" OnClick="DownloadFile"
                                                    CommandArgument='<%# Bind("orderId") %>' Text='<%# Eval("documentName") %>' meta:resourcekey="lnkDownloadResource2" ></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left"></ItemStyle>
                     <ItemStyle Width="194px"></ItemStyle>
                                        </asp:TemplateField>--%>
                

<%--                      <asp:TemplateField HeaderText="Order State" ItemStyle-Width="110px" meta:resourcekey="TemplateFieldResource6">
                                            <ItemTemplate>
                                                <asp:Button ID="btnDeleteServiceDoc" class="btn btn-outline-danger" runat="server" Text="Delete"
                                                    OnClientClick="return confirm('Are you sure? want to delete the document.');"
                                                    OnClick="btnDeleteServiceDoc_Click" CommandArgument='<%# Bind("orderId") %>' meta:resourcekey="btnDeleteServiceDocResource1" />
                                            </ItemTemplate>

                                            <ItemStyle Width="110px"></ItemStyle>
                                        </asp:TemplateField>--%>
                 <asp:TemplateField HeaderText="Order State"  meta:resourcekey="OrderState">
                                            <ItemTemplate>
                                            <asp:Button ID="btnRejectServiceDoc" class="btn btn-outline-danger" runat="server" Text="Reject"  
                                                    OnClick="btnReject_Click" CommandArgument='<%# Bind("orderId") %>' meta:resourcekey="btnRejectServiceDoc" />
                                           <asp:Button ID="btnAcceptServiceDoc" class="btn btn-outline-success" runat="server" Text="Accept"  
                                                    OnClick="btnAccept_Click" CommandArgument='<%# Bind("orderId") %>' meta:resourcekey="btnAcceptServiceDoc" />
                                                </ItemTemplate>

                                            <ItemStyle Width="194px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                                          </div>
                                      </div>



                               

                                </div>


                        </div>
              </div></form>   
</body>
    <br />
    <br /> <br />
    <br /> <br />
    <br />

</asp:Content>

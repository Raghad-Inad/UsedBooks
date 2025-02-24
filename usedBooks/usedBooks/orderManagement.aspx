<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orderManagement.aspx.cs" Inherits="usedBooks.orderManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--    <head>

        <!-- Title Page-->
        <title>Order Management</title>
    </head>--%>

    <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Order Management</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->



      <body>
        <form>

              <div class="container">
                <center>
                <div class="card" style="margin-left:auto;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                            <asp:GridView ID="gvOrder" runat="server"  class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="orderId"  Height="112px" Width="602px" meta:resourcekey="gvOrderResource1">
                            <Columns>
                                <asp:TemplateField HeaderText="orderId" InsertVisible="False" SortExpression="orderId" meta:resourcekey="orderIdManage">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderId") %>' meta:resourcekey="Label1Resource2"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="Label1Resource3"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="userId" SortExpression="userId" meta:resourcekey="userIdmanage">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="TextBox1Resource2"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="Label2Resource1"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="bookId" SortExpression="bookId" meta:resourcekey="bookIdmanage">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="TextBox2Resource3"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="Label3Resource2"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                              <%--  <asp:TemplateField HeaderText="documentName" SortExpression="documentName" meta:resourcekey="documentNamemanage">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("documentName") %>' meta:resourcekey="TextBox3Resource1"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("documentName") %>' meta:resourcekey="Label4Resource1"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>

                                <asp:TemplateField HeaderText="sentiment" SortExpression="orderSentiment" meta:resourcekey="orderSentimentmanage">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="TextBox4Resource1"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="Label5Resource2"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                 <%-- <asp:TemplateField HeaderText="contentType" SortExpression="contentType">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("contentType") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label6" runat="server" Text='<%# Bind("contentType") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>--%>
                            </Columns>
                            </asp:GridView>
                            </div><%--End of col--%>
                        </div> <%--End of row--%>
                    </div> <%--End of card-body--%>

                                <br />
                                <br />
                          <div class="row">
                                    <br />
                                <br />
                                     <div class="col-md-4">
                                        <asp:Button ID="exportToExcel" type="submit" class="appointment-btn scrollto" style=" width:300px;" runat="server" Text="Export To Excel" OnClick="exportToExcel_Click"  meta:resourcekey="btnExportToExcelResource1" />

                                    </div>
                                   <div class="col-md-4">
                                        <asp:Button ID="exportToWord" type="submit" class="appointment-btn scrollto" style=" width:300px;" runat="server" Text="Export To Word" OnClick="exportToWord_Click"   meta:resourcekey="btnExportToWordResource1" />


                                    </div>

                                 <%-- <div class="col-md-4">
                                        <asp:Button ID="btnExportToPdf" type="submit" class="appointment-btn scrollto" style=" width:300px;" runat="server" Text="ExportToPdf" OnClick="btnExportToPdf_Click" meta:resourcekey="btnExportToPdfResource1"   />

                                    </div>--%>

                                       </div>
                         </div>  <%--End of card--%>
                  </div> <%--End of container--%>
            </center>  
          </form>

</asp:Content>

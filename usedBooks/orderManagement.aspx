<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orderManagement.aspx.cs" 
    EnableEventValidation="false"
    Inherits="usedBooks.orderManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


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



   
          <form>

        <div class="col-lg-10 mx-auto">
        <div class="auto-style2">
            <div class="card-body">
                 <div class="row">
                     <div class="auto-style3">
                         <asp:GridView ID="gvOrder" runat="server" class="table table-striped table-bordered" 
                            AutoGenerateColumns="False" DataKeyNames="bookId" Height="112px" Width="971px" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                            CellSpacing="2" ForeColor="Black">

                             <Columns>
                                 <asp:BoundField DataField="orderId" HeaderText="order No" />
                                 <asp:BoundField DataField="bookId" HeaderText="Book No" />
                                 <asp:TemplateField HeaderText="book name" SortExpression="bookName">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 
                                     <asp:BoundField DataField="bookInfo" HeaderText="bookInfo" />
                                 <asp:BoundField DataField="userFullName" HeaderText="User Name">
                                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="userPhone" HeaderText="User Contact">
                                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="orderSentiment" HeaderText="order Sentiment" />
                                
                                
                             </Columns>

                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                             <RowStyle BackColor="White" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />

                         </asp:GridView>
                         

                     </div><%--End of col--%>
                        </div> <%--End of row--%>
                    
                                <br />
                                <br />
                          <div class="row">
                                    <br />
                                <br />
                                     <div class="col-md-6" style="text-align:center">
                        <asp:Button ID="exportToExcel" type="submit" class="btn-success " Style="width: 300px;" runat="server" 
                            Text="Export To Excel" OnClick="exportToExcel_Click" meta:resourcekey="btnExportToExcelResource1" />

                    </div>
                    <div class="col-md-5" style="text-align:center">
                        <asp:Button ID="exportToWord" type="submit" class="btn-success " Style="width: 300px;" runat="server" Text="Export To Word" OnClick="exportToWord_Click" meta:resourcekey="btnExportToWordResource1" />


                    </div>
                               
                                

                                       </div>
                    <br />
                                <br />
                              
                              <br />
                         </div>  <%--End of card--%>
               <%--End of container--%>
            </center>
              </div>
          </form>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newOrders.aspx.cs" Inherits="usedBooks.newOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <header class="ex-header bg-dark-blue">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1" style="text-align: center;">
                    <h1 style="font-size: 45px">New Orders</h1>
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </header> <!-- end of ex-header -->
        <!-- end of header -->

     

              <div class="container">
      
                   <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                               <div class="alert alert-success" >
                                   The Order has been Saved Successfully!
                               </div>
                           </asp:Panel>
                                <asp:Panel ID="PanelError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   Failed ops
                               </div>
                           </asp:Panel>
                              <asp:Label ID="lblOutput" runat="server" Text=" " CssClass="myFormOutput" meta:resourcekey="lblOutputResource1"></asp:Label>
                        
             
          <br />
          <br />
         
            <div class="card" style="margin-left:auto;">
               <div class="card-body">

                        

                                <div class="row">
                                    <div class="col">
                                        <asp:GridView ID="gvDocs" runat="server" AutoGenerateColumns="False" width="100%"
                                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                                            <Columns>
                                                <asp:BoundField DataField="orderId" HeaderText="Order No" >
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="userFullName" HeaderText="User Name" >
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="userPhone" HeaderText="User Contact" >
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="bookId" HeaderText="Book No" >
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="bookName" HeaderText="Book Name" >
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="orderId" HeaderText="Order No" >
                                                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Order State">
                                                    <ItemTemplate>
                                                           <asp:Button ID="btnRejectServiceDoc" class="btn btn-outline-danger" runat="server" Text="Reject"
                                                    OnClick="btnReject_Click" CommandArgument='<%# Bind("orderId") %>' meta:resourcekey="btnRejectServiceDoc" />
                                                <asp:Button ID="btnAcceptServiceDoc" class="btn btn-outline-success" runat="server" Text="Accept"
                                                    OnClick="btnAccept_Click" CommandArgument='<%# Bind("orderId") %>' meta:resourcekey="btnAcceptServiceDoc" />
                                          
                                                    </ItemTemplate>
                                                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
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
                                <asp:GridView ID="mmm"  class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" Height="250px" Width="1060px" 
                                 meta:resourcekey="gvDocsResource1" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                   
                                    <Columns>

                                        <asp:TemplateField HeaderText="Order ID" SortExpression="orderId" meta:resourcekey="orderId">

                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="Label3Resource3"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User Name" SortExpression="userFullName" meta:resourcekey="userFullName">

                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="Label5Resource3"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="210px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User Contact " SortExpression="userPhone" meta:resourcekey="userPhone">

                                            <ItemTemplate>
                                                <asp:Label ID="lbldeviceDefects2" runat="server" Text='<%# Bind("userPhone") %>' meta:resourcekey="lbldeviceDefects2Resource2"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="210px"></ItemStyle>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Book Name" SortExpression="userPhone" meta:resourcekey="bookName">

                                            <ItemTemplate>
                                                <asp:Label ID="lbldeviceDefects22" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="lbldeviceDefects22Resource2"></asp:Label>
                                                (
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="Label1Resource4"></asp:Label>
                                                )
                                            </ItemTemplate>
                                            <ItemStyle Width="210px"></ItemStyle>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Order State" meta:resourcekey="OrderState">
                                            <ItemTemplate>
                                               </ItemTemplate>

                                            <ItemStyle Width="194px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
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

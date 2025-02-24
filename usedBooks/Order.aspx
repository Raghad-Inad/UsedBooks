<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="usedBooks.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <header class="ex-header bg-dark-blue mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1>Order State</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header>


    
        <form>

            <div class="container">

                 <br />
                <br />

                <div class="card" style="margin-left: auto;">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                <h2>Hold Orders</h2></center>
                                <asp:GridView ID="gvOrder" runat="server" BackColor="White" BorderColor="#999999" Width="100%"
                                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                                    AutoGenerateColumns="false">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="orderId" HeaderText="order No" />
                                        <asp:BoundField DataField="bookId" HeaderText="Book No" />
                                        <asp:BoundField DataField="bookName" HeaderText="Book Name" />
                                        
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                </center>
                            </div>
                        </div>

                    </div>


                </div>

                <br />
                <br />

                <div class="card" style="margin-left: auto;">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                <h2>Accepted Orders</h2></center>
                                <asp:GridView ID="gvState" runat="server" BackColor="White" BorderColor="#999999" Width="100%"
                                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                                    AutoGenerateColumns="false">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="orderId" HeaderText="order No" />
                                        <asp:BoundField DataField="bookId" HeaderText="Book No" />
                                        <asp:BoundField DataField="bookName" HeaderText="Book Name" />
                                        <asp:BoundField DataField="userphone" HeaderText="book Contact" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>

                            </div>
                        </div>

                    </div>


                </div>


                <br />
                <br />

                <div class="card" style="margin-left: auto;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                          <h3>Rejected Orders</h3> </center>
                                <asp:GridView ID="gvOrderRej" runat="server" BackColor="White" BorderColor="#999999" Width="100%"
                                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                                    AutoGenerateColumns="false">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="orderId" HeaderText="order No" />
                                        <asp:BoundField DataField="bookId" HeaderText="Book No" />
                                        <asp:BoundField DataField="bookName" HeaderText="Book Name" />
                                        <asp:BoundField DataField="userphone" HeaderText="book Contact" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>


                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </form>



</asp:Content>

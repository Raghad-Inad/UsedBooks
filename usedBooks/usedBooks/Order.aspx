<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="usedBooks.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


    <head>

        <!-- Title Page-->
        <title>Order State</title>

    </head>
      <body>
          <center> 
        <form>

              <div class="container">
                <div class="row">
                    <div class="col mx-auto">
                    <div class="card" style="margin-left:auto;">
                        <div class="card-body">
                        </div>

                        <div class="row">
                            <div class="col">
                            <center>
                                <h4><asp:Localize ID="Localize1" meta:resourceKey="Localize1Resource1" text="Your Order State"  runat="server"></asp:Localize></h4>
                            </center>
                            </div>
                        </div>
                    </div>
             <br />
             <br />
               
                    <div class="card" style="margin-left:auto;">
                        <div class="card-body">
                        </div>

                        <div class="row">
                            <div class="col">
                            <center>
                                <h4><asp:Localize ID="Localize2" meta:resourceKey="Localize1Resource11" text="Accepted Orders" runat="server"></asp:Localize></h4>
                            </center>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>

                       
           
             
          <br />
          <br />
         
            <div class="card" style="margin-left:auto;">
               <div class="card-body">

                        

                                <div class="row">
                                    <div class="col">
                            <center>
                                <asp:GridView ID="gvState" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" Height="250px" Width="802px" 
                                 meta:resourcekey="gvStateResource1" PageSize="20">
                                   
                                    <Columns>
                                    <asp:TemplateField HeaderText="orderId" SortExpression="orderId" meta:resourcekey="orderIdResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="TextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("orderId") %>'  meta:resourcekey="Label4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="userId" SortExpression="userId" visible="false" meta:resourcekey="userIdResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="userIdResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="userIdResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="bookId" SortExpression="bookId" visible="false" meta:resourcekey="bookIdResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="bookIdResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="bookIdResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name" SortExpression="userFullName" meta:resourcekey="userFullNameResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="userFullNameResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="userFullNameResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="bookName" SortExpression="bookName" meta:resourcekey="bookNameResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="bookNameResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="bookNameResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="sentiment" SortExpression="orderSentiment" meta:resourcekey="orderSentimentResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="orderSentimentResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="orderSentimentResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="For Contact" SortExpression="bookContact" meta:resourcekey="bookContactResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("bookContact") %>' meta:resourcekey="bookContactResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("bookContact") %>' meta:resourcekey="bookContactResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                    </Columns>
                                </asp:GridView> </center>

                                          </div>
                                      </div>



                               

                                </div>


                        </div>
                    </div>
           
            <br />
            <br />

            <div class="container">
      <div class="row">

         <div class="col mx-auto">

          <div class="card" style="margin-left:auto;">
                            <div class="card-body">

                            </div>
                                <div class="row">
                                    <div class="col">
                                         <center>
                  <h4><asp:Localize ID="Localize4" meta:resourceKey="Localize1Resource111" text="Rejected Orders" runat="server"></asp:Localize></h4>

                        </center>
                                    </div>
                                    </div>
                                                      </div>
                        </div>
                          </div>

                       
           
             
          <br />
          <br />
         <center>
            <div class="card" style="margin-left:auto;">
               <div class="card-body">

                        

                                <div class="row">
                                    <div class="col">

                                <asp:GridView ID="gvOrderRej"  runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" class=" table-striped table-bordered" Height="112px" Width="602px" 
                                 meta:resourcekey="gvOrderRejResource1" PageSize="20">
                                   
                                    <Columns>
                                    <asp:TemplateField HeaderText="orderId" SortExpression="orderId" meta:resourcekey="orderIdResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox31" runat="server" Text='<%# Bind("orderId") %>' meta:resourcekey="orderIdResource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label41" runat="server" Text='<%# Bind("orderId") %>'  meta:resourcekey="orderIdResource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="userId" SortExpression="userId" visible="false" meta:resourcekey="userIdTemplateFieldResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="userIdTextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userId") %>' meta:resourcekey="userIdLabel4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="bookId" SortExpression="bookId" visible="false" meta:resourcekey="bookIdTemplateFieldResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox51" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="bookIdTextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label61" runat="server" Text='<%# Bind("bookId") %>' meta:resourcekey="bookIdLabel4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name" SortExpression="userFullName" meta:resourcekey="userFullNameTemplateFieldResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox91" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="userFullNameTextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label91" runat="server" Text='<%# Bind("userFullName") %>' meta:resourcekey="userFullNameLabel4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="bookName" SortExpression="bookName" meta:resourcekey="bookNameTemplateFieldResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox101" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="bookNameTextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("bookName") %>' meta:resourcekey="bookNameLabel4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="sentiment" SortExpression="orderSentiment" meta:resourcekey="orderSentimentFieldResource4">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox61" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="orderSentimentTextBox3Resource1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label71" runat="server" Text='<%# Bind("orderSentiment") %>' meta:resourcekey="orderSentimentLabel4Resource1"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                        
                                    </Columns>
                                </asp:GridView>

                                          </div>
                                      </div>



                               
                   </center>
                                </div>


                        </div>
                    </div>
        </form>


        <br />
             <br />
        </center>
    </body>

</asp:Content>

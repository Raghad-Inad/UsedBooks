<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="needy.aspx.cs" Inherits="usedBooks.needy"
    EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
            <!-- Header -->
    <header class="ex-header bg-dark-blue">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1" style="text-align: center;">
                    <h1 style="font-size: 45px">Used Books</h1>
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </header> <!-- end of ex-header -->
        <!-- end of header -->

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="rptr" style ="margin-left:20%">

                <table>
                    <tr>
                        <td>
                        <tr>
                            <td colspan="2">
                                <h2>Book ID : <%#Eval("bookId") %></h2>
                            </td>
                        </tr>


                    <tr>
                        <td class="contactPhoto" style="vertical-align: top; padding: 20px">


                            <asp:Image ID="Image1" ImageUrl='<%#"~/BookImage/"+Eval("bookPic") %>' runat="server" Width="200px" Height="200px" />
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td class="newStyle1">Vendor Name</td>
                                    <td><%#Eval("userFullName") %></td>
                                </tr>
                                <tr>
                                    <td class="newStyle1">Book Name</td>
                                    <td><%#Eval("bookName") %>
                                </tr>
                                <tr>
                                    <td class="newStyle1">Author Name</td>
                                    <td><%#Eval("bookAuthor") %></td>

                                </tr>
                                <tr>
                                    <td class="newStyle1">Book Information</td>
                                    <td><%#Eval("bookInfo") %></td>
                                </tr>
                                <tr>
                                    <td class="newStyle1">Book Defects</td>
                                    <td><%#Eval("bookDef") %></td>
                                </tr>
                                <tr>
                                    <td class="newStyle1">Book Contact</td>
                                    <td><%#Eval("userPhone") %></td>
                                </tr>
                                <tr>
                                    <td class="newStyle1">Book Price</td>
                                    <td><%#Eval("bookPrice") %></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Button1" class="btn-solid-reg mb-5" runat="server" Text="Buy Book"
                                            Style="height: 40px"
                                           CommandArgument='<%#Eval("BookId") %>' OnClick="Button1_Click" />

                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </div>

        </ItemTemplate>

    </asp:Repeater>                                        <br />
             

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="needy.aspx.cs" Inherits="usedBooks.needy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <html>     
    <%--<style type="text/css">
   
.rptr table
{
 background: #eee;
 font: 14px segoe ui;
 border-collapse: collapse;
 width: 30%;
 margin: 5px;
 float: left;
}
.rptr table th
{
 background: #043127;
 color: #fff;
 padding: 8px 10px;
 text-align: left;
}
.rptr table td
{
 padding: 5px 10px;
}
        .itemFieldset {
            float: left;
            width: 400px;
            margin-left: 10px;
        }
        .contactPhoto {
     width: 25%; 
    padding-left: 10px;
    text-align:right;
}
        .newStyle1 {
            font-family: Arial;
            font-style: normal;
            text-decoration: underline;
            font-weight: bold;
        }
        
    </style>--%>

  </html>

    
        <br /><p>
        <br />
           <br />
             <br />

             <br />
            <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Used Books</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
            <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
          <div class="rptr">







          <table>
              <div class="row">
           
          
        
         <tr><td>  <tr><th colspan="4">Book ID <%#Eval("bookId") %></th></tr>
           
           
           
   <tr> <td class="contactPhoto"> 
              <%-- <img src="maidImage/2.png" Width="100px" Height="110px" ResizeMode="fit" /></td></tr>
               --%>
          <tr><td>
             
              <%--<asp:ImageButton ID="ImageButton1" runat="server" /><%#Eval("bookPic") %>--%>
            <%--<asp:Image ID="Image1" runat="server"--%> <%--<a href="Somepage.aspx"><asp:Image id="Image2" runat="server" value="bookPic"/></a> </td><td><%#Eval("bookPic") %>--%>
              <asp:Image ID="Image1" ImageUrl='<%#Eval("bookPic") %>' runat="server" Width="90px" Height="90px" />
              <tr><td class="newStyle1">Vendor Name</td><td><%#Eval("userFullName") %></td></tr>
              <tr><td class="newStyle1">Book Name</td><td><%#Eval("bookName") %>
             <%--<td class="newStyle1"> Note :  </td>--%>
               </tr>
          <tr><td class="newStyle1">Author Name</td><td><%#Eval("bookAuthor") %></td>
          <td><%#Eval("bookSentiment") %></td>
          </tr>
          <tr><td class="newStyle1">Book Information</td><td><%#Eval("bookInfo") %></td></tr>
          <tr><td class="newStyle1">Book Defects</td><td><%#Eval("bookDef") %></td></tr>
              <tr><td class="newStyle1">Book Contact</td><td><%#Eval("bookContact") %></td></tr>
              <tr><td class="newStyle1">Book Price</td><td><%#Eval("bookPrice") %></td></tr>
       <%--   <tr><td class="newStyle1">ExperienceYears:</td><td><%#Eval("experienceYears") %></td></tr>--%>
              

          
              <tr><td> <asp:Button ID="Button1" class= "btn-solid-reg mb-5" runat="server" Text="Book" style="height: 40px; width: 100px;"  /> </tr></td>
         </div>
           </table>

          </div>

      </ItemTemplate>
  
    </asp:Repeater>                                        <br />
                <br />
 <br />
                <br />
                <br /> 
                <br />
                <br /> <br />
                <br />
                <br /> <br />
                <br />
                <br />   
  <br />
                <br />
                <br /> <br />
                <br />
                <br />
             <br />
                <br />
                <br /> <br />
                <br />
                <br />

</asp:Content>

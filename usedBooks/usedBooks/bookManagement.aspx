<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookManagement.aspx.cs" Inherits="usedBooks.bookManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
    </p>
    <p>
    </p>   
    <p>
        <br />
        <br />
    </p>
    <p>
    </p>
    <p>
    <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/fontawesome-all.min.css" rel="stylesheet">
        <link href="css/swiper.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

        <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Book Management</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
        <div class="container">
    <div class="view-account">
        <section class="module">
            <div class="module-inner">
                <div class="content-panel">
                            <div class="ex-basic-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div style="text-align:center;">
                            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                            <h0>Hello Admin if you want to see the books click on the All The Books. </h0>
                           </div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->

                    <!--Book inputs Form-->
        <!-- Basic -->
        <div style="text-align:center;">
        <div class="ex-basic-1 pt-3 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" >
                        
                            <br />
                            <center>
                            <div class="form-group">
                                <label><span style="font-size: 20px">Book Name</span><span style="font-size: 36px"> </span> </label>
                                <div class="auto-style4" >
                                    <asp:TextBox ID="txtbookname" runat="server" CssClass="form-control" Width="600px" Height="50px" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                            </center>

                            <br />
                            <center>
                            <div class="form-group">
                                <label>Author Name </label>
                                <div class="auto-style4">
                                    <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div></center>

                            <br />
                            <center>
                            <div class="form-group">
                                <label>Book information </label>
                                <div class="auto-style4">
                                    <asp:TextBox ID="txtbookinfo" runat="server" CssClass="form-control" Width="470px" Height="94px" TextMode="MultiLine" placeholder="Make a note of any basic information about the book, such as its subject, publisher, or any other valuable information."></asp:TextBox>
                                </div>
                            </div></center>

                            <br />
                            <div class="form-group">
                                <div class="form-group">
                                    <label>Book Defects </label>
                                    <center>
                                    <div class="auto-style6">
                                        <asp:TextBox ID="txtbookDef" runat="server" CssClass="form-control" Width="470px" TextMode="MultiLine" Height="94px" placeholder="What is the defects of the book"></asp:TextBox>
                                    </div></center>
                                </div>
                                
                                <br />
                                <div class="form-group">
                                    <label>Price </label>
                                    <center>
                                    <div class="auto-style6">
                                        <asp:TextBox ID="txtbookPrice" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="In Riyal"></asp:TextBox>
                                    </div></center>
                                </div>

                                <br /> 
                                <br />
                                <fieldset class="fieldset">
                                    <h3 class="fieldset-title">Contact Info</h3>
                                    <div class="form-group">
                                        <label>Contact Number </label>
                                        <div class="auto-style5">
                                            <asp:TextBox ID="txtbookContact" runat="server" CssClass="auto-style3" Width="470px" Height="50px" placeholder="05XXXXXXXX"></asp:TextBox>
                                            <p class="help-block"> This is the contact number </p>
                                        </div>
                                    </div>
                            </div>
                            </fieldset>
                            <hr>
                            <ce
                        <div class="form-group" >
                            <div class="auto-style7">
                                  <asp:Button ID="Button1" runat="server" class="btn-solid-reg mb-5"  Text="Add" OnClick="btnAdd_Click" style="font-size: large" meta:resourcekey="btnAddResource1"/>
                                  <asp:Button ID="Button2" runat="server" Text="Update" class="btn-solid-reg mb-5" OnClick="btnUpdate_Click" style="font-size: large" meta:resourcekey="btnUpdateResource1" />
                                  <asp:Button ID="Button3" runat="server" Text="Clear" class="btn-solid-reg mb-5" OnClick="btnClear_Click" style="font-size: large"  meta:resourcekey="btnClearResource1"/>
                                  <asp:Button ID="Button4" runat="server" Text="Delete" class="btn-solid-reg mb-5" OnClick="btnDelete_Click" style="font-size: large" OnClientClick="return confirm('Are you sure? delete this babySitter ?');" meta:resourcekey="btnDeleteResource1"/>
                                <br />
                                <div class="row">
                                    <div class="col-md-8" style="margin-left: 17%">
                                       <asp:Button ID="btnGridView" runat="server" class="btn btn-md btn-block btn-outline-secondary" OnClick="btnGridView_Click1" Text="All The Books" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    
                        </div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        </div> <!-- end of basic -->
        <!--End of Book inputs Form-->
                        <hr>

                                <br />
                                <br />

                                
                                <br />

                                <br />

                                
                                <br />

                                <br />


                            </div>
                        </div>

                       
           
             </div>
             
             <br />

                        <br />
                        <br />

                        <br />

             <div class="col-lg-10 mx-auto">
                   <br />

                        <br />

            <div class="auto-style2">
               <div class="card-body">

                        

                                <div class="row">
                                    <div class="auto-style3">

<asp:GridView ID="gvBooks" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="bookId"  Height="112px" Width="971px"  >
            
            <Columns>
                 <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="bookId" meta:resourcekey="TemplateFieldResource1">
                                            <%--<EditItemTemplate>
                                                <asp:Label ID="lbldeviceId2" runat="server" Text='<%# Eval("deviceId") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                            </EditItemTemplate>--%>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lblbookId" runat="server" Text='<%# Bind("bookId") %>'
                                                    OnClick="GetbookData" ></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
              <%--  <asp:TemplateField HeaderText="deviceId" InsertVisible="False" SortExpression="deviceId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("deviceId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("deviceId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="book name" SortExpression="bookName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author Name" SortExpression="bookAuthor">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookAuthor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("bookAuthor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Book information" SortExpression="bookInfo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookInfo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblbookInfo" runat="server" Text='<%# Bind("bookInfo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="durationOfUseId" SortExpression="durationOfUseId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("durationOfUseId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("durationOfUseId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="Book Defects" SortExpression="bookDef">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bookDef") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("bookDef") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="devicePicture" SortExpression="devicePicture">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("devicePicture") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("devicePicture") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="contactNumber" SortExpression="bookContact">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("bookContact") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("bookContact") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price" SortExpression="bookPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("bookPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("bookPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="sentiment" SortExpression="sentiment">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("sentiment") %>' />
                    </EditItemTemplate>
                   <%-- <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("sentiment") %>' Enabled="false" />
                    </ItemTemplate>--%>
               <%-- </asp:TemplateField>--%>
            </Columns>
       
                                </asp:GridView>

                                          </div>
                                      </div>



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

                                

                                        </div>
                   <center>
   
        

</center>
                            </div>


                        </div>
                    </div>
                


        <br />
             <br />

    

    </div>
    </div>
    </div>
    </div>
</asp:Content>

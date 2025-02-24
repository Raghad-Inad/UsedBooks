<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    EnableEventValidation="false"
    CodeBehind="bookManagement.aspx.cs" Inherits="usedBooks.bookManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
        <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Book Management</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> 
    <!-- end of ex-header -->
        <!-- end of header -->
        <div class="col-lg-10 mx-auto">
        <div class="auto-style2">
            <div class="card-body">
                <div class="ex-basic-1 pt-5 pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div style="text-align: center;">
                                    <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                                        <div class="alert alert-success">
                                            The book has been Saved Successfully!
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelError" runat="server" Visible="false">
                                        <div class="alert alert-danger">
                                            Failed ops
                                        </div>
                                    </asp:Panel>
                                    <h2>Hello Admin, here is a list of all the books. </h2>
                                </div>
                            </div>
                            <!-- end of col -->
                        </div>
                        <!-- end of row -->
                    </div>
                    <!-- end of container -->
                </div>
                <div class="row">
                    <div class="auto-style3">

                        <asp:GridView ID="gvBooks" runat="server" class="table table-striped table-bordered" 
                            AutoGenerateColumns="False" DataKeyNames="bookId" Height="112px" Width="971px" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                            CellSpacing="2" ForeColor="Black"  >

                            <Columns>
                                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="bookId" meta:resourcekey="TemplateFieldResource1">

                                    <ItemTemplate>
                                        <asp:LinkButton ID="lblbookId" runat="server" ForeColor="Blue" Text='<%# Bind("bookId") %>'
                                            CommandArgument='<%# Bind("bookId") %>'
                                            OnClick="GetbookData"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

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

                                <asp:TemplateField HeaderText="Book Defects" SortExpression="bookDef">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bookDef") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("bookDef") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Price" SortExpression="bookPrice">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("bookPrice") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label81" runat="server" Text='<%# Bind("bookPrice") %>'></asp:Label>
                                    </ItemTemplate>
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

                    </div>
                </div>

                <br />
                <br />

                <div class="row">

                    <div class="col-md-6" style="text-align:center">
                        <asp:Button ID="exportToExcel" type="submit" class="btn-success " Style="width: 300px;" runat="server" Text="Export To Excel" OnClick="exportToExcel_Click" meta:resourcekey="btnExportToExcelResource1" />

                    </div>
                    <div class="col-md-6" style="text-align:center">
                        <asp:Button ID="exportToWord" type="submit" class="btn-success " Style="width: 300px;" runat="server" Text="Export To Word" OnClick="exportToWord_Click" meta:resourcekey="btnExportToWordResource1" />


                    </div>



                </div>
                <center>
   
        

</center>
            </div>


        </div>
    </div>
        <div class="container">
    <div class="view-account">
        <section class="module">
            <div class="module-inner">
                <div class="content-panel">
                     <!-- end of ex-basic-1 -->
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
                                    <asp:TextBox ID="txtbookname" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="Book Name"></asp:TextBox>
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
                               
                            <hr>
                            
                        <div class="form-group" >
                            <div class="auto-style7">
                                  <asp:Button ID="Button2" runat="server" Text="Update" class="btn-solid-reg mb-5" OnClick="btnUpdate_Click" style="font-size: large" meta:resourcekey="btnUpdateResource1" />
                                  <asp:Button ID="Button3" runat="server" Text="Clear" class="btn-solid-reg mb-5" OnClick="btnClear_Click" style="font-size: large"  meta:resourcekey="btnClearResource1"/>
                                  <asp:Button ID="Button4" runat="server" Text="Delete" class="btn-solid-reg mb-5" OnClick="btnDelete_Click" style="font-size: large" OnClientClick="return confirm('Are you sure? delete this Book ?');" meta:resourcekey="btnDeleteResource1"/>
                                <br />
                                

                            </div>
                        </div>
                    
                        </div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        </div> 
                        <hr>
                            </div>
                </div>
            </section>
                        </div>
             </div>
             
           

    
                


        <br />
             <br />

    

  
</asp:Content>

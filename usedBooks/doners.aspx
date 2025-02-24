<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="doners.aspx.cs" Inherits="usedBooks.doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header -->
        <header class="ex-header bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1 style="font-size: 45px">Book Information</h1>
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
                             <asp:Panel ID="Panelsuccess" runat="server" Visible="false">
                               <div class="alert alert-success" >
                                   Book saved successfully
                               </div>
                           </asp:Panel>
                                <asp:Panel ID="PanelError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   Failed Operation! Please Try Again
                               </div>
                           </asp:Panel>
                                <asp:Panel ID="PanelImgError" runat="server" Visible="false">
                               <div class="alert alert-danger" >
                                   Image is not valid please reupload another one
                               </div>
                           </asp:Panel>
                            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="x" runat="server" ForeColor="Red" />
                            <h3>Here you can offer your textbook for sale, put the book's information such as its name, author's name, year of publication, and any other information you want to add. </h3>
                            <p class="fst-italic" style="text-align: center; background=#3fbbc0" > A photo of the book is required</p>
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
                        <div class="form-group avatar" >
                            <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                            <!--</figure>--><br />
                            <center>
                            <div class="auto-style6" >
                                <div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" OnDataBinding="FileUpload1_DataBinding" />
                                    <br />
                                    <br />
                                    <%--<asp:Button /ID="btnUpload" Text="Upload" runat="server" class="btn-solid-reg mb-10" OnClick="UploadFile" style="font-size: large" />--%>
                                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>

                                <!--<hr />-->

                                <br />
                            </div></center>
                            <br />
                            <center>
                            <div class="form-group">
                                <label><span style="font-size: 20px">Book Name</span><span style="font-size: 36px"> </span> </label>
                                <div class="auto-style4" >
                                    <asp:TextBox ID="txtbookname" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="Book Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbookname"
                                    ForeColor="Red" ErrorMessage="Please fill Book Name" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            </center>

                            <br />
                            <center>
                            <div class="form-group">
                                <label>Author Name </label>
                                <div class="auto-style4">
                                    <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="Author Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAuthorName"
                                    ForeColor="Red" ErrorMessage="Please fill Author Name" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                </div>
                            </div></center>

                            <br />
                            <center>
                            <div class="form-group">
                                <label>Book information </label>
                                <div class="auto-style4">
                                    <asp:TextBox ID="txtbookinfo" runat="server" CssClass="form-control" Width="470px" Height="94px" TextMode="MultiLine" placeholder="Make a note of any basic information about the book, such as its subject, publisher, or any other valuable information."></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbookinfo"
                                    ForeColor="Red" ErrorMessage="Please fill Book information" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                </div>
                            </div></center>

                            <br />
                          
                                <div class="form-group">
                                    <label>Book Defects </label>
                                    <center>
                                    <div class="auto-style6">
                                        <asp:TextBox ID="txtbookDef" runat="server" CssClass="form-control" Width="470px" TextMode="MultiLine" Height="94px" placeholder="What is the defects of the book"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbookDef"
                                        ForeColor="Red" ErrorMessage="Please fill Book Defects" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                    </div></center>
                                </div>
                                
                                <br />
                                <div class="form-group">
                                    <label>Price </label>
                                    <center>
                                    <div class="auto-style6">
                                        <asp:TextBox ID="txtbookPrice" runat="server" CssClass="form-control" Width="470px" Height="50px" placeholder="In Riyal"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbookPrice"
                                        ForeColor="Red" ErrorMessage="Please fill Price" Text="*" ValidationGroup="x"></asp:RequiredFieldValidator>
                                    </div></center>
                                </div>

                                <br /> 
                                <br />
                              
                            <hr>
                            
                        <div class="form-group" >
                            <div class="auto-style7">
                                 <asp:Button ID="Button2" runat="server" Text="Submit" class="btn-solid-reg mb-5"
                                     OnClick="btnSubmit_Click" style="font-size: large" ValidationGroup="x" />
                                 
                                  <asp:Button ID="Button1" runat="server" class="btn-solid-reg mb-5"  Text="Cancel" OnClick="btnCancel_Click" style="font-size: large" />
                                  <br />
                                
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
                    
                        
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>

</asp:Content>

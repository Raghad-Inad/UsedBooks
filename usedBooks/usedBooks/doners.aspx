<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="doners.aspx.cs" Inherits="usedBooks.doners" %>
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
                            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                            <h0>Here you can offer your textbook for sale, put the book's information such as its name, author's name, year of publication, and any other information you want to add. </h0>
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
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br />
                                    <br />
                                    <asp:Button ID="btnUpload" Text="Upload" runat="server" class="btn-solid-reg mb-10" OnClick="UploadFile" style="font-size: large" />
                                </div>

                                <!--<hr />-->

                                <br />
                            </div></center>
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
                                  <asp:Button ID="Button1" runat="server" class="btn-solid-reg mb-5"  Text="Cancel" OnClick="btnCancel_Click" style="font-size: large" />
                                  <asp:Button ID="Button2" runat="server" Text="Submit" class="btn-solid-reg mb-5" OnClick="btnSubmit_Click" style="font-size: large" />
                                  <br />

                            </div>
                        </div>
                    </form>
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

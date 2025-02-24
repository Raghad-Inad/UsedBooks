<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="usedBooks.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
 
 <!-- Header -->
        <header class="ex-header bg-dark-blue mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1" style="text-align:center;">
                        <h1>Contact Us</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->

                        <p class="mb-5" style="text-align:center;">If you have any questions about our services, or you face any problems, please contact us</p>




    <center> 
    <fieldset class="auto-style3">
            
               
            <asp:Label ID="lblOutput" runat="server" Text=" " CssClass="myFormOutput" meta:resourcekey="lblOutputResource1" ></asp:Label><br />

            <asp:Label ID="lblFrom" meta:resourseKey="lblFrom" runat="server" Text=" From-Email:" CssClass="myFormCaption" meta:resourcekey="lblFromResource1" ></asp:Label>
            <asp:TextBox ID="txtSenderEmail" CssClass="form-control" runat="server" Height="38px" Width="450px" meta:resourcekey="txtSenderEmailResource1" placeholder="Email"></asp:TextBox>
        <br />
              <br />
            <asp:Label ID="lblSubject" meta:resourseKey="lblSubject" runat="server" Text=" Subject:" CssClass="myFormCaption" meta:resourcekey="lblSubjectResource1"></asp:Label>
            <asp:TextBox ID="txtSubject" CssClass="form-control"  runat="server" Width="450px" TabIndex="1" meta:resourcekey="txtSubjectResource1" placeholder="Subject"></asp:TextBox>

          
               
            <br />
           
            <asp:Label ID="lblMessage" runat="server" Text=" Message:" meta:resourseKey="lblMessage"  CssClass="myFormCaption" meta:resourcekey="lblMessageResource1"></asp:Label>
              <br />
              <div class="form-group mt-3">
               <asp:TextBox ID="txtBody" CssClass="form-control" runat="server" Height="157px" Width="450px" TextMode="MultiLine" meta:resourcekey="txtBodyResource1" placeholder="Message" ></asp:TextBox>
              </div>
        
              <br />
               <asp:Button ID="btnSendMailViaMailMgr" meta:resourseKey="btnSendMailViaMailMgr" runat="server" class="btn-solid-reg mb-5" OnClick="btnSendMailViaMailMgr_Click" 
                Text="Send " TabIndex="4" meta:resourcekey="btnSendMailViaMailMgrResource1"  />
            <asp:Button ID="btnClear" runat="server" meta:resourseKey="btnClear" class="btn-solid-reg mb-5" OnClick="btnClear_Click" Text="Clear" meta:resourcekey="btnClearResource1"  />
            <br />
              <br />
              <br />

        </fieldset> </center>
</asp:Content>

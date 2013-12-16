<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="librarians_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="page-header"><h2>Librarian</h2></div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">Materials</div>
                    <div class="panel-body">
                        <center>
                            <asp:Button ID="Button1" runat="server" Text="View Material" CssClass="btn btn-default btn-lg"></asp:Button>
                            <br /><br /><asp:Button ID="Button2" runat="server"  CssClass="btn btn-default btn-lg" Text="Add New Material"></asp:Button>
                        </center>
                    </div>
                </div> 
            </div>
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">Patrons</div>
                    <div class="panel-body">
                        <center>
                            <asp:Button ID="Button3" runat="server" Text="View Patrons" CssClass="btn btn-default btn-lg"></asp:Button>
                             <br /><br /><asp:Button ID="Button4" runat="server" Text="Add New Patron" CssClass="btn btn-default btn-lg"></asp:Button>
                        </center>
                    </div>
                </div> 
            </div>
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">Rent & Return</div>
                    <div class="panel-body">
                        <center>
                            <asp:Button ID="Button5" runat="server" Text="Rent" CssClass="btn btn-default btn-lg"></asp:Button>
                             <br /><br /><asp:Button ID="Button6" runat="server" Text="Return" CssClass="btn btn-default btn-lg"></asp:Button>
                        </center>
                    </div>
                </div> 
            </div>
        </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li class="active">Librarian Home</li>
          </ol>
        </div>
    </div>
</asp:Content>


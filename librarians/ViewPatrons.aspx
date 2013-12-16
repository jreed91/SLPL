<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewPatrons.aspx.vb" Inherits="librarians_ViewPatrons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="row">
             <div class="page-header">
                 <h2>Current Patrons</h2>
             </div>
         </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                     <div class="input-group input-group-md" id="searchmaterial">
                            <asp:TextBox ID="tbSearch" AutoPostBack="true" Placeholder="Search by Name"  runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" />
                            </span>
                    </div>
                </div>
                <div class="col-md-2 pull-right">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-default" Text="Add a New Patron" />
                </div> 
            </div>
        <div class="row">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" GridLines="None" CssClass="table table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="PatronID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="PatronID" HeaderText="PatronID" ReadOnly="True" SortExpression="PatronID" Visible="False" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:HyperLinkField DataNavigateUrlFields="PatronID" DataNavigateUrlFormatString="PatronDetails.aspx?PatronID={0}" Text="View Details" />
                    </Columns>
                </asp:GridView>
                </div>
            </div>
         <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li class="active">View Patrons</li>
          </ol>
        </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT PatronID, FirstName, LastName FROM Patron"></asp:SqlDataSource>
</asp:Content>


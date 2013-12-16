<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CurrentRented.aspx.vb" Inherits="librarians_CurrentRented" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h2>Currently Rented Materials</h2>
        </div>
        <div class="row">
                <div class="col-md-4 col-md-offset-4">
                     <div class="input-group input-group-md" id="searchmaterial">
                            <asp:TextBox ID="tbSearch" AutoPostBack="false" Placeholder="Search by Patron Name"  runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" />
                            </span>
                    </div>
                </div>
            <div class="pull-right">
                <asp:Button ID="btnOverdue" CssClass="btn btn-default"  runat="server" Text="View Overdue" />
            </div>
            </div>
        <div class="row">
            <div class="table-responsive">

            </div>
        </div>
    <asp:GridView ID="GridView1" GridLines="None" CssClass="table table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CheckoutID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CheckoutID" HeaderText="CheckoutID" InsertVisible="False" ReadOnly="True" SortExpression="CheckoutID" Visible="False" />
            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" SortExpression="MaterialID" Visible="False" />
            <asp:BoundField DataField="PatronID" HeaderText="PatronID" SortExpression="PatronID" Visible="False" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="DateCheckedOut" HeaderText="Date Checked Out" DataFormatString="{0:MM/dd/yyyy}" SortExpression="DateCheckedOut" />
            <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" DataFormatString="{0:MM/dd/yyyy}" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:HyperLinkField DataNavigateUrlFields="PatronID" Text="View Patron" DataNavigateUrlFormatString="PatronDetails.aspx?PatronID={0}" />
        </Columns>
    </asp:GridView>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li class="active">Currently Rented</li>
          </ol>
        </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT CheckOut.CheckoutID, CheckOut.DateCheckedOut, CheckOut.DueDate, CheckOut.MaterialID, CheckOut.PatronID, Patron.FirstName, Patron.LastName, Material.Title, Material.Author FROM CheckOut INNER JOIN Patron ON CheckOut.PatronID = Patron.PatronID INNER JOIN Material ON CheckOut.MaterialID = Material.MaterialID"></asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="patrons_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="page-header">
                    <h2>Your Profile</h2>
                </div>
        <asp:FormView ID="FormView1" RenderOuterTable="False" runat="server" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <div class="page-header">
                    <h2>Sorry No Data Found</h2>
                </div>
            </EmptyDataTemplate>
            <ItemTemplate>
               <div class="row">
                   <div class="col-md-12">
                       <ul class="nav nav-pills">
                          <li><a href="#home" data-toggle="tab">Home</a></li>
                          <li><a href="#profile" data-toggle="tab">Profile</a></li>
                          <li><a href="#checkedout" data-toggle="tab">Books Checked Out</a></li>
                       </ul>
                        <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane active" id="home">
                      <div class="row">
                          <div class="col-md-8">
                              <h2><asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>' /> <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>' /></h2>
                          </div>
                      </div>
                      
                  </div>
                  <div class="tab-pane" id="profile"><br />
                      <div class="row">
                          <div class="col-md-3 col-md-offset-1">
                              <strong>Birth Date:</strong> <asp:Label ID="Label9" runat="server" Text='<%# Bind("BirthDate") %>' /><br />
                              <strong>Email:</strong> <asp:Label ID="Label10" runat="server" Text='<%# Bind("Email") %>' /><br />
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-3 col-md-offset-1">
                              <strong>Address:</strong>
                              <address>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address1") %>' /><br />
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address2") %>'  />
                                  <asp:Label ID="Label21" runat="server" Text='<%# Bind("City") %>' />, <asp:Label ID="Label22" runat="server" Text='<%# Bind("State")%>' /> <asp:Label ID="Label23" runat="server" Text='<%# Bind("Zip") %>' /><br />
                                  <abbr title="Phone">P:</abbr> <asp:Label ID="Label24" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                              </address>
                          </div>
                      </div>
                    </div>
                  <div class="tab-pane" id="checkedout">
                      <div class="row">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" GridLines="None" CssClass="table table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="PatronID" HeaderText="PatronID" SortExpression="PatronID" Visible="False"  />
                                    <asp:BoundField DataField="DateCheckedOut" HeaderText="Date Checked Out" SortExpression="DateCheckedOut" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" DataFormatString="{0:d}" />
                                    <asp:TemplateField HeaderText="Cover" SortExpression="ImagePath">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="100px" Width="80px" ImageUrl='<%# Bind("ImagePath") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" SortExpression="MaterialID" Visible="False" />
                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" /> 
                                </Columns>

                                <EmptyDataTemplate>
                                    <h2>Sorry, you have no books checked out.</h2>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
               

               
               
    </ItemTemplate> 
        </asp:FormView>
        
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT Patron.PatronID, CheckOut.DateCheckedOut, CheckOut.DueDate, CheckOut.MaterialID, Material.MaterialID AS Expr1, Material.Title, Material.Author, Material.ImagePath FROM Patron INNER JOIN CheckOut ON Patron.PatronID = CheckOut.PatronID INNER JOIN Material ON CheckOut.MaterialID = Material.MaterialID WHERE Patron.PatronID = @PatronID">
        <SelectParameters>
            <asp:Parameter Name="PatronID" Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [PatronID], [FirstName], [LastName], [Address1], [BirthDate], [Address2], [City], [State], [Zip], [PhoneNumber], [Email] FROM [Patron] WHERE ([PatronID] = @PatronID)">
    <SelectParameters>
            <asp:Parameter Name="PatronID" Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>


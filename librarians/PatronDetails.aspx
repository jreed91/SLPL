<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PatronDetails.aspx.vb" Inherits="librarians_PatronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(function () {
            $('#myTab a:last').tab('show')
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
      <div class="row">
          <div class="col-md-12">
   <div class="container">
       <asp:FormView ID="FormView1" RenderOuterTable="false" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="PatronID">
           <EditItemTemplate>
               <div class="row">
                   <div class="col-md-12">
                       <ul class="nav nav-pills">
                          <li><a href="#home" data-toggle="tab">Home</a></li>
                          <li><a href="#profile" data-toggle="tab">Profile</a></li>
                          <li><a href="#checkedout" data-toggle="tab">Books Checked Out</a></li>
                          <li><a href="#editinfo" data-toggle="tab">Edit Information</a></li>
                       </ul>
                        <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane" id="home">
                      <div class="row">
                          <div class="col-md-8">
                              <h2><asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>' /> <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>' /></h2>
                          </div>
                      </div>
                      
                  </div>
                  <div class="tab-pane" id="profile"><br />
                      <div class="row">
                          <div class="col-md-3 col-md-offset-1">
                              <strong>Birth Date:</strong><asp:Label ID="Label9" runat="server" Text='<%# Bind("BirthDate") %>' /><br />
                              <strong>Email:</strong><asp:Label ID="Label10" runat="server" Text='<%# Bind("Email") %>' /><br />
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-4">
                              <strong>Address:</strong>
                              <address>
                                  <asp:Label ID="Label3" CssClass="label" runat="server" Text='<%# Bind("Address1") %>' /><br />
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address2") %>' /><br />
                                  <asp:Label ID="Label21" runat="server" Text='<%# Bind("City") %>' />, <asp:Label ID="Label22" runat="server" Text='<%# Bind("State")%>' /><asp:Label ID="Label23" runat="server" Text='<%# Bind("Zip") %>' /><br />
                                  <abbr title="Phone">P:</abbr> <abbr title="Phone">Phone:</abbr><asp:Label ID="Label24" runat="server" Text='<%# Bind("PhoneNumber") %>' />
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
                                    <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="ReturnMaterial.aspx?MaterialID={0}" Text="Return" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <h2>Sorry, No Books are Checked Out By This Person</h2>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                  </div>
                
                 <div class="tab-pane active" id="editinfo">
                     <br />
                    <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label8" runat="server" Text="First Name"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("FirstName")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label12" runat="server" Text="Last Name"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("LastName")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label15" runat="server" Text="Birth Date"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("BirthDate")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label19" runat="server" Text="Phone Number"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" Text='<%# Bind("PhoneNumber")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label20" runat="server" Text="Email"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Text='<%# Bind("Email")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label13" runat="server" Text="Address 1"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("Address1")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label14" runat="server" Text="Address 2"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("Address2")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label16" runat="server" Text="City"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Bind("City")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label17" runat="server" Text="State"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Text='<%# Bind("State")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label18" runat="server" Text="Zip"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Text='<%# Bind("Zip")%>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <div class="col-md-8 col-md-offset-6">
                         <div class="row">
                              <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-default"  CausesValidation="True" CommandName="Update" Text="Update" />
                              &nbsp;<asp:Button ID="UpdateCancelButton"  CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </div>
                     </div>
                </div>
            </div>
        </div><!-- End Row -->
    </EditItemTemplate>
           <ItemTemplate>
               <div class="row">
                   <div class="col-md-12">
                       <ul class="nav nav-tabs">
                          <li><a href="#home" data-toggle="tab">Home</a></li>
                          <li><a href="#profile" data-toggle="tab">Profile</a></li>
                          <li><a href="#checkedout" data-toggle="tab">Books Checked Out</a></li>
                          <li><a href="#editinfo" data-toggle="tab">Edit Information</a></li>
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
                
                 <div class="tab-pane" id="editinfo">
                     <div class="row">
                         <div class="col-md-12"><br />
                                <asp:Button ID="EditButton" CssClass="btn btn-default"  runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:Button ID="DeleteButton" OnClientClick="return confirm('Are You Sure you want to delete this')" CssClass="btn btn-danger" runat="server" CausesValidation="True" CommandName="Delete" Text="Delete" />
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
            <asp:QueryStringParameter Name="PatronID" QueryStringField="PatronID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" DeleteCommand="DELETE FROM [Patron] WHERE [PatronID] = @PatronID" InsertCommand="INSERT INTO [Patron] ([PatronID], [FirstName], [LastName], [Address1], [BirthDate], [Address2], [City], [State], [Zip], [PhoneNumber], [Email]) VALUES (@PatronID, @FirstName, @LastName, @Address1, @BirthDate, @Address2, @City, @State, @Zip, @PhoneNumber, @Email)" SelectCommand="SELECT [PatronID], [FirstName], [LastName], [Address1], [BirthDate], [Address2], [City], [State], [Zip], [PhoneNumber], [Email] FROM [Patron] WHERE ([PatronID] = @PatronID)" UpdateCommand="UPDATE [Patron] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address1] = @Address1, [BirthDate] = @BirthDate, [Address2] = @Address2, [City] = @City, [State] = @State, [Zip] = @Zip, [PhoneNumber] = @PhoneNumber, [Email] = @Email WHERE [PatronID] = @PatronID">
        <DeleteParameters>
            <asp:Parameter Name="PatronID" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatronID" Type="Object" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="BirthDate" Type="DateTime" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Decimal" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="PatronID" QueryStringField="PatronID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="BirthDate" Type="DateTime" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Decimal" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PatronID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
              </div>
          </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li><a id="A2" runat="server" href="~/librarians/ViewPatrons.aspx">View Patrons</a></li>
              <li class="active">Patron Details</li>
          </ol>
        </div>
        </div>
</asp:Content>


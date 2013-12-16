<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="librarians_MaterialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        
        <asp:FormView ID="FormView1" DataKeyNames="MaterialID" RenderOuterTable="False" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-3 col-md-offset-2">
                        <asp:Image ID="Label1" CssClass="img-responsive detailcover"  runat="server" ImageUrl='<%# Bind("ImagePath") %>' AlternateText='<%# Bind("ImageName") %>'></asp:Image>
                    </div>
                    <div class="col-md-5 col-md-offset-1">
                        <div class="row">
                            
                            <h2><asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label></h2>
                         </div>
                        <div class="row">
                            <h4><asp:Label ID="Label3" runat="server" Text='<%# Bind("Author")%>'></asp:Label></h4>
                        </div>
                        <div class="row">
                            <strong>Publisher:  </strong><asp:Label ID="Label4" runat="server" Text='<%# Bind("Publisher") %>'></asp:Label>
                        </div>
                        <div class="row">
                            <strong>CallNumber: </strong><asp:Label ID="Label5" runat="server" Text='<%# Bind("CallNumber")%>'></asp:Label>
                        </div>
                        <div class="row">
                            <strong>ISBN:       </strong><asp:Label ID="Label6" runat="server" Text='<%# Bind("ISBN")%>'></asp:Label>
                        </div>
                        <div class="row">
                            <strong>Copyright:       </strong><asp:Label ID="Label18" runat="server" Text='<%# Bind("Copyright")%>'></asp:Label>
                        </div>
                        <div class="row">
                            <strong>Description: </strong><asp:Label ID="Label7" runat="server" Text='<%# Bind("Description")%>'></asp:Label>
                        </div>
                        <div class="row">
                            <strong>Category:    </strong><asp:Label ID="Label8" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </div> 
                         <div class="row">
                            <strong>Available?:  </strong><asp:CheckBox ID="checkbox" runat="server"   Checked='<%# Bind("Available")%>' Enabled="False"></asp:CheckBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-6">
                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                    &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" CausesValidation="True" CommandName="Delete" OnClientClick="return confirm('Are You Sure you want to delete this')" Text="Delete"></asp:Button>
                    </div>
                </div>
                
            </ItemTemplate>
            <EditItemTemplate>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Image ID="Label1" CssClass="img-responsive" runat="server" ImageUrl='<%# Bind("ImagePath") %>' AlternateText='<%# Bind("ImageName") %>'></asp:Image>
                    </div>
                    <div class="col-md-6 col-md-offset-1">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label9" runat="server" Text="Title"></asp:Label>
                                    <div class="col-sm-10">
                                          <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                     <asp:Label CssClass="col-sm-2 control-label"  ID="Label10" runat="server" Text="Author"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("Author")%>'></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label11" runat="server" Text="Publisher"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="TextBox3"  CssClass="form-control" runat="server" Text='<%# Bind("Publisher")%>'></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label12" runat="server" Text="Call Number"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="TextBox4"  CssClass="form-control" runat="server" Text='<%# Bind("CallNumber")%>'></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label13" runat="server" Text="ISBN"></asp:Label>
                                     <div class="col-sm-10">
                                         <asp:TextBox ID="TextBox5"  CssClass="form-control" runat="server" Text='<%# Bind("ISBN")%>'></asp:TextBox>
                                     </div>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label17" runat="server" Text="Copyright"></asp:Label>
                                     <div class="col-sm-10">
                                         <asp:TextBox ID="TextBox7"  CssClass="form-control" runat="server" Text='<%# Bind("Copyright")%>'></asp:TextBox>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label14" runat="server" Text="Desciption"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox TextMode="MultiLine" ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Bind("Description")%>'></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label15" runat="server" Text="Category"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" DataSourceID="SqlDataSource2" runat="server" DataTextField="MaterialCategory" SelectedValue='<%# Bind("Category") %>' ></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [MaterialCategory] FROM [MaterialCategory]"></asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                        <div class="col-md-3 col-md-offset-6">
                        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:Button>
                    &nbsp;<asp:Button ID="Button2" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                    </div>
                </div>
                 
            </EditItemTemplate>

        </asp:FormView>
        <div class="row">
            <div class="page-header"><h2>Currently Rented By</h2></div>
        </div>
        <div class="row">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" GridLines="None" CssClass="table table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="CheckoutID,Expr1" DataSourceID="SqlDataSource2" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="CheckoutID" HeaderText="CheckoutID" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="CheckoutID" />
                        <asp:BoundField DataField="DateCheckedOut" HeaderText="Date Checked Out" SortExpression="DateCheckedOut" DataFormatString="{0:MM/dd/yyyy}" />
                        <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" DataFormatString="{0:MM/dd/yyyy}" />
                        <asp:BoundField DataField="PatronID" HeaderText="PatronID" SortExpression="PatronID" Visible="False" />
                        <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" SortExpression="MaterialID" Visible="False" />
                    </Columns>
                    <EmptyDataTemplate>
                        <h3>This book is not currently checked out by anyone.</h3>
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT CheckOut.CheckoutID, CheckOut.DateCheckedOut, CheckOut.DueDate, CheckOut.PatronID, CheckOut.MaterialID, Patron.PatronID AS Expr1, Patron.FirstName, Patron.LastName FROM CheckOut INNER JOIN Patron ON CheckOut.PatronID = Patron.PatronID  WHERE CheckOut.MaterialID = @MaterialID">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li><a id="A2" runat="server" href="~/librarians/ViewMaterials.aspx">View Materials</a></li>
              <li class="active">Material Details</li>
          </ol>
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" DeleteCommand="DELETE FROM [Material] WHERE [MaterialID] = @MaterialID" InsertCommand="INSERT INTO [Material] ([CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Category], [ImageName], [ImagePath]) VALUES (@CallNumber, @Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Category, @ImageName, @ImagePath)" SelectCommand="SELECT [MaterialID], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Category], [ImageName], [ImagePath], [Available] FROM [Material] WHERE ([MaterialID] = @MaterialID)" UpdateCommand="UPDATE [Material] SET [CallNumber] = @CallNumber, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Category] = @Category, [ImageName] = @ImageName, [ImagePath] = @ImagePath] WHERE [MaterialID] = @MaterialID">
        <DeleteParameters>
            <asp:Parameter Name="MaterialID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
            <asp:Parameter Name="ISBN" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
            <asp:Parameter Name="ISBN" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="MaterialID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


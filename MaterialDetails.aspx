<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="MaterialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <asp:FormView ID="FormView1" DataKeyNames="MaterialID" RenderOuterTable="False" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-3 col-md-offset-2">
                        <asp:Image ID="Label1" CssClass="img-responsive"  runat="server" ImageUrl='<%# Bind("ImagePath") %>' AlternateText='<%# Bind("ImageName") %>'></asp:Image>
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

            </ItemTemplate>

        </asp:FormView>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A1" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A2" runat="server" href="~/ViewMaterials.aspx">View Materials</a></li>
              <li class="active">Material Details</li>
          </ol>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" DeleteCommand="DELETE FROM [Material] WHERE [MaterialID] = @MaterialID" InsertCommand="INSERT INTO [Material] ([CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Category], [ImageName], [ImagePath] ) VALUES (@CallNumber, @Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Category, @ImageName, @ImagePath)" SelectCommand="SELECT [MaterialID], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Category], [ImageName], [ImagePath], [Available] FROM [Material] WHERE ([MaterialID] = @MaterialID)" UpdateCommand="UPDATE [Material] SET [CallNumber] = @CallNumber, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Category] = @Category, [ImageName] = @ImageName, [ImagePath] = @ImagePath WHERE [MaterialID] = @MaterialID">
        <DeleteParameters>
            <asp:Parameter Name="MaterialID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CallNumber" />
            <asp:Parameter Name="Title" />
            <asp:Parameter Name="Author" />
            <asp:Parameter Name="Publisher" />
            <asp:Parameter Name="Copyright" />
            <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="Description" />
            <asp:Parameter Name="Category" />
            <asp:Parameter Name="ImageName" />
            <asp:Parameter Name="ImagePath" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CallNumber" />
            <asp:Parameter Name="Title" />
            <asp:Parameter Name="Author" />
            <asp:Parameter Name="Publisher" />
            <asp:Parameter Name="Copyright" />
            <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="Description" />
            <asp:Parameter Name="Category" />
            <asp:Parameter Name="ImageName" />
            <asp:Parameter Name="ImagePath" />
            <asp:Parameter Name="MaterialID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


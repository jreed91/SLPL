<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddMaterials.aspx.vb" Inherits="librarians_AddMaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="../js/jquery.inputmask.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>
    <div class="container">
        <div class="page-header">
            <h2>Insert New Material</h2>
        </div>
           <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label9" runat="server" Text="Title"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbTitle" CssClass="form-control" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbTitle" ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Title required"></asp:RequiredFieldValidator>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label10" runat="server" Text="Author"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="tbAuthor" CssClass="form-control" runat="server" Text='<%# Bind("Author")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbAuthor" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Author is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label11" runat="server" Text="Publisher"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="tbPublisher"  CssClass="form-control" runat="server" Text='<%# Bind("Publisher")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbPublisher" ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Publisher is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label3" runat="server" Text="Copyright"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="tbCopyright" data-inputmask="'mask': '9999'" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbCopyright" ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="A copyright date is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label12" runat="server" Text="Call Number"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="tbCallNumber"  CssClass="form-control" runat="server" Text='<%# Bind("CallNumber")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbCallNumber" ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="A call number is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label13" runat="server" Text="ISBN"></asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="tbISBN" data-inputmask="'mask': '9999999999999'"  CssClass="form-control" runat="server" Text='<%# Bind("ISBN")%>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbISBN" ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="An ISBN is required"></asp:RequiredFieldValidator>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label14" runat="server" Text="Description"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox TextMode="MultiLine" ID="tbDescription" CssClass="form-control" runat="server" Text='<%# Bind("Description")%>'></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label15" runat="server" Text="Category"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:DropDownList CssClass="form-control" ID="listCategory" DataSourceID="SqlDataSource2" runat="server" DataTextField="MaterialCategory" ></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [MaterialCategory] FROM [MaterialCategory]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label2" runat="server" Text="Available"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:CheckBox ID="AvailableCheckBox" runat="server" Checked='<%# Bind("Available") %>' />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label1" runat="server" Text="Image"></asp:Label>
                                <div class="col-sm-10">
                                   <asp:FileUpload CssClass="form-control"  ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                    <div class="col-md-3 col-md-offset-5">
                    <asp:Button ID="InsertButton" CssClass="btn btn-default"  runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:Button>
                &nbsp;<asp:Button ID="Button2" CssClass="btn btn-default" runat="server" OnClick="Button2_Click" CausesValidation="False"  CommandName="Cancel" Text="Cancel"></asp:Button>
                </div>
            </div>
        <div class="row">
            <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li><a id="A2" runat="server" href="~/librarians/ViewMaterials.aspx">View Materials</a></li>
              <li class="active">Add New Material</li>
          </ol>
        </div>
        </div>
    
</asp:Content>


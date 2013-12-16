<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="RentMaterial.aspx.vb" Inherits="librarians_RentMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h2>Rent Material</h2>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-sm-2 control-label" Text="User Name"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="tbUserName" CssClass="form-control" Placeholder="User Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbUserName" runat="server" ForeColor="Red" ErrorMessage="You Must Insert a User Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-sm-2 control-label" Text="Material ID:"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="tbMaterialID" CssClass="form-control" Placeholder="MaterialID" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbMaterialID" ForeColor="Red" ErrorMessage="You Must Insert a Material ID"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                       <div class="col-sm-offset-4 col-sm-10">
                           <asp:Button ID="btnRent" runat="server" CssClass="btn btn-primary" Text="Rent" />
                       </div>
                    </div>
                </div>
                <div class="row">
                    <asp:Label ID="errorlabel" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li class="active">Rent Material</li>
          </ol>
        </div>
    </div>
</asp:Content>


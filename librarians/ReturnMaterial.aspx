<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ReturnMaterial.aspx.vb" Inherits="librarians_ReturnMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="page-header">
             <h2>Return Material</h2>
         </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-sm-2 control-label" Text="Material ID:"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="tbMaterialID" CssClass="form-control" Placeholder="MaterialID" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="tbMaterialID" ErrorMessage="You Must Insert a Material ID"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                       <div class="col-sm-offset-4 col-sm-10">
                           <asp:Button ID="btnReturn" runat="server" CssClass="btn btn-primary" Text="Return" />
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
              <li class="active">Return Material</li>
          </ol>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="header">
        <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <div class="row" id="header">
            <div class="col-md-10 col-md-offset-2 animated fadeInUp">
                <h1>South Liberty Public Library</h1>
                <div class="row">
                    <div class="col-md-8 col-md-offset-1">
                        <div class="input-group input-group-lg">
                                  <asp:TextBox ID="tbSearch" Placeholder="Search by Author or Title" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                            <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" />
                        </span>
                                </div>
                       
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
      </div>
    <div class="container">
        <div class="col-md-12">
            <div class="row">
            <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
                <HeaderTemplate>
                    <div class="row">
                   <div class="col-md-12 page-header">
                        <div class=" pull-right"><a href="ViewMaterials.aspx" class="pull-right">See more </a></div>         
                                <h3>Most Recent</h3>
                  
                   </div>
                        
                        </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div id="recent">
                            <div class="col-md-4">
                                <div id="info">
                                    <asp:Image ID="Image1" ImageAlign="Middle" CssClass="homepageImage" runat="server" ImageUrl='<%# Eval("ImagePath") %>' /><br />
                                    <h4><asp:Label CssClass="homeImage" ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label></h4>
                                    <p><asp:Label ID="Label2" CssClass="" runat="server" Text='<%# Bind("Author") %>'></asp:Label></p>
                                </div>
                                <asp:HyperLink CssClass="btn btn-primary seemore" ID="seemore" runat="server" NavigateUrl='<%# Eval("MaterialID", "MaterialDetails.aspx?MaterialID={0}") %>' Text="More Details"></asp:HyperLink>        
                               </div>
                             </div>
                </ItemTemplate>
            </asp:Repeater>
                </div>
        </div>
     
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT Top 3 MaterialID, Title, Author, ImageName, ImagePath FROM Material Order by Title"></asp:SqlDataSource>
    </div>
</asp:Content>


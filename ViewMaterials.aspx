﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewMaterials.aspx.vb" Inherits="ViewMaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="row">
             <div class="page-header">
                 <h2>Currently Available Titles</h2>
             </div>
         </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                     <div class="input-group input-group-md" id="searchmaterial">
                           <asp:TextBox ID="tbSearch" AutoPostBack="true" Placeholder="Search by Author or Title" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" />
                            </span>
                    </div>
                </div>
            </div>
        <div class="row">
            <div class="table-responsive">
                    <asp:GridView ID="GridView1" GridLines="None"  CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" Visible="False" />
                            <asp:TemplateField HeaderText="Image" SortExpression="ImagePath">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImagePath") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" ImageUrl='<%# Bind("ImagePath") %>' AlternateText='<%# Bind("ImageName") %>' Height="100px" Width="80px" runat="server" />
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:TemplateField HeaderText="Available" SortExpression="Available">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Available") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="Label1" runat="server" Enabled="false" Checked='<%# Bind("Available") %>'></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="MaterialDetails.aspx?MaterialID={0}" Text="Select" />
                        </Columns>
                </asp:GridView>
            </div>
        </div>
         <div class="row" id="breadcrumbs">
            <ol class="breadcrumb">
                <li><a id="A1" runat="server" href="~/Default.aspx">Home</a></li>
                <li class="active">View Materials</li>
            </ol>
        </div>
   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT DISTINCT MaterialID, Title, Author, ImageName, ImagePath, Category, Available FROM Material Where Available = 1">
        
    </asp:SqlDataSource>
</asp:Content>


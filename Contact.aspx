<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="page-header">
                <h1>Contact Us</h1>
            </div>
        </div>
        <a href="mailto:haoran-wang@uiowa.edu">Email Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="tel:+13194711884">Call Us</a><br /><br /><br />
         <div class="row">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label15" runat="server" Text="Your Email"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox CssClass="form-control" ID="tbEmail" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-sm-2 control-label"  ID="Label1" runat="server" Text="Your Message"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="tbMessage" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-7">
                <asp:Button ID="btnSend" CssClass="btn btn-default" runat="server" Text="Send"></asp:Button>
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server" Text="" ID="lblResponse"></asp:Label>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="ENTER ID"></asp:Label>
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
        <asp:TextBox ID="txtpw" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="submit" />
    </p>
    <p>
    </p>
</asp:Content>


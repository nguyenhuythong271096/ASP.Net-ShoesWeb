<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Hienthigiaythethaonu.aspx.vb" Inherits="WebPage_Frmhienthigiaythethaonu" %>

<%@ Register src="../UserControl/Hienthigiaythethaonu.ascx" tagname="Hienthigiaythethaonu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiaythethaonu ID="Hienthigiaythethaonu1" runat="server" />
</asp:Content>


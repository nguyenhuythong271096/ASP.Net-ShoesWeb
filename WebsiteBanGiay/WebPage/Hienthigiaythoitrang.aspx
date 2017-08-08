<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Hienthigiaythoitrang.aspx.vb" Inherits="WebPage_Frmhienthigiaythoitrang" %>

<%@ Register src="../UserControl/Hienthigiaythoitrang.ascx" tagname="Hienthigiaythoitrang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiaythoitrang ID="Hienthigiaythoitrang1" runat="server" />
</asp:Content>


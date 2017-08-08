<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Hienthigiaythethaonam.aspx.vb" Inherits="WebPage_Frmhienthigiaythethaonam" %>

<%@ Register src="../UserControl/Hienthigiaytheothaonam.ascx" tagname="Hienthigiaytheothaonam" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiaytheothaonam ID="Hienthigiaytheothaonam1" runat="server" />
</asp:Content>


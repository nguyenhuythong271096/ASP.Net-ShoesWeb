<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Hienthigiayxangdan.aspx.vb" Inherits="WebPage_FrmHienthigiayxangdan" %>

<%@ Register src="../UserControl/Hienthigiayxangdan.ascx" tagname="Hienthigiayxangdan" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiayxangdan ID="Hienthigiayxangdan1" runat="server" />
</asp:Content>


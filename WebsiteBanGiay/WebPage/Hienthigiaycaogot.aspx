<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Hienthigiaycaogot.aspx.vb" Inherits="WebPage_Hienthigiaycaogot" %>

<%@ Register src="../UserControl/Hienthigiaycaogot.ascx" tagname="Hienthigiaycaogot" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiaycaogot ID="Hienthigiaycaogot1" runat="server" />
</asp:Content>


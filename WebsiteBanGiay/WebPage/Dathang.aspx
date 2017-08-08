<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Dathang.aspx.vb" Inherits="WebPage_Dathang" %>

<%@ Register src="../UserControl/DatHang.ascx" tagname="DatHang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:DatHang ID="DatHang1" runat="server" />
</asp:Content>


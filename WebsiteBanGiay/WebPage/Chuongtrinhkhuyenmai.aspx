<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="Chuongtrinhkhuyenmai.aspx.vb" Inherits="WebPage_FrmChuongtrinhkhuyenmai" %>

<%@ Register src="../UserControl/Khuyenmai.ascx" tagname="Khuyenmai" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Khuyenmai ID="Khuyenmai1" runat="server" />
</asp:Content>


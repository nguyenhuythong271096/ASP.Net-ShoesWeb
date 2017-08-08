<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Frmdangkythanhvien.aspx.vb" Inherits="WebPage_Frmdangkythanhvien" %>

<%@ Register src="../UserControl/DangKyThanhVien.ascx" tagname="DangKyThanhVien" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:DangKyThanhVien ID="DangKyThanhVien1" runat="server" />
</asp:Content>


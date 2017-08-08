<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhuyenMai.master" AutoEventWireup="false" CodeFile="HienthiGiaytay.aspx.vb" Inherits="WebPage_HienthiGiaytay" %>

<%@ Register src="../UserControl/Hienthigiaytay.ascx" tagname="Hienthigiaytay" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Hienthigiaytay ID="Hienthigiaytay1" runat="server" />
</asp:Content>


<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DangKyThanhVien.ascx.vb" Inherits="UserControl_DangKyThanhVien" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #000000;
    }
    .style5
    {
        text-align: right;
        width: 180px;
    }
    .style6
    {
        height: 21px;
        width: 180px;
        text-align: right;
    }
    .style11
    {
        height: 21px;
        width: 591px;
    }
    .style12
    {
        height: 66px;
        text-align: center;
        font-weight: bold;
        font-size: xx-large;
        color: #FFFFFF;
    }
    .style13
    {
        text-align: center;
    }
    .style14
    {
        width: 591px;
    }
</style>

<table class="style1">
    <tr>
        <td class="style12" bgcolor="#CC3300" colspan="2">
            ĐĂNG KÝ THÀNH VIÊN MASTER C</td>
    </tr>
    <tr>
        <td class="style5">
            Họ và tên</td>
        <td class="style14">
            <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtten" ErrorMessage="*Mời bạn nhập họ tên"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Điện thoại</td>
        <td class="style11">
            <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsdt" ErrorMessage="*Mời bạn nhập điện thoại"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Email</td>
        <td class="style14">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="*Địa chỉ email không hợp lệ" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Địa chỉ</td>
        <td class="style11">
            <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtdiachi" ErrorMessage="*Mời bạn nhập địa chỉ"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Tên Đăng Nhập</td>
        <td class="style14">
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtid" ErrorMessage="*Mời bạn nhập tên đăng nhập"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Mật khẩu</td>
        <td class="style14">
            <asp:TextBox ID="txtmk" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtmk" ErrorMessage="*Mời bạn nhập mật khẩu"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Nhập lại mật khẩu</td>
        <td class="style14">
            <asp:TextBox ID="txtmk1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtmk" ControlToValidate="txtmk1" 
                ErrorMessage="*Mật khẩu không trùng khớp"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style13" colspan="2">
            <asp:Button ID="Button1" runat="server" style="text-align: right; font-weight: 700; font-size: large;" 
                Text="Đăng ký thành viên" />
        </td>
    </tr>
    <tr>
        <td class="style13" colspan="2">
            <asp:Label ID="lblkq" runat="server" 
                style="text-align: center; font-weight: 700; font-size: large; color: #FF0000;"></asp:Label>
        </td>
    </tr>
</table>


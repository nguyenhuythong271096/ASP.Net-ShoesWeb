<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DatHang.ascx.vb" Inherits="UserControl_DatHang" %>
<style type="text/css">

    .style8
    {
        height: 65px;
        text-align: center;
        font-size: xx-large;
        color: #FFFFCC;
        font-weight: bold;
    }
    .style2
    {
        text-align: right;
        width: 511px;
        font-weight: bold;
        font-size: large;
    }
    .style6
    {
        text-align: right;
        width: 511px;
        height: 23px;
        font-weight: bold;
        font-size: large;
    }
    .style3
    {
        height: 23px;
        width: 523px;
    }
    .style1
    {
        text-align: center;
        margin-left: 80px;
        height: 23px;
    }
    .style9
    {
        text-align: center;
        margin-left: 80px;
        height: 61px;
    }
    .style10
    {
        width: 523px;
    }
    .style11
    {
        text-align: right;
        width: 511px;
        font-weight: bold;
        font-size: large;
        height: 30px;
    }
    .style12
    {
        width: 523px;
        height: 30px;
    }
</style>

<table style="width:89%;">
    <tr>
        <td bgcolor="#CC3300" class="style8" colspan="2">
            THÔNG TIN ĐẶT HÀNG</td>
    </tr>
    <tr>
        <td class="style11" bgcolor="White">
            Tên khách hàng</td>
        <td class="style12" bgcolor="White">
            <asp:TextBox ID="txtTen" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTen" runat="server" 
                ControlToValidate="txtTen" ErrorMessage="*Chưa nhập tên"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" bgcolor="White">
            Địa chỉ giao hàng</td>
        <td class="style10" bgcolor="White">
            <asp:TextBox ID="txtdiachi" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAdd" runat="server" 
                ControlToValidate="txtdiachi" ErrorMessage="*Chưa nhập địa chỉ giao hàng"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" bgcolor="White">
            Số điện thoại</td>
        <td class="style10" bgcolor="White">
            <asp:TextBox ID="txtsdt" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTel" runat="server" 
                ControlToValidate="txtsdt" ErrorMessage="*Chưa nhập điện thoại"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6" bgcolor="White">
            Ngày giao (Giờ nếu có)</td>
        <td class="style3" bgcolor="White">
            <asp:TextBox ID="txtngaygiao" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6" bgcolor="White">
            Hình thức thanh toán</td>
        <td class="style3" bgcolor="White">
            <asp:DropDownList ID="cbothanhtoan" runat="server">
                <asp:ListItem>Tiền mặt</asp:ListItem>
                <asp:ListItem>Thẻ ngân hàng</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6" bgcolor="White">
            Mã số thẻ ngân hàng</td>
        <td class="style3" bgcolor="White">
            <asp:TextBox ID="txtsothe" runat="server" Width="247px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9" colspan="2" bgcolor="White">
            <asp:ImageButton ID="ImageButton1" runat="server" BackColor="Yellow" 
                BorderColor="Yellow" BorderStyle="Double" ForeColor="Black" Height="55px" 
                ImageUrl="~/Image/shopping-cart.png" Width="62px" />
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="2" bgcolor="White">
            <asp:Label ID="lblkq" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
</table>


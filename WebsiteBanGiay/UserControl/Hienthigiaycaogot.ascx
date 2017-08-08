<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Hienthigiaycaogot.ascx.vb" Inherits="UserControl_Hienthigiaycaogot" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 121px;
    }
    .style6
    {
        height: 23px;
        text-align: left;
    }
    .style7
    {
        text-align: left;
    }
    .style8
    {
        text-align: left;
        font-weight: bold;
    }
</style>
<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
    RepeatColumns="2">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td class="style2" rowspan="6">
                    <asp:ImageMap ID="ImageMap1" runat="server" Height="148px" 
                        ImageUrl='<%# Eval("HINHANH") %>' Width="134px">
                    </asp:ImageMap>
                </td>
                <td class="style8">
                    <asp:Label ID="TENGIAYLabel" runat="server" Text='<%# Eval("TENGIAY") %>' />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <b>Size:
                    <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <b>Màu:
                    <asp:Label ID="MAUSACLabel" runat="server" style="text-align: right" 
                        Text='<%# Eval("MAUSAC") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <b>Mô Tả:
                    <asp:Label ID="MOTALabel" runat="server" style="text-align: right" 
                        Text='<%# Eval("MOTA") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <b>Giá bán:
                    <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" 
                        style="text-align: center; font-weight: 700; font-size: large; color: #FF0000;" 
                        Text="Hốt luôn!" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectShoe %>" 
    SelectCommand="SELECT * FROM [ViewGiaycaogot]"></asp:SqlDataSource>



<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Hienthigiaythethaonu.ascx.vb" Inherits="UserControl_Hienthigiaythethao" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 123px;
    }
    .style3
    {
        height: 18px;
    }
    .style4
    {
        font-weight: bold;
    }
</style>

<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
    RepeatColumns="1">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
        <br />
        <table class="style1">
            <tr>
                <td class="style2" rowspan="6">
                    <asp:ImageMap ID="ImageMap1" runat="server" Height="149px" 
                        ImageUrl='<%# Eval("HINHANH") %>' Width="123px">
                    </asp:ImageMap>
                </td>
                <td>
                    <b>
                    <asp:Label ID="TENGIAYLabel" runat="server" Text='<%# Eval("TENGIAY") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <b>SIZE:
                    <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>MÀU SẮC:
                    <asp:Label ID="MAUSACLabel" runat="server" Text='<%# Eval("MAUSAC") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>MÔ TẢ:
                    <asp:Label ID="MOTALabel" runat="server" Text='<%# Eval("MOTA") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td>
                    <b>GIÁ BÁN:
                    <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                    </b>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; font-weight: 700">
                    <asp:Button ID="Button1" runat="server" Text="Hốt luôn!" CssClass="style4" 
                        style="font-size: large; color: #FF0000" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectShoe %>" 
    SelectCommand="SELECT * FROM [ViewGiaytheothaonu]"></asp:SqlDataSource>


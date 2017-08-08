<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Hienthigiayxangdan.ascx.vb" Inherits="UserControl_Hienthigiayxangdan" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 20px;
    }
    .style3
    {
        width: 131px;
    }
    .style4
    {
        text-align: center;
    }
    .style5
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
                <td class="style3" rowspan="6">
                    <asp:ImageMap ID="ImageMap1" runat="server" Height="167px" 
                        ImageUrl='<%# Eval("HinhAnh") %>'>
                    </asp:ImageMap>
                </td>
                <td>
                    <asp:Label ID="TENGIAYLabel" runat="server" Text='<%# Eval("TENGIAY") %>' 
                        style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <b>SIZE: </b>
                    <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' 
                        CssClass="style5" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>MÀU SẮC: </b>
                    <asp:Label ID="MAUSACLabel" runat="server" Text='<%# Eval("MAUSAC") %>' 
                        CssClass="style5" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>MÔ TẢ: </b>
                    <asp:Label ID="MOTALabel" runat="server" Text='<%# Eval("MOTA") %>' 
                        CssClass="style5" />
                </td>
            </tr>
            <tr>
                <td style="font-weight: 700">
                    GIÁ BÁN:
                    <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="Hốt luôn!" 
                        style="font-weight: 700; font-size: large; color: #FF0000" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectShoe %>" 
    SelectCommand="SELECT * FROM [ViewGiayxangdannam]"></asp:SqlDataSource>


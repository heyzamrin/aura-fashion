<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewOneProduct.aspx.cs" Inherits="WebApplicationProject1.ViewOneProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 224px;
        }
        .auto-style2 {
            width: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1"><span class="nav-label">
                <asp:Image ID="Image1" runat="server" Height="355px" Width="366px" />
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#BB8D3F" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="X-Small" Font-Underline="True" ForeColor="#866528">
                                
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button2" runat="server" BackColor="#BB8D3F" Font-Bold="True" Font-Size="Small" Text="Add to Cart" Width="100%" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" Text="View Cart" Width="100%" OnClick="Button3_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="#BB8D3F"  Text="🏠︎" Width="100%" PostBackUrl="~/UserHOME11.aspx" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

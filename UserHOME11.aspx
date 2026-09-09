<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserHOME11.aspx.cs" Inherits="WebApplicationProject1.UserHOME11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Names="yacgetiwks8_0, _fb_, auto" Font-Size="Large" Text="Find your favourite style, all the fashion you need is here" Width="100%"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#866528" Text='<%# Eval("CategoryName") %>' Width="100%" BorderColor="#996633" Font-Names="font-family: &quot;georgia&quot;, serif;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" ImageUrl='<%# Eval("CategoryImage") %>' Width="280px" CommandArgument='<%# Eval("CategoryId") %>' OnCommand="ImageButton1_Command1" BorderColor="#866528" BorderStyle="Ridge" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

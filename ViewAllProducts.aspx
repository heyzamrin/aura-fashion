<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewAllProducts.aspx.cs" Inherits="WebApplicationProject1.ViewAllProduct" %>
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
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductId") %>' Height="280px" ImageUrl='<%# Eval("ProductImage") %>' OnCommand="ImageButton1_Command" Width="220px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#BB8D3F" Text='<%# Eval("ProductName") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Small" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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

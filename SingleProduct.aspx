<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="WebApplicationProject1.SingleProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="w-100">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="300px" />
                                </td>
                                <td>
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#BB8D3F" Text='<%# Eval("ProductName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="nav-label">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                            </span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Font-Size="Small" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" Text="View Cart" Width="100%" />
                                                <span class="nav-label">
                                                    <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="#BB8D3F" OnClick="Button1_Click1" Text="🏠︎" Width="100%" PostBackUrl="~/UserHOME11.aspx" />
                                                </span></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="X-Small" Font-Underline="True" ForeColor="#866528" AutoPostBack="True">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" BackColor="#BB8D3F" Font-Bold="True" Font-Size="Small" Text="Add to Cart" Width="100%" OnClick="Button2_Click" />

            </td>
        </tr>
    </table>
</asp:Content>

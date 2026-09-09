<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="WebApplicationProject1.PaymentSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 291px;
        }
        .auto-style3 {
            width: 126px;
        }
        .auto-style4 {
            width: 74%;
            margin-left: 0px;
        }
        .auto-style5 {
            width: 196px;
        }
        .auto-style6 {
            width: 160px;
        }
        .auto-style7 {
            width: 126px;
            height: 26px;
        }
        .auto-style8 {
            width: 291px;
            height: 26px;
        }
        .auto-style9 {
            width: 196px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8"><span class="nav-label">
                <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="X-Large" ForeColor="#009933" Text="     Payment Successful!"></asp:Label>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Rate Your Products"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2"><span class="nav-label">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#866528" BorderStyle="Double" ForeColor="#866528" OnRowCommand="GridView1_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product">
                                                    <ControlStyle Height="100px" Width="100px" />
                                                </asp:ImageField>
                                                <asp:TemplateField HeaderText="Feedback">
                                                    <ItemTemplate>
                                                        <span class="nav-label">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" Text="Feedback" CommandArgument='<%# Eval("ProductId") %>' CommandName="Feedback"></asp:LinkButton>
                                                        </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle BorderStyle="Double" ForeColor="#866528" />
                                            <FooterStyle Font-Size="Small" />
                                        </asp:GridView>
                                    </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="WebApplicationProject1.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style5 {
            width: 305px;
        }
        .auto-style7 {
            width: 983px;
        }
        .auto-style8 {
            height: 29px;
            width: 983px;
        }
        .auto-style9 {
            width: 140px;
            height: 57px;
        }
        .auto-style10 {
            width: 305px;
            height: 57px;
        }
        .auto-style11 {
            height: 57px;
        }
        .auto-style15 {
            width: 140px;
            height: 64px;
        }
        .auto-style16 {
            width: 305px;
            height: 64px;
        }
        .auto-style17 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style8"><span class="nav-label">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#866528" Text="Payment"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8"><span class="nav-label">
                <asp:Panel ID="Panel2" runat="server">
                    <span class="nav-label">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style3"><span class="nav-label">
                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#866528" Text="‣Verify Account"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><span class="nav-label">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Account Number"></asp:Label>
                            </td>
                            <td class="auto-style5"><span class="nav-label">
                                <asp:TextBox ID="TextBox5" runat="server" BorderColor="#BB8D3F" BorderStyle="Solid"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="RegularExpressionValidator" Font-Size="Small" ForeColor="#990000" ValidationExpression="^[0-9]{10}$">Enter a valid 10-digit account number</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><span class="nav-label">
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Grand Total"></asp:Label>
                                </span></td>
                            <td class="auto-style10">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style15"></td>
                            <td class="auto-style16"><span class="nav-label">
                                <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" OnClick="Button4_Click" Text="Confirm Payment" Width="100%" />
                                </span></td>
                            <td class="auto-style17"><span class="nav-label">
                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Maroon" Text="Label" Visible="False"></asp:Label>
                                </span></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style5"><span class="nav-label">
                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Don't have an account?"></asp:Label>
                                </span>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" PostBackUrl="~/AddPaymentAccount.aspx">Add Account</asp:LinkButton>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

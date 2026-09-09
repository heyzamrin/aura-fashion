<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddPaymentAccount.aspx.cs" Inherits="WebApplicationProject1.AddPaymentAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }

        .auto-style2 {
            width: 79px;
        }

        .auto-style3 {
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td><span class="nav-label">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#866528" Text="‣Add Account"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1"><span class="nav-label">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Account Name"></asp:Label>
                        </td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#BB8D3F" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td><span class="nav-label">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid account name" Font-Size="Small" ForeColor="#990000" ValidationExpression="^[A-Za-z ]+$">Enter a valid 10-digit account number</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><span class="nav-label">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Account Number"></asp:Label>
                        </td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#BB8D3F" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td><span class="nav-label">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" Font-Size="Small" ForeColor="#990000" ValidationExpression="^[0-9]{10}$">Enter a valid 10-digit account number</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><span class="nav-label">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Account Balance"></asp:Label>
                        </td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:TextBox ID="TextBox4" runat="server" BorderColor="#BB8D3F" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td><span class="nav-label">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" Font-Size="Small" ForeColor="#990000" ValidationExpression="^\d+(\.\d{1,2})?$">Enter a valid account balance</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" OnClick="Button3_Click" Text="Add " Width="100%" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

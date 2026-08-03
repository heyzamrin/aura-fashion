<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="WebApplicationProject1.AdminRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 118px;
        }
    .auto-style2 {
        width: 298px;
    }
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        width: 118px;
        height: 26px;
    }
    .auto-style5 {
        width: 298px;
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2"><span class="nav-label">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Admin Portal" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">
            <span class="nav-label">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Text="Name" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Name"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1"><span class="nav-label">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="Email" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"><span class="nav-label">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Text="Username" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td class="auto-style5"><span class="nav-label">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1"><span class="nav-label">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Text="Password" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td class="auto-style2"><span class="nav-label">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1"><span class="nav-label">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="Confirm Password" ForeColor="#BB8D3F"></asp:Label>
        </td>
        <td class="auto-style2"><span class="nav-label">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2"><span class="nav-label">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password does not match"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <span class="nav-label">
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" BackColor="#BB8D3F" BorderStyle="Double" Font-Bold="True" Font-Size="Small" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2"><span class="nav-label">
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

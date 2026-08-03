<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplicationProject1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-right: 4;
    }
    .auto-style4 {
            width: 191px;
        }
        .auto-style5 {
            margin-right: 31px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style9 {
            width: 191px;
            height: 26px;
        }
        .auto-style11 {
            margin-left: 33;
        }
        .auto-style12 {
            width: 36px;
        }
        .auto-style13 {
            height: 26px;
            width: 36px;
        }
        .auto-style14 {
            width: 373px;
        }
        .auto-style15 {
            height: 26px;
            width: 373px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14"><span class="nav-label">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Text="User Sign Up" ForeColor="#F7444E"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Small" Text="Name" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14"> <span class="nav-label">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#F7444E" Text="Age"></asp:Label>
            </td>
            <td class="auto-style14"> <span class="nav-label">
                <asp:TextBox ID="TextBox2" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age must be between 18 and 60" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#F7444E" Text="Address"></asp:Label>
            </td>
            <td class="auto-style14"> <span class="nav-label">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="mr-0" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Address is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#F7444E" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style14"><span class="nav-label">
                <asp:TextBox ID="TextBox4" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a valid 10-digit phone number." ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Email" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14"> <span class="nav-label">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="mr-0" OnTextChanged="TextBox5_TextChanged" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"> <span class="nav-label">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="Pincode" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14"> <span class="nav-label">
                <asp:TextBox ID="TextBox6" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter a valid 6-digit pincode."></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" Text="Username" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14"><span class="nav-label">
                <asp:TextBox ID="TextBox7" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" Text="Password" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14"> 
                <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style5" TextMode="Password" Width="360px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4"><span class="nav-label">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" Text="Confirm Password" ForeColor="#F7444E"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style11" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox8" ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style13"></td>
            <td class="auto-style9"></td>
            <td class="auto-style15"><span class="nav-label">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" BackColor="#F7444E" />
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14"><span class="nav-label">
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

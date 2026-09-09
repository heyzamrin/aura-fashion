<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FeedbackReply.aspx.cs" Inherits="WebApplicationProject1.FeedbackReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 98px;
        }
        .auto-style3 {
            width: 338px;
        }
        .auto-style4 {
            width: 150px;
        }
        .auto-style5 {
            width: 150px;
            height: 70px;
        }
        .auto-style6 {
            width: 338px;
            height: 70px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#866528" Text="Feedback Reply"></asp:Label>
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
                        <td class="auto-style4"><span class="nav-label">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="User Name"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span class="nav-label">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span class="nav-label">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Reply Message"></asp:Label>
                        </td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style6"><span class="nav-label">
                <asp:Button ID="Button1" runat="server" BackColor="#866528" Text="Send" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3"><span class="nav-label">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
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
    </table>
</asp:Content>

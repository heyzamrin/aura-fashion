
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationProject1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 184px;
        }
        .auto-style2 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Username"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2"> <span class="nav-label">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Password"></asp:Label>
            </td>
            <td class="auto-style1"> <span class="nav-label">
                <asp:TextBox ID="TextBox2" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="#BB8D3F" Text="Login" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>





<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="Login.aspx.cs"
    Inherits="WebApplicationProject1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .login-page {
            min-height: 75vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
            background: #faf8f4;
            font-family: Arial, sans-serif;
            box-sizing: border-box;
        }

        .login-page .login-card {
            width: 100%;
            max-width: 430px;
            padding: 40px;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
            box-sizing: border-box;
        }

        .login-page .login-title {
            text-align: center;
            color: #866528 !important;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .login-page .login-subtitle {
            text-align: center;
            color: #858b96 !important;
            font-size: 14px;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .login-page .login-label {
            display: block;
            color: #866528 !important;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .login-page input.login-input {
            display: block;
            width: 100%;
            height: 46px;
            padding: 0 13px;
            border: 1px solid #d5d9df;
            border-radius: 7px;
            font-size: 14px;
            color: #333333 !important;
            background: #ffffff !important;
            box-sizing: border-box;
            margin-bottom: 22px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .login-page input.login-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.12);
        }

        /* Normal button */
        .login-page input.login-button {
            display: block;
            width: 100%;
            height: 48px;
            background: #ffffff !important;
            color: #866528 !important;
            border: 1px solid #866528 !important;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        /* Brown color only when the mouse hovers */
        .login-page input.login-button:hover {
            background: #866528 !important;
            color: #ffffff !important;
        }

        .login-page .login-message {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #866528 !important;
            font-size: 14px;
        }

        @media (max-width: 480px) {
            .login-page {
                padding: 30px 15px;
            }

            .login-page .login-card {
                padding: 28px 22px;
            }

            .login-page .login-title {
                font-size: 26px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-page">

        <div class="login-card">

            <div class="login-title">Welcome Back</div>

            <div class="login-subtitle">
                Login to your account and continue
            </div>

            <asp:Label ID="Label1" runat="server"
                Text="Username"
                CssClass="login-label">
            </asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"
                CssClass="login-input"
                placeholder="Enter your username">
            </asp:TextBox>

            <asp:Label ID="Label2" runat="server"
                Text="Password"
                CssClass="login-label">
            </asp:Label>

            <asp:TextBox ID="TextBox2" runat="server"
                TextMode="Password"
                CssClass="login-input"
                placeholder="Enter your password">
            </asp:TextBox>

            <asp:Button ID="Button1" runat="server"
                Text="Login"
                CssClass="login-button"
                OnClick="Button1_Click" />

            <asp:Label ID="Label3" runat="server"
                CssClass="login-message"
                Visible="False">
            </asp:Label>

        </div>

    </div>

</asp:Content>
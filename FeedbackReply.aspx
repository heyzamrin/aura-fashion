
<%@ Page Title="Feedback Reply" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FeedbackReply.aspx.cs" Inherits="WebApplicationProject1.FeedbackReply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .feedback-reply-page {
            background: #f8f6f0;
            min-height: 75vh;
            padding: 55px 20px;
            font-family: Arial, sans-serif;
        }

        .feedback-reply-container {
            max-width: 760px;
            margin: 0 auto;
        }

        .feedback-reply-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .feedback-reply-label {
            display: inline-block;
            background: #eee5d2;
            color: #866528;
            padding: 8px 18px;
            border-radius: 25px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1.5px;
            margin-bottom: 12px;
        }

        .feedback-reply-heading h2 {
            color: #302719;
            font-size: 32px;
            font-weight: 700;
            margin: 0 0 10px;
        }

        .feedback-reply-heading h2 span {
            color: #866528;
        }

        .feedback-reply-heading p {
            color: #777064;
            font-size: 14px;
            line-height: 1.6;
            margin: 0;
        }

        .feedback-reply-card {
            background: #ffffff;
            padding: 32px;
            border: 1px solid #eee6d8;
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(70, 52, 20, 0.07);
        }

        .feedback-reply-form-row {
            margin-bottom: 23px;
        }

        .feedback-reply-form-row label {
            display: block;
            color: #866528;
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 9px;
        }

        .feedback-reply-input {
            width: 100%;
            box-sizing: border-box;
            padding: 12px 14px;
            border: 1px solid #ded7c9;
            border-radius: 8px;
            background: #fffefa;
            color: #393329;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        .feedback-reply-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.10);
        }

        .feedback-reply-message {
            min-height: 150px;
            resize: vertical;
        }

        .feedback-reply-send {
            min-width: 145px;
            padding: 13px 28px;
            background: #866528;
            color: #ffffff;
            border: 1px solid #866528;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .feedback-reply-send:hover {
            background: #6d501f;
            border-color: #6d501f;
        }

        .feedback-reply-status {
            display: block;
            margin-top: 20px;
            padding: 12px 14px;
            background: #f8f6f0;
            border-left: 3px solid #866528;
            border-radius: 5px;
            color: #866528;
            font-size: 13px;
            line-height: 1.6;
        }

        @media screen and (max-width: 600px) {
            .feedback-reply-page {
                padding: 35px 12px;
            }

            .feedback-reply-heading h2 {
                font-size: 27px;
            }

            .feedback-reply-card {
                padding: 22px 17px;
            }

            .feedback-reply-send {
                width: 100%;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="feedback-reply-page">

        <div class="feedback-reply-container">

            <div class="feedback-reply-heading">

                <span class="feedback-reply-label">STORE MANAGEMENT</span>

                <h2>Feedback <span>Reply</span></h2>

                <p>
                    Respond to your customers and help improve their shopping experience.
                </p>

            </div>

            <div class="feedback-reply-card">

                <div class="feedback-reply-form-row">

                    <asp:Label ID="Label2"
                        runat="server"
                        AssociatedControlID="TextBox1"
                        Text="User Name">
                    </asp:Label>

                    <asp:TextBox ID="TextBox1"
                        runat="server"
                        CssClass="feedback-reply-input">
                    </asp:TextBox>

                </div>

                <div class="feedback-reply-form-row">

                    <asp:Label ID="Label3"
                        runat="server"
                        AssociatedControlID="TextBox2"
                        Text="Email Address">
                    </asp:Label>

                    <asp:TextBox ID="TextBox2"
                        runat="server"
                        TextMode="Email"
                        CssClass="feedback-reply-input">
                    </asp:TextBox>

                </div>

                <div class="feedback-reply-form-row">

                    <asp:Label ID="Label4"
                        runat="server"
                        AssociatedControlID="TextBox3"
                        Text="Reply Message">
                    </asp:Label>

                    <asp:TextBox ID="TextBox3"
                        runat="server"
                        TextMode="MultiLine"
                        CssClass="feedback-reply-input feedback-reply-message">
                    </asp:TextBox>

                </div>

                <div class="feedback-reply-form-row">

                    <asp:Button ID="Button1"
                        runat="server"
                        Text="Send Reply"
                        CssClass="feedback-reply-send"
                        OnClick="Button1_Click" />

                </div>

                <asp:Label ID="Label5"
                    runat="server"
                    CssClass="feedback-reply-status"
                    Visible="False">
                </asp:Label>

            </div>

        </div>

    </div>

</asp:Content>

















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FeedbackReply.aspx.cs" Inherits="WebApplicationProject1.FeedbackReply" %>
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
</asp:Content>--%>

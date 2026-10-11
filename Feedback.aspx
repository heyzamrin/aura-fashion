
<%@ Page Title="Product Feedback" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplicationProject1.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .feedback-page {
            background-color: #FAF8F3;
            min-height: 75vh;
            padding: 55px 20px;
            font-family: Arial, sans-serif;
            color: #333333;
        }

        .feedback-container {
            max-width: 680px;
            margin: 0 auto;
        }

        .feedback-card {
            background-color: #FFFFFF;
            border: 1px solid #E8DFC9;
            border-radius: 14px;
            padding: 38px;
            box-shadow: 0 6px 25px rgba(134, 101, 40, 0.07);
        }

        .feedback-eyebrow {
            color: #866528;
            text-align: center;
            font-size: 11px;
            font-weight: bold;
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .feedback-title {
            display: block;
            text-align: center;
            color: #30291F;
            font-family: Georgia, serif;
            font-size: 32px;
            font-weight: normal;
            margin-bottom: 12px;
        }

        .feedback-description {
            text-align: center;
            color: #81796D;
            font-size: 14px;
            line-height: 1.8;
            margin: 0 auto 30px;
            max-width: 460px;
        }

        .feedback-divider {
            width: 55px;
            height: 2px;
            background-color: #866528;
            margin: 0 auto 30px;
        }

        .feedback-label {
            display: block;
            color: #554832;
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 12px;
        }

        .feedback-textbox {
            width: 100%;
            min-height: 180px;
            padding: 15px;
            border: 1px solid #DED3C0;
            border-radius: 7px;
            background-color: #FFFEFC;
            color: #333333;
            font-family: Arial, sans-serif;
            font-size: 14px;
            line-height: 1.7;
            resize: vertical;
            outline: none;
            transition: border-color 0.2s ease;
        }

        .feedback-textbox:focus {
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.09);
        }

        .feedback-textbox::placeholder {
            color: #A59B8B;
        }

        .feedback-hint {
            color: #928879;
            font-size: 12px;
            margin-top: 9px;
            line-height: 1.6;
        }

        .feedback-submit {
            width: 100%;
            margin-top: 22px;
            padding: 15px 20px;
            background-color: #866528;
            color: #FFFFFF;
            border: 1px solid #866528;
            border-radius: 6px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .feedback-submit:hover {
            background-color: #6F511F;
            border-color: #6F511F;
        }

        .feedback-success {
            display: block;
            background-color: #F4F0E6;
            border: 1px solid #E5D8BD;
            border-radius: 7px;
            padding: 14px;
            margin-top: 20px;
            color: #6F511F;
            font-size: 13px;
            text-align: center;
            line-height: 1.7;
        }

        @media screen and (max-width: 600px) {
            .feedback-page {
                padding: 30px 12px;
            }

            .feedback-card {
                padding: 25px 18px;
            }

            .feedback-title {
                font-size: 27px;
            }

            .feedback-textbox {
                min-height: 155px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="feedback-page">
        <div class="feedback-container">

            <div class="feedback-card">

                <div class="feedback-eyebrow">
                    YOUR EXPERIENCE MATTERS
                </div>

                <asp:Label ID="Label14" runat="server"
                    CssClass="feedback-title"
                    Text="Product Feedback">
                </asp:Label>

                <p class="feedback-description">
                    We'd love to hear from you. Share your thoughts about your product
                    and help us improve your shopping experience.
                </p>

                <div class="feedback-divider"></div>

                <asp:Label ID="Label13" runat="server"
                    CssClass="feedback-label"
                    Text="Your Feedback Message">
                </asp:Label>

                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="feedback-textbox"
                    TextMode="MultiLine"
                    Rows="7"
                    MaxLength="1000"
                    placeholder="Tell us about your experience with this product...">
                </asp:TextBox>

                <div class="feedback-hint">
                    Please share your honest experience and suggestions.
                </div>

                <asp:Button ID="Button1" runat="server"
                    CssClass="feedback-submit"
                    Text="Submit Feedback"
                    OnClick="Button1_Click" />

                <asp:Label ID="Label15" runat="server"
                    CssClass="feedback-success"
                    Text="&#10003; Feedback submitted successfully."
                    Visible="False">
                </asp:Label>

            </div>

        </div>
    </div>

</asp:Content>
























<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplicationProject1.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 470px;
        }
        .auto-style4 {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3"><span class="nav-label">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#866528" Text="Product Feedback"></asp:Label>
                        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <table class="w-100">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span class="nav-label">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Feedback Message"></asp:Label>
                        </td>
                        <td><span class="nav-label">
                            <asp:TextBox ID="TextBox1" runat="server" Height="34px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td><span class="nav-label">
                <asp:Button ID="Button1" runat="server" BackColor="#866528" Text="Submit " OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td><span class="nav-label">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Feedback submitted successfully." Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

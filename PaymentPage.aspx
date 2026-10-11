
<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs"
    Inherits="WebApplicationProject1.PaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .payment-page {
            background-color: #FAF8F3;
            min-height: 600px;
            padding: 50px 20px;
            font-family: Arial, Helvetica, sans-serif;
            color: #333333;
        }

        .payment-container {
            max-width: 650px;
            margin: 0 auto;
        }

        .payment-heading {
            text-align: center;
            color: #866528;
            font-size: 30px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .payment-subheading {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .payment-card {
            background-color: #FFFFFF;
            padding: 35px;
            border: 1px solid #E9E1D1;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(70, 55, 30, 0.08);
        }

        .section-heading {
            display: block;
            color: #866528;
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 25px;
            padding-bottom: 12px;
            border-bottom: 1px solid #EEE8DC;
        }

        .form-label {
            display: block;
            color: #444444;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 9px;
        }

        .account-input {
            box-sizing: border-box;
            width: 100%;
            height: 45px;
            padding: 10px 12px;
            border: 1px solid #D8C8A8;
            border-radius: 5px;
            background-color: #FFFFFF;
            color: #333333;
            font-size: 15px;
            outline: none;
        }

        .account-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 2px rgba(134, 101, 40, 0.12);
        }

        .validation-message {
            display: block;
            color: #A12626;
            font-size: 12px;
            margin-top: 7px;
        }

        .total-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            margin-top: 28px;
            padding: 18px;
            background-color: #FAF7F0;
            border: 1px solid #EEE4D1;
            border-radius: 6px;
        }

        .total-label {
            color: #444444;
            font-size: 15px;
            font-weight: 600;
        }

        .total-amount {
            color: #866528;
            font-size: 22px;
            font-weight: bold;
        }

        .payment-button {
            display: block;
            box-sizing: border-box;
            width: 100%;
            min-height: 48px;
            margin-top: 25px;
            padding: 12px 20px;
            background-color: #866528 !important;
            color: #FFFFFF !important;
            border: 1px solid #866528 !important;
            border-radius: 5px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .payment-button:hover {
            background-color: #6F5220 !important;
            color: #FFFFFF !important;
        }

        .payment-message {
            display: block;
            color: #A12626;
            font-size: 13px;
            margin-top: 12px;
        }

        .account-footer {
            text-align: center;
            margin-top: 25px;
            color: #666666;
            font-size: 14px;
            line-height: 1.8;
        }

        .account-link {
            color: #866528;
            font-weight: 600;
            text-decoration: none;
            margin-left: 5px;
        }

        .account-link:hover {
            color: #5C431A;
            text-decoration: underline;
        }

        .feedback-footer {
            margin-top: 22px;
            padding-top: 20px;
            border-top: 1px solid #EEE8DC;
            color: #777064;
            font-size: 13px;
        }

        .feedback-link {
            display: inline-block;
            margin-left: 8px;
            color: #866528;
            font-weight: bold;
            text-decoration: none;
        }

        .feedback-link:hover {
            color: #5D451B;
            text-decoration: underline;
        }

        @media screen and (max-width: 600px) {
            .payment-page {
                padding: 25px 12px;
            }

            .payment-card {
                padding: 22px;
            }

            .payment-heading {
                font-size: 25px;
            }

            .total-amount {
                font-size: 19px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="payment-page">

        <div class="payment-container">

            <h1 class="payment-heading">Payment</h1>

            <p class="payment-subheading">
                Verify your account details to complete your order.
            </p>

            <div class="payment-card">

                <asp:Panel ID="Panel2" runat="server">

                    <asp:Label ID="Label13" runat="server"
                        CssClass="section-heading"
                        Text="Verify Account">
                    </asp:Label>

                    <asp:Label ID="Label14" runat="server"
                        CssClass="form-label"
                        Text="Account Number">
                    </asp:Label>

                    <asp:TextBox ID="TextBox5" runat="server"
                        CssClass="account-input"
                        MaxLength="10">
                    </asp:TextBox>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1"
                        runat="server"
                        ControlToValidate="TextBox5"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Enter a valid 10-digit account number"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                    <div class="total-section">

                        <asp:Label ID="Label15" runat="server"
                            CssClass="total-label"
                            Text="Grand Total">
                        </asp:Label>

                        <asp:Label ID="Label16" runat="server"
                            CssClass="total-amount">
                        </asp:Label>

                    </div>

                    <asp:Button ID="Button4" runat="server"
                        Text="Confirm Payment"
                        CssClass="payment-button"
                        OnClick="Button4_Click" />

                    <asp:Label ID="Label20" runat="server"
                        CssClass="payment-message"
                        Visible="False">
                    </asp:Label>

                    <div class="account-footer">

                        <asp:Label ID="Label21" runat="server"
                            Text="Don't have an account?">
                        </asp:Label>

                        <asp:LinkButton ID="LinkButton1" runat="server"
                            CssClass="account-link"
                            PostBackUrl="~/AddPaymentAccount.aspx">
                            Add Account
                        </asp:LinkButton>

                        <div class="feedback-footer">

                            <span>Want to share your shopping experience?</span>

                            <asp:HyperLink ID="HyperLinkFeedback"
                                runat="server"
                                NavigateUrl="~/Feedback.aspx"
                                CssClass="feedback-link">
                                Give Feedback
                            </asp:HyperLink>

                        </div>

                    </div>

                </asp:Panel>

            </div>

        </div>

    </div>

</asp:Content>


















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="WebApplicationProject1.PaymentPage" %>
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
</asp:Content>--%>


<%@ Page Title="Add Payment Account" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="AddPaymentAccount.aspx.cs"
    Inherits="WebApplicationProject1.AddPaymentAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .account-page {
            background-color: #FAF8F3;
            min-height: 600px;
            padding: 50px 20px;
            font-family: Arial, Helvetica, sans-serif;
            color: #333333;
        }

        .account-container {
            max-width: 650px;
            margin: 0 auto;
        }

        .account-heading {
            text-align: center;
            color: #866528;
            font-size: 30px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .account-subheading {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .account-card {
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

        .form-group {
            margin-bottom: 22px;
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

        .account-button {
            display: block;
            box-sizing: border-box;
            width: 100%;
            min-height: 48px;
            margin-top: 10px;
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

        .account-button:hover {
            background-color: #6F5220 !important;
            color: #FFFFFF !important;
        }

        .account-message {
            display: block;
            color: #866528;
            font-size: 14px;
            font-weight: 600;
            margin-top: 18px;
            text-align: center;
        }

        @media screen and (max-width: 600px) {
            .account-page {
                padding: 25px 12px;
            }

            .account-card {
                padding: 22px;
            }

            .account-heading {
                font-size: 25px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="account-page">

        <div class="account-container">

            <h1 class="account-heading">Add Payment Account</h1>

            <p class="account-subheading">
                Enter your account details to add a payment account.
            </p>

            <div class="account-card">

                <asp:Label ID="Label12" runat="server"
                    CssClass="section-heading"
                    Text="Account Details">
                </asp:Label>

                <div class="form-group">

                    <asp:Label ID="Label2" runat="server"
                        CssClass="form-label"
                        Text="Account Name">
                    </asp:Label>

                    <asp:TextBox ID="TextBox2" runat="server"
                        CssClass="account-input"
                        MaxLength="100">
                    </asp:TextBox>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3"
                        runat="server"
                        ControlToValidate="TextBox2"
                        ValidationExpression="^[A-Za-z ]+$"
                        ErrorMessage="Enter a valid account name using letters and spaces."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="form-group">

                    <asp:Label ID="Label3" runat="server"
                        CssClass="form-label"
                        Text="Account Number">
                    </asp:Label>

                    <asp:TextBox ID="TextBox3" runat="server"
                        CssClass="account-input"
                        MaxLength="10">
                    </asp:TextBox>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2"
                        runat="server"
                        ControlToValidate="TextBox3"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Enter a valid 10-digit account number."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="form-group">

                    <asp:Label ID="Label4" runat="server"
                        CssClass="form-label"
                        Text="Account Balance">
                    </asp:Label>

                    <asp:TextBox ID="TextBox4" runat="server"
                        CssClass="account-input"
                        MaxLength="15">
                    </asp:TextBox>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator4"
                        runat="server"
                        ControlToValidate="TextBox4"
                        ValidationExpression="^\d+(\.\d{1,2})?$"
                        ErrorMessage="Enter a valid account balance."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <asp:Button ID="Button3" runat="server"
                    Text="Add Account"
                    CssClass="account-button"
                    OnClick="Button3_Click" />

                <asp:Label ID="Label17" runat="server"
                    CssClass="account-message">
                </asp:Label>

            </div>

        </div>

    </div>

</asp:Content>


















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddPaymentAccount.aspx.cs" Inherits="WebApplicationProject1.AddPaymentAccount" %>

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
</asp:Content>--%>

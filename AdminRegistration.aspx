
<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true"
    CodeBehind="AdminRegistration.aspx.cs"
    Inherits="WebApplicationProject1.AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .admin-register-page {
            background: #f8f6f0;
            padding: 55px 15px;
            min-height: 650px;
            font-family: Arial, sans-serif;
        }

        .admin-register-card {
            max-width: 560px;
            margin: 0 auto;
            padding: 38px 45px;
            background: #ffffff;
            border: 1px solid #e9dfc9;
            border-top: 5px solid #866528;
            border-radius: 12px;
            box-shadow: 0 8px 28px rgba(65, 48, 15, 0.09);
        }

        .admin-register-title {
            text-align: center;
            color: #866528;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .admin-register-subtitle {
            text-align: center;
            color: #88806f;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .admin-field {
            margin-bottom: 19px;
        }

        .admin-field label {
            display: block;
            color: #51452f;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .admin-input {
            width: 100%;
            box-sizing: border-box;
            padding: 12px 14px;
            border: 1px solid #ded6c5;
            border-radius: 6px;
            background: #fffefa;
            color: #333333;
            font-size: 14px;
            outline: none;
        }

        .admin-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.12);
        }

        .admin-error {
            display: block;
            color: #b42318;
            font-size: 12px;
            margin-top: 6px;
        }

        /* Register button - matches Login button */

        .admin-register-button {
            display: block;
            width: 100%;
            height: 48px;
            margin-top: 8px;
            padding: 0 13px;
            box-sizing: border-box;
            background: #ffffff !important;
            color: #866528 !important;
            border: 1px solid #866528 !important;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .admin-register-button:hover {
            background: #866528 !important;
            color: #ffffff !important;
        }

        .admin-message {
            display: block;
            margin-top: 18px;
            text-align: center;
            color: #866528;
            font-weight: bold;
        }

        @media (max-width: 600px) {

            .admin-register-page {
                padding: 30px 12px;
            }

            .admin-register-card {
                padding: 28px 20px;
            }

            .admin-register-title {
                font-size: 26px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="admin-register-page">

        <div class="admin-register-card">

            <div class="admin-register-title">
                <asp:Label ID="Label7" runat="server"
                    Text="Admin Portal">
                </asp:Label>
            </div>

            <div class="admin-register-subtitle">
                Create your administrator account
            </div>


            <!-- Name -->

            <div class="admin-field">

                <label for="<%= TextBox1.ClientID %>">Name</label>

                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="admin-input"
                    placeholder="Enter your full name">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="TextBox1"
                    ErrorMessage="Enter the name"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Email -->

            <div class="admin-field">

                <label for="<%= TextBox2.ClientID %>">Email</label>

                <asp:TextBox ID="TextBox2" runat="server"
                    CssClass="admin-input"
                    TextMode="Email"
                    placeholder="Enter your email address">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Enter your email address"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Enter a valid email address"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RegularExpressionValidator>

            </div>


            <!-- Username -->

            <div class="admin-field">

                <label for="<%= TextBox3.ClientID %>">Username</label>

                <asp:TextBox ID="TextBox3" runat="server"
                    CssClass="admin-input"
                    placeholder="Choose a username">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Enter a username"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Password -->

            <div class="admin-field">

                <label for="<%= TextBox4.ClientID %>">Password</label>

                <asp:TextBox ID="TextBox4" runat="server"
                    TextMode="Password"
                    CssClass="admin-input"
                    placeholder="Create a password">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Enter a password"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Confirm Password -->

            <div class="admin-field">

                <label for="<%= TextBox5.ClientID %>">Confirm Password</label>

                <asp:TextBox ID="TextBox5" runat="server"
                    TextMode="Password"
                    CssClass="admin-input"
                    placeholder="Re-enter your password">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Confirm your password"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:RequiredFieldValidator>

                <asp:CompareValidator
                    ID="CompareValidator1"
                    runat="server"
                    ControlToCompare="TextBox4"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Passwords do not match"
                    CssClass="admin-error"
                    Display="Dynamic"
                    ValidationGroup="AdminRegister">
                </asp:CompareValidator>

            </div>


            <!-- Register Button -->

            <asp:Button ID="Button1" runat="server"
                Text="Register"
                OnClick="Button1_Click"
                CssClass="admin-register-button"
                ValidationGroup="AdminRegister" />


            <!-- Registration Message -->

            <asp:Label ID="Label5" runat="server"
                Visible="False"
                CssClass="admin-message">
            </asp:Label>

        </div>

    </div>

</asp:Content>


























<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="WebApplicationProject1.AdminRegistration" %>
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
</asp:Content>--%>

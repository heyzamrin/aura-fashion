
<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplicationProject1.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .registration-page {
            background: #f8f6f0;
            padding: 45px 15px 60px;
            min-height: 650px;
            font-family: Arial, sans-serif;
        }

        .registration-card {
            max-width: 850px;
            margin: 0 auto;
            padding: 35px 40px;
            background: #ffffff;
            border: 1px solid #e8dfca;
            border-top: 5px solid #866528;
            border-radius: 8px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        }

        .registration-title {
            text-align: center;
            color: #866528;
            font-size: 29px;
            font-weight: bold;
            margin: 0 0 8px;
        }

        .registration-subtitle {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .registration-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px 24px;
        }

        .registration-field {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .registration-field.full-width {
            grid-column: 1 / -1;
        }

        .registration-label {
            color: #433a2c;
            font-size: 14px;
            font-weight: bold;
        }

        .registration-input {
            width: 100%;
            box-sizing: border-box;
            min-height: 43px;
            padding: 11px 12px;
            border: 1px solid #d8d2c5;
            border-radius: 5px;
            color: #333333;
            background: #ffffff;
            font-size: 14px;
            outline: none;
        }

        .registration-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 2px rgba(134, 101, 40, 0.12);
        }

        .registration-validator {
            color: #b42318;
            font-size: 12px;
            line-height: 1.5;
        }

        .registration-actions {
            text-align: center;
            margin-top: 30px;
        }

        .registration-button {
            width: 100%;
            max-width: 300px;
            min-height: 47px;
            padding: 12px 25px;
            background: #866528 !important;
            color: #ffffff !important;
            border: 1px solid #866528;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.2s;
        }

        .registration-button:hover {
            background: #ffffff !important;
            color: #866528 !important;
        }

        .registration-message {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #866528;
            font-size: 14px;
            font-weight: bold;
            overflow-wrap: anywhere;
        }

        @media (max-width: 600px) {
            .registration-page {
                padding: 25px 12px 40px;
            }

            .registration-card {
                padding: 25px 18px;
            }

            .registration-grid {
                grid-template-columns: 1fr;
            }

            .registration-field.full-width {
                grid-column: auto;
            }

            .registration-title {
                font-size: 25px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="registration-page">

        <div class="registration-card">

            <h2 class="registration-title">Create Your Account</h2>

            <p class="registration-subtitle">
                Register to enjoy shopping with us.
            </p>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                CssClass="registration-validator"
                HeaderText="Please correct the following:"
                DisplayMode="BulletList" />

            <div class="registration-grid">

                <!-- Name -->
                <div class="registration-field">

                    <asp:Label ID="Label1" runat="server"
                        Text="Full Name"
                        AssociatedControlID="TextBox1"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox1" runat="server"
                        CssClass="registration-input"
                        placeholder="Enter your full name" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server"
                        ControlToValidate="TextBox1"
                        ErrorMessage="Name is required."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Age -->
                <div class="registration-field">

                    <asp:Label ID="Label2" runat="server"
                        Text="Age"
                        AssociatedControlID="TextBox2"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox2" runat="server"
                        CssClass="registration-input"
                        TextMode="Number"
                        placeholder="Enter your age" />

                    <asp:RangeValidator ID="RangeValidator1"
                        runat="server"
                        ControlToValidate="TextBox2"
                        ErrorMessage="Age must be between 18 and 60."
                        MinimumValue="18"
                        MaximumValue="60"
                        Type="Integer"
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Address -->
                <div class="registration-field full-width">

                    <asp:Label ID="Label3" runat="server"
                        Text="Address"
                        AssociatedControlID="TextBox3"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox3" runat="server"
                        CssClass="registration-input"
                        placeholder="Enter your address" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        runat="server"
                        ControlToValidate="TextBox3"
                        ErrorMessage="Address is required."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Phone -->
                <div class="registration-field">

                    <asp:Label ID="Label4" runat="server"
                        Text="Phone Number"
                        AssociatedControlID="TextBox4"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox4" runat="server"
                        CssClass="registration-input"
                        TextMode="Phone"
                        MaxLength="10"
                        placeholder="10-digit phone number" />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server"
                        ControlToValidate="TextBox4"
                        ValidationExpression="^\d{10}$"
                        ErrorMessage="Enter a valid 10-digit phone number."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Email -->
                <div class="registration-field">

                    <asp:Label ID="Label5" runat="server"
                        Text="Email Address"
                        AssociatedControlID="TextBox5"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox5" runat="server"
                        CssClass="registration-input"
                        TextMode="Email"
                        placeholder="Enter your email"
                        OnTextChanged="TextBox5_TextChanged" />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                        runat="server"
                        ControlToValidate="TextBox5"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Enter a valid email address."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Pincode -->
                <div class="registration-field">

                    <asp:Label ID="Label6" runat="server"
                        Text="Pincode"
                        AssociatedControlID="TextBox6"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox6" runat="server"
                        CssClass="registration-input"
                        MaxLength="6"
                        placeholder="6-digit pincode" />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                        runat="server"
                        ControlToValidate="TextBox6"
                        ValidationExpression="^\d{6}$"
                        ErrorMessage="Enter a valid 6-digit pincode."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Username -->
                <div class="registration-field">

                    <asp:Label ID="Label8" runat="server"
                        Text="Username"
                        AssociatedControlID="TextBox7"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox7" runat="server"
                        CssClass="registration-input"
                        placeholder="Choose a username" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server"
                        ControlToValidate="TextBox7"
                        ErrorMessage="Username is required."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

                <!-- Password -->
                <div class="registration-field">

                    <asp:Label ID="Label9" runat="server"
                        Text="Password"
                        AssociatedControlID="TextBox8"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox8" runat="server"
                        CssClass="registration-input"
                        TextMode="Password"
                        placeholder="Create a password" />

                </div>

                <!-- Confirm Password -->
                <div class="registration-field full-width">

                    <asp:Label ID="Label10" runat="server"
                        Text="Confirm Password"
                        AssociatedControlID="TextBox9"
                        CssClass="registration-label" />

                    <asp:TextBox ID="TextBox9" runat="server"
                        CssClass="registration-input"
                        TextMode="Password"
                        placeholder="Re-enter your password" />

                    <asp:CompareValidator ID="CompareValidator1"
                        runat="server"
                        ControlToValidate="TextBox9"
                        ControlToCompare="TextBox8"
                        ErrorMessage="Passwords do not match."
                        CssClass="registration-validator"
                        Display="Dynamic" />

                </div>

            </div>

            <div class="registration-actions">

                <asp:Button ID="Button1" runat="server"
                    Text="Create Account"
                    OnClick="Button1_Click"
                    CssClass="registration-button" />

            </div>

            <asp:Label ID="Label7" runat="server"
                Text=""
                Visible="False"
                CssClass="registration-message" />

        </div>

    </div>

</asp:Content>



















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplicationProject1.Register" %>
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
</asp:Content>--%>


<%@ Page Title="Add Category" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true"
    CodeBehind="AddCategory.aspx.cs"
    Inherits="WebApplicationProject1.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .add-category-page {
            background: #f8f6f0;
            padding: 50px 15px 65px;
            min-height: 600px;
            font-family: Arial, sans-serif;
        }

        .add-category-card {
            max-width: 620px;
            margin: 0 auto;
            padding: 38px 42px;
            background: #ffffff;
            border: 1px solid #e9dfc9;
            border-top: 5px solid #866528;
            border-radius: 12px;
            box-shadow: 0 8px 28px rgba(65, 48, 15, 0.09);
            box-sizing: border-box;
        }

        .add-category-title {
            text-align: center;
            color: #866528;
            font-size: 29px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .add-category-line {
            width: 60px;
            height: 3px;
            background: #866528;
            border-radius: 5px;
            margin: 0 auto 12px;
        }

        .add-category-subtitle {
            text-align: center;
            color: #88806f;
            font-size: 14px;
            margin-bottom: 32px;
            line-height: 1.6;
        }

        .category-field {
            margin-bottom: 22px;
        }

        .category-label {
            display: block;
            color: #51452f;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 9px;
        }

        .category-input,
        .category-dropdown {
            display: block;
            width: 100%;
            box-sizing: border-box;
            padding: 12px 14px;
            border: 1px solid #ded6c5;
            border-radius: 6px;
            background: #fffefa;
            color: #333333;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
        }

        .category-input:focus,
        .category-dropdown:focus,
        .category-description:focus {
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.12);
        }

        .category-description {
            display: block;
            width: 100%;
            min-height: 115px;
            box-sizing: border-box;
            padding: 12px 14px;
            border: 1px solid #ded6c5;
            border-radius: 6px;
            background: #fffefa;
            color: #333333;
            font-family: Arial, sans-serif;
            font-size: 14px;
            resize: vertical;
            outline: none;
        }

        .category-file {
            display: block;
            width: 100%;
            box-sizing: border-box;
            padding: 10px;
            border: 1px dashed #cbb98f;
            border-radius: 6px;
            background: #fcfaf5;
            color: #51452f;
            font-size: 13px;
        }

        .category-error {
            display: block;
            color: #b42318;
            font-size: 12px;
            margin-top: 6px;
            line-height: 1.5;
        }

        .add-category-button {
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

        .add-category-button:hover {
            background: #866528 !important;
            color: #ffffff !important;
        }

        .category-message {
            display: block;
            margin-top: 18px;
            text-align: center;
            color: #866528;
            font-size: 14px;
            font-weight: bold;
            line-height: 1.6;
        }

        @media (max-width: 600px) {
            .add-category-page {
                padding: 30px 12px 40px;
            }

            .add-category-card {
                padding: 28px 20px;
            }

            .add-category-title {
                font-size: 25px;
            }
        }

    </style>

    <script type="text/javascript">
        function validateCategoryImage(source, args) {
            var fileInput = document.getElementById(
                '<%= FileUpload1.ClientID %>');

            if (!fileInput || fileInput.value === "") {
                args.IsValid = false;
                return;
            }

            var fileName = fileInput.value;
            var extension = fileName.substring(
                fileName.lastIndexOf('.') + 1).toLowerCase();

            args.IsValid =
                extension === "jpg" ||
                extension === "jpeg" ||
                extension === "png";
        }
    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="add-category-page">

        <div class="add-category-card">

            <div class="add-category-title">
                ADD CATEGORY
            </div>

            <div class="add-category-line"></div>

            <div class="add-category-subtitle">
                Add a new category to your store
            </div>

            <!-- Category Name -->

            <div class="category-field">

                <asp:Label ID="Label1" runat="server"
                    Text="Category Name"
                    AssociatedControlID="TextBox1"
                    CssClass="category-label">
                </asp:Label>

                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="category-input"
                    placeholder="Enter category name">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="TextBox1"
                    ErrorMessage="Category name is required."
                    CssClass="category-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>

            <!-- Category Image -->

            <div class="category-field">

                <asp:Label ID="Label2" runat="server"
                    Text="Category Image"
                    AssociatedControlID="FileUpload1"
                    CssClass="category-label">
                </asp:Label>

                <asp:FileUpload ID="FileUpload1" runat="server"
                    CssClass="category-file" />

                <asp:CustomValidator
                    ID="CustomValidator1"
                    runat="server"
                    ErrorMessage="Please select a JPG, JPEG, or PNG image."
                    CssClass="category-error"
                    Display="Dynamic"
                    ValidateEmptyText="true"
                    EnableClientScript="true"
                    ClientValidationFunction="validateCategoryImage"
                    OnServerValidate="CustomValidator1_ServerValidate">
                </asp:CustomValidator>

            </div>

            <!-- Status -->

            <div class="category-field">

                <asp:Label ID="Label3" runat="server"
                    Text="Status"
                    AssociatedControlID="DropDownList1"
                    CssClass="category-label">
                </asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server"
                    CssClass="category-dropdown">

                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Out of Stock</asp:ListItem>

                </asp:DropDownList>

            </div>

            <!-- Description -->

            <div class="category-field">

                <asp:Label ID="Label4" runat="server"
                    Text="Description"
                    AssociatedControlID="TextBox2"
                    CssClass="category-label">
                </asp:Label>

                <asp:TextBox ID="TextBox2" runat="server"
                    TextMode="MultiLine"
                    Rows="4"
                    CssClass="category-description"
                    placeholder="Enter category description">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Category description is required."
                    CssClass="category-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>

            <!-- Add Button -->

            <asp:Button ID="Button1" runat="server"
                Text="Add Category"
                OnClick="Button1_Click"
                CssClass="add-category-button"
                CausesValidation="true" />

            <!-- Result Message -->

            <asp:Label ID="Label6" runat="server"
                Text=""
                Visible="False"
                CssClass="category-message">
            </asp:Label>

        </div>

    </div>

</asp:Content>
















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="WebApplicationProject1.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 132px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 159px;
            height: 26px;
        }
        .auto-style6 {
            width: 132px;
            height: 26px;
        }
        .auto-style7 {
            width: 235px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Underline="False" Text="ADD CATEGORY" Font-Size="X-Large" ForeColor="#BB8D3F"></asp:Label>
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
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Text="Category Name" ForeColor="#BB8D3F"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="235px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Category name is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="Category Image" ForeColor="#BB8D3F"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please select a category image."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Text="Status" ForeColor="#BB8D3F"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Out of Stock</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Text="Description" ForeColor="#BB8D3F"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="235px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Category description is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" BackColor="#BB8D3F" BorderStyle="Dashed" Font-Bold="True" Font-Size="Small" />
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
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
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
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
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

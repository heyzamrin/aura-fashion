
<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="ViewOneProduct.aspx.cs"
    Inherits="WebApplicationProject1.ViewOneProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .product-page {
            background-color: #FAF8F3;
            min-height: 650px;
            padding: 50px 20px;
            font-family: Arial, Helvetica, sans-serif;
            color: #333333;
        }

        .product-heading {
            text-align: center;
            color: #866528;
            font-size: 30px;
            font-weight: 600;
            margin-bottom: 35px;
        }

        .product-card {
            max-width: 1000px;
            margin: 0 auto;
            padding: 35px;
            background-color: #FFFFFF;
            border: 1px solid #E9E1D1;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(70, 55, 30, 0.08);
            display: flex;
            align-items: center;
            gap: 45px;
        }

        .product-image-section {
            width: 45%;
            text-align: center;
        }

        .product-image {
            width: 100%;
            max-width: 380px;
            height: 350px;
            object-fit: contain;
            background-color: #FFFFFF;
        }

        .product-details {
            width: 55%;
        }

        .product-name {
            display: block;
            font-size: 28px;
            font-weight: 600;
            color: #333333;
            margin-bottom: 15px;
        }

        .product-price {
            display: block;
            font-size: 25px;
            font-weight: bold;
            color: #866528;
            margin-bottom: 20px;
        }

        .product-description {
            display: block;
            font-size: 15px;
            line-height: 1.8;
            color: #666666;
            margin-bottom: 25px;
        }

        .quantity-label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            color: #444444;
            margin-bottom: 8px;
        }

        .quantity-dropdown {
            width: 100%;
            max-width: 160px;
            height: 42px;
            padding: 8px;
            background-color: #FFFFFF;
            color: #333333;
            border: 1px solid #D5C5A5;
            border-radius: 5px;
            margin-bottom: 25px;
        }

        .product-button {
            display: block;
            width: 100%;
            max-width: 320px;
            min-height: 46px;
            margin-bottom: 12px;
            padding: 12px 18px;
            font-size: 15px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .add-cart-button {
            background-color: #866528 !important;
            color: #FFFFFF !important;
            border: 1px solid #866528 !important;
        }

        .add-cart-button:hover {
            background-color: #6F5220 !important;
            color: #FFFFFF !important;
        }

        .view-cart-button {
            background-color: #FFFFFF !important;
            color: #866528 !important;
            border: 1px solid #866528 !important;
        }

        .view-cart-button:hover {
            background-color: #F5EFE3 !important;
            color: #6F5220 !important;
        }

        .home-button {
            width: auto;
            min-height: 40px;
            margin-top: 12px;
            background-color: transparent !important;
            color: #866528 !important;
            border: none !important;
            text-align: left;
            padding-left: 0;
        }

        .home-button:hover {
            background-color: transparent !important;
            color: #5C431A !important;
            text-decoration: underline;
        }

        @media screen and (max-width: 700px) {
            .product-page {
                padding: 25px 12px;
            }

            .product-card {
                padding: 22px;
                flex-direction: column;
                gap: 25px;
            }

            .product-image-section,
            .product-details {
                width: 100%;
            }

            .product-image {
                height: 260px;
            }

            .product-heading {
                font-size: 25px;
            }

            .product-name {
                font-size: 24px;
            }

            .product-button {
                max-width: 100%;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-page">

        <h1 class="product-heading">Product Details</h1>

        <div class="product-card">

            <div class="product-image-section">

                <asp:Image ID="Image1" runat="server"
                    CssClass="product-image"
                    AlternateText="Product Image" />

            </div>

            <div class="product-details">

                <asp:Label ID="Label1" runat="server"
                    CssClass="product-name"></asp:Label>

                <asp:Label ID="Label2" runat="server"
                    CssClass="product-price"></asp:Label>

                <asp:Label ID="Label3" runat="server"
                    CssClass="product-description"></asp:Label>

                <asp:Label ID="Label4" runat="server"
                    CssClass="quantity-label"
                    Text="Select Quantity"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server"
                    CssClass="quantity-dropdown">
                </asp:DropDownList>

                <asp:Button ID="Button2" runat="server"
                    Text="Add to Cart"
                    CssClass="product-button add-cart-button"
                    OnClick="Button2_Click" />

                <asp:Button ID="Button3" runat="server"
                    Text="View Cart"
                    CssClass="product-button view-cart-button"
                    OnClick="Button3_Click" />

                <asp:Button ID="Button1" runat="server"
                    Text="← Back to Home"
                    CssClass="product-button home-button"
                    PostBackUrl="~/UserHOME11.aspx" />

            </div>

        </div>

    </div>

</asp:Content>






















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewOneProduct.aspx.cs" Inherits="WebApplicationProject1.ViewOneProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 224px;
        }
        .auto-style2 {
            width: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1"><span class="nav-label">
                <asp:Image ID="Image1" runat="server" Height="355px" Width="366px" />
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#BB8D3F" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="X-Small" Font-Underline="True" ForeColor="#866528">
                                
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button2" runat="server" BackColor="#BB8D3F" Font-Bold="True" Font-Size="Small" Text="Add to Cart" Width="100%" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" Text="View Cart" Width="100%" OnClick="Button3_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="#BB8D3F"  Text="🏠︎" Width="100%" PostBackUrl="~/UserHOME11.aspx" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

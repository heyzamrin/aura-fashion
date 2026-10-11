

<%@ Page Title="Our Products" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewAllProducts.aspx.cs" Inherits="WebApplicationProject1.ViewAllProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .products-container {
            width: 92%;
            max-width: 1250px;
            margin: 0 auto;
            padding: 40px 0 60px;
            font-family: Georgia, serif;
        }

        .products-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .products-heading h2 {
            color: #866528;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .products-heading p {
            color: #777777;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        .product-list {
            width: 100%;
        }

        .product-card {
            width: 240px;
            background-color: #ffffff;
            border: 1px solid #e8dfcf;
            border-radius: 5px;
            padding: 12px;
            margin: 12px;
            text-align: left;
            vertical-align: top;
            transition: box-shadow 0.3s;
        }

        .product-card:hover {
            box-shadow: 0 5px 18px rgba(134, 101, 40, 0.16);
        }

        .product-image {
            width: 240px;
            height: 280px;
            object-fit: cover;
            display: block;
            border-radius: 3px;
            cursor: pointer;
        }

        .product-name {
            display: block;
            color: #866528;
            font-size: 18px;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 8px;
        }

        .product-price {
            display: block;
            color: #333333;
            font-family: Arial, sans-serif;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-description {
            display: block;
            color: #777777;
            font-family: Arial, sans-serif;
            font-size: 13px;
            line-height: 1.6;
            min-height: 40px;
        }

        @media screen and (max-width: 600px) {
            .products-container {
                width: 96%;
            }

            .product-card {
                width: 220px;
            }

            .product-image {
                width: 220px;
                height: 250px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="products-container">

        <div class="products-heading">
            <h2>Our Collection</h2>
            <p>Discover your style with our latest fashion collection.</p>
        </div>

        <asp:DataList
            ID="DataList1"
            runat="server"
            RepeatColumns="4"
            RepeatDirection="Horizontal"
            CssClass="product-list">

            <ItemTemplate>

                <table class="product-card">

                    <tr>
                        <td>

                            <asp:ImageButton
                                ID="ImageButton1"
                                runat="server"
                                CssClass="product-image"
                                CommandArgument='<%# Eval("ProductId") %>'
                                ImageUrl='<%# Eval("ProductImage") %>'
                                OnCommand="ImageButton1_Command"
                                AlternateText='<%# Eval("ProductName") %>'
                                ToolTip="View product details" />

                        </td>
                    </tr>

                    <tr>
                        <td>

                            <asp:Label
                                ID="Label1"
                                runat="server"
                                CssClass="product-name"
                                Text='<%# Eval("ProductName") %>'>
                            </asp:Label>

                        </td>
                    </tr>

                    <tr>
                        <td>

                            <asp:Label
                                ID="Label2"
                                runat="server"
                                CssClass="product-price"
                                Text='<%# "₹ " + Eval("ProductPrice") %>'>
                            </asp:Label>

                        </td>
                    </tr>

                    <tr>
                        <td>

                            <asp:Label
                                ID="Label3"
                                runat="server"
                                CssClass="product-description"
                                Text='<%# Eval("ProductDescription") %>'>
                            </asp:Label>

                        </td>
                    </tr>

                </table>

            </ItemTemplate>

        </asp:DataList>

    </div>

</asp:Content>



























<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewAllProducts.aspx.cs" Inherits="WebApplicationProject1.ViewAllProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductId") %>' Height="280px" ImageUrl='<%# Eval("ProductImage") %>' OnCommand="ImageButton1_Command" Width="220px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#BB8D3F" Text='<%# Eval("ProductName") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><span class="nav-label">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Small" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                                    </span></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

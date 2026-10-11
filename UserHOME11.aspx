
<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserHOME11.aspx.cs" Inherits="WebApplicationProject1.UserHOME11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .home-container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 35px 0 60px;
            font-family: Georgia, serif;
        }

        .welcome-section {
            background: #f8f5ef;
            border: 1px solid #e8dfcf;
            border-radius: 6px;
            padding: 45px 20px;
            text-align: center;
            margin-bottom: 45px;
        }

        .welcome-title {
            color: #866528;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .welcome-text {
            color: #666;
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 25px;
        }

        .shop-button {
            display: inline-block;
            background-color: #866528;
            color: white;
            padding: 12px 28px;
            text-decoration: none;
            font-family: Arial, sans-serif;
            font-size: 14px;
            letter-spacing: 1px;
            border-radius: 3px;
        }

        .shop-button:hover {
            background-color: #6d501f;
            color: white;
        }

        .category-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .category-heading h2 {
            color: #866528;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .category-heading p {
            color: #777;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        .category-list {
            display: block;
            text-align: center;
        }

        .category-card {
            display: inline-block;
            vertical-align: top;
            background-color: #fff;
            border: 1px solid #e8dfcf;
            padding: 15px;
            margin: 10px;
            border-radius: 5px;
            transition: box-shadow 0.3s;
        }

        .category-card:hover {
            box-shadow: 0 5px 15px rgba(134, 101, 40, 0.15);
        }

        .category-name {
            display: block;
            color: #866528;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 15px;
        }

        .category-image {
            width: 250px;
            height: 270px;
            object-fit: cover;
            display: block;
            border: 1px solid #eee5d7;
            cursor: pointer;
        }

        @media screen and (max-width: 600px) {
            .home-container {
                width: 95%;
            }

            .welcome-title {
                font-size: 25px;
            }

            .category-image {
                width: 220px;
                height: 240px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="home-container">

        <div class="welcome-section">

            <div class="welcome-title">
                Find Your Favourite Style
            </div>

            <div class="welcome-text">
                Discover timeless fashion and explore styles made for you.
                <br />
                All the fashion you need is here.
            </div>

            <asp:HyperLink
                ID="HyperLink1"
                runat="server"
                NavigateUrl="~/ViewAllProducts.aspx"
                CssClass="shop-button"
                Text="SHOP COLLECTION">
            </asp:HyperLink>

        </div>

        <div class="category-heading">
            <h2>Shop by Category</h2>
            <p>Explore our collections and find your perfect look.</p>
        </div>

        <div class="category-list">

            <asp:DataList
                ID="DataList1"
                runat="server"
                RepeatDirection="Horizontal"
                RepeatLayout="Flow">

                <ItemTemplate>

                    <div class="category-card">

                        <asp:Label
                            ID="Label3"
                            runat="server"
                            CssClass="category-name"
                            Text='<%# Eval("CategoryName") %>'>
                        </asp:Label>

                        <asp:ImageButton
                            ID="ImageButton1"
                            runat="server"
                            CssClass="category-image"
                            ImageUrl='<%# Eval("CategoryImage") %>'
                            CommandArgument='<%# Eval("CategoryId") %>'
                            OnCommand="ImageButton1_Command1"
                            AlternateText='<%# Eval("CategoryName") %>'
                            ToolTip="Explore this category" />

                    </div>

                </ItemTemplate>

            </asp:DataList>

        </div>

    </div>

</asp:Content>














<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserHOME11.aspx.cs" Inherits="WebApplicationProject1.UserHOME11" %>
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
                <asp:Label ID="Label4" runat="server" Font-Names="yacgetiwks8_0, _fb_, auto" Font-Size="Large" Text="Find your favourite style, all the fashion you need is here" Width="100%"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#866528" Text='<%# Eval("CategoryName") %>' Width="100%" BorderColor="#996633" Font-Names="font-family: &quot;georgia&quot;, serif;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" ImageUrl='<%# Eval("CategoryImage") %>' Width="280px" CommandArgument='<%# Eval("CategoryId") %>' OnCommand="ImageButton1_Command1" BorderColor="#866528" BorderStyle="Ridge" />
                                </td>
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


<%@ Page Title="Payment Successful" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="WebApplicationProject1.PaymentSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .success-page {
            background-color: #FAF8F3;
            min-height: 75vh;
            padding: 55px 20px;
            font-family: Arial, sans-serif;
            color: #333333;
        }

        .success-container {
            max-width: 900px;
            margin: 0 auto;
        }

        .success-card {
            background-color: #FFFFFF;
            border: 1px solid #E8DFC9;
            border-radius: 14px;
            padding: 40px 30px;
            text-align: center;
            box-shadow: 0 5px 22px rgba(134, 101, 40, 0.08);
            margin-bottom: 28px;
        }

        .success-icon {
            width: 68px;
            height: 68px;
            line-height: 64px;
            border: 2px solid #866528;
            border-radius: 50%;
            color: #866528;
            font-size: 35px;
            font-weight: bold;
            margin: 0 auto 20px;
        }

        .success-title {
            display: block;
            color: #866528;
            font-family: Georgia, serif;
            font-size: 32px;
            font-weight: normal;
            margin-bottom: 12px;
        }

        .success-message {
            color: #777064;
            font-size: 14px;
            line-height: 1.8;
            margin: 0;
        }

        .feedback-heading {
            display: block;
            text-align: left;
            font-family: Georgia, serif;
            color: #30291F;
            font-size: 24px;
            font-weight: normal;
            margin-bottom: 8px;
        }

        .feedback-description {
            color: #81796D;
            text-align: left;
            font-size: 13px;
            line-height: 1.7;
            margin-bottom: 22px;
        }

        .products-card {
            background-color: #FFFFFF;
            border: 1px solid #E8DFC9;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 4px 16px rgba(134, 101, 40, 0.05);
        }

        .product-grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .product-grid th {
            background-color: #866528;
            color: #FFFFFF;
            padding: 14px 12px;
            text-align: left;
            border: 1px solid #866528;
        }

        .product-grid td {
            padding: 14px 12px;
            border: 1px solid #E8DFC9;
            color: #443D33;
            vertical-align: middle;
        }

        .product-grid tr:nth-child(even) {
            background-color: #FAF8F3;
        }

        .product-grid img {
            border-radius: 6px;
            object-fit: contain;
        }

        .feedback-link {
            display: inline-block;
            background-color: #866528;
            color: #FFFFFF !important;
            text-decoration: none;
            padding: 9px 16px;
            border-radius: 5px;
            font-size: 12px;
            font-weight: bold;
        }

        .feedback-link:hover {
            background-color: #6F511F;
            text-decoration: none;
        }

        @media screen and (max-width: 600px) {
            .success-page {
                padding: 30px 12px;
            }

            .success-card {
                padding: 30px 18px;
            }

            .success-title {
                font-size: 27px;
            }

            .products-card {
                padding: 15px;
                overflow-x: auto;
            }

            .product-grid {
                min-width: 500px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="success-page">
        <div class="success-container">

            <!-- Payment Confirmation -->
            <div class="success-card">

                <div class="success-icon">
                    &#10003;
                </div>

                <asp:Label ID="Label12" runat="server"
                    CssClass="success-title"
                    Text="Payment Successful!">
                </asp:Label>

                <p class="success-message">
                    Thank you for your purchase!
                    Your payment has been completed successfully.
                    We hope you enjoy shopping with us.
                </p>

            </div>

            <!-- Product Feedback -->
            <div class="products-card">

                <asp:Label ID="Label13" runat="server"
                    CssClass="feedback-heading"
                    Text="Rate Your Products">
                </asp:Label>

                <div class="feedback-description">
                    We value your feedback. Select a product below to share your experience.
                </div>

                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False"
                    CssClass="product-grid"
                    BorderColor="#E8DFC9"
                    BorderStyle="Solid"
                    GridLines="Horizontal"
                    OnRowCommand="GridView1_RowCommand"
                    EmptyDataText="No purchased products found.">

                    <Columns>

                        <asp:BoundField
                            DataField="ProductName"
                            HeaderText="Product Name" />

                        <asp:ImageField
                            DataImageUrlField="ProductImage"
                            HeaderText="Product Image">
                            <ControlStyle Height="80px" Width="80px" />
                        </asp:ImageField>

                        <asp:TemplateField HeaderText="Share Your Experience">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1"
                                    runat="server"
                                    CssClass="feedback-link"
                                    Text="Give Feedback"
                                    CommandArgument='<%# Eval("ProductId") %>'
                                    CommandName="Feedback">
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>

                    <HeaderStyle BackColor="#866528" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="#443D33" />
                    <AlternatingRowStyle BackColor="#FAF8F3" />

                </asp:GridView>

            </div>

        </div>
    </div>

</asp:Content>


















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="WebApplicationProject1.PaymentSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 291px;
        }
        .auto-style3 {
            width: 126px;
        }
        .auto-style4 {
            width: 74%;
            margin-left: 0px;
        }
        .auto-style5 {
            width: 196px;
        }
        .auto-style6 {
            width: 160px;
        }
        .auto-style7 {
            width: 126px;
            height: 26px;
        }
        .auto-style8 {
            width: 291px;
            height: 26px;
        }
        .auto-style9 {
            width: 196px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8"><span class="nav-label">
                <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="X-Large" ForeColor="#009933" Text="     Payment Successful!"></asp:Label>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Rate Your Products"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2"><span class="nav-label">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#866528" BorderStyle="Double" ForeColor="#866528" OnRowCommand="GridView1_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product">
                                                    <ControlStyle Height="100px" Width="100px" />
                                                </asp:ImageField>
                                                <asp:TemplateField HeaderText="Feedback">
                                                    <ItemTemplate>
                                                        <span class="nav-label">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" Text="Feedback" CommandArgument='<%# Eval("ProductId") %>' CommandName="Feedback"></asp:LinkButton>
                                                        </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle BorderStyle="Double" ForeColor="#866528" />
                                            <FooterStyle Font-Size="Small" />
                                        </asp:GridView>
                                    </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

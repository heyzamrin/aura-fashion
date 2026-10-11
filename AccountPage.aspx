
<%@ Page Title="Order Summary" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="WebApplicationProject1.AccountPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        * {
            box-sizing: border-box;
        }

        .account-page {
            background: #F8F5EF;
            min-height: 100vh;
            padding: 45px 20px;
            font-family: Arial, sans-serif;
            color: #333333;
        }

        .account-container {
            max-width: 1150px;
            margin: 0 auto;
        }

        .breadcrumb {
            color: #8B8171;
            font-size: 13px;
            margin-bottom: 20px;
        }

        .breadcrumb span {
            color: #866528;
            font-weight: bold;
        }

        .page-header {
            text-align: center;
            margin-bottom: 35px;
        }

        .small-heading {
            color: #866528;
            font-size: 11px;
            letter-spacing: 4px;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .page-title {
            font-family: Georgia, serif;
            font-size: 38px;
            font-weight: normal;
            color: #30291F;
            margin: 0 0 12px;
        }

        .page-subtitle {
            color: #81796D;
            font-size: 14px;
            line-height: 1.7;
            margin: 0;
        }

        .checkout-layout {
            display: grid;
            grid-template-columns: minmax(0, 1.6fr) minmax(300px, 0.9fr);
            gap: 25px;
            align-items: start;
        }

        .left-column,
        .right-column {
            min-width: 0;
        }

        .section-card {
            background: #FFFFFF;
            border: 1px solid #E9E1D4;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 22px;
            box-shadow: 0 5px 20px rgba(66, 48, 19, 0.035);
        }

        .section-heading {
            display: block;
            color: #30291F;
            font-family: Georgia, serif;
            font-size: 21px;
            font-weight: normal;
            margin-bottom: 22px;
            padding-bottom: 15px;
            border-bottom: 1px solid #EEE7DC;
        }

        .section-number {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #F4EEE2;
            color: #866528;
            font-family: Arial, sans-serif;
            font-size: 12px;
            font-weight: bold;
            margin-right: 10px;
        }

        .details-table {
            width: 100%;
            border-collapse: collapse;
        }

        .details-table td {
            padding: 13px 5px;
            border-bottom: 1px solid #F2EEE7;
            font-size: 13px;
            line-height: 1.6;
            overflow-wrap: anywhere;
        }

        .details-table tr:last-child td {
            border-bottom: none;
        }

        .details-table td:first-child {
            width: 125px;
            color: #8B8171;
        }

        .details-table td:last-child {
            color: #30291F;
            font-weight: 600;
        }

        .product-grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .product-grid th {
            background: #F7F3EC;
            color: #866528;
            padding: 14px 10px;
            border-bottom: 1px solid #E8DECD;
            text-align: left;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .product-grid td {
            padding: 14px 10px;
            border-bottom: 1px solid #F0EBE3;
            color: #443D33;
            vertical-align: middle;
        }

        .product-grid tr:last-child td {
            border-bottom: none;
        }

        .product-grid img {
            max-width: 65px;
            height: 65px;
            object-fit: contain;
            border-radius: 5px;
        }

        .payment-options {
            display: block;
            color: #51483B;
            font-size: 13px;
            line-height: 2.6;
        }

        .payment-options input {
            accent-color: #866528;
            margin-right: 9px;
        }

        .payment-note {
            color: #8B8171;
            font-size: 12px;
            line-height: 1.7;
            margin-top: 12px;
        }

        .order-card {
            background: #FFFFFF;
            border: 1px solid #E9E1D4;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 22px;
            box-shadow: 0 5px 20px rgba(66, 48, 19, 0.035);
        }

        .order-heading {
            color: #30291F;
            font-family: Georgia, serif;
            font-size: 23px;
            font-weight: normal;
            margin: 0 0 8px;
        }

        .order-caption {
            color: #8B8171;
            font-size: 12px;
            line-height: 1.7;
            padding-bottom: 20px;
            border-bottom: 1px solid #EEE7DC;
            margin-bottom: 10px;
        }

        .total-table {
            width: 100%;
            border-collapse: collapse;
        }

        .total-table td {
            padding: 14px 0;
            font-size: 13px;
            border-bottom: 1px solid #F0EBE3;
        }

        .total-table td:first-child {
            color: #81796D;
        }

        .total-table td:last-child {
            color: #30291F;
            text-align: right;
            font-weight: 600;
        }

        .grand-total-row td {
            border-top: 1px solid #D8C6A7;
            border-bottom: none;
            padding-top: 21px;
            font-size: 16px;
            color: #866528 !important;
            font-weight: bold;
        }

        .total-note {
            background: #F8F5EF;
            border-radius: 7px;
            padding: 13px;
            margin-top: 18px;
            color: #81796D;
            font-size: 12px;
            line-height: 1.7;
        }

        .button-area {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin-top: 25px;
        }

        .payment-button {
            width: 100%;
            min-height: 49px;
            background: #866528;
            color: #FFFFFF;
            border: 1px solid #866528;
            border-radius: 6px;
            padding: 14px 18px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background 0.2s ease;
        }

        .payment-button:hover {
            background: #6F511F;
            border-color: #6F511F;
        }

        .back-button {
            width: 100%;
            min-height: 47px;
            background: #FFFFFF;
            color: #866528;
            border: 1px solid #D9C9AD;
            border-radius: 6px;
            padding: 13px 18px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 0.5px;
            cursor: pointer;
            transition: background 0.2s ease;
        }

        .back-button:hover {
            background: #F8F3E9;
        }

        .secure-note {
            text-align: center;
            color: #8B8171;
            font-size: 11px;
            margin-top: 16px;
            line-height: 1.8;
        }

        @media screen and (max-width: 850px) {
            .checkout-layout {
                grid-template-columns: 1fr;
            }

            .right-column {
                order: -1;
            }

            .page-title {
                font-size: 32px;
            }
        }

        @media screen and (max-width: 550px) {
            .account-page {
                padding: 25px 12px;
            }

            .section-card,
            .order-card {
                padding: 18px 14px;
            }

            .page-title {
                font-size: 28px;
            }

            .details-table td {
                padding: 11px 4px;
                font-size: 12px;
            }

            .details-table td:first-child {
                width: 95px;
            }

            .product-grid {
                min-width: 570px;
            }

            .product-scroll {
                overflow-x: auto;
            }

            .section-heading {
                font-size: 19px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="account-page">
        <div class="account-container">

            <div class="breadcrumb">
                Home &nbsp;/&nbsp; Cart &nbsp;/&nbsp; <span>Order Summary</span>
            </div>

            <div class="page-header">
                <div class="small-heading">YOUR ORDER</div>
                <h1 class="page-title">Order Summary</h1>
                <p class="page-subtitle">
                    Review your details and products before proceeding to payment.
                </p>
            </div>

            <div class="checkout-layout">

                <!-- LEFT COLUMN -->
                <div class="left-column">

                    <!-- Customer Information -->
                    <div class="section-card">
                        <asp:Label ID="Label2" runat="server"
                            CssClass="section-heading"
                            Text="Customer Information">
                        </asp:Label>

                        <table class="details-table">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Delivery Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <!-- Order Information -->
                    <div class="section-card">
                        <asp:Label ID="Label7" runat="server"
                            CssClass="section-heading"
                            Text="Order Information">
                        </asp:Label>

                        <table class="details-table">
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Order Number"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Order Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <!-- Products -->
                    <div class="section-card">
                        <asp:Label ID="Label10" runat="server"
                            CssClass="section-heading"
                            Text="Your Products">
                        </asp:Label>

                        <div class="product-scroll">
                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="False"
                                CssClass="product-grid"
                                GridLines="None"
                                CellPadding="8"
                                EmptyDataText="No products found for this order.">

                                <Columns>
                                    <asp:ImageField DataImageUrlField="ProductImage"
                                        HeaderText="Image"
                                        ControlStyle-Width="65px"
                                        ControlStyle-Height="65px">
                                    </asp:ImageField>

                                    <asp:BoundField DataField="ProductName"
                                        HeaderText="Product" />

                                    <asp:BoundField DataField="ProductPrice"
                                        HeaderText="Price"
                                        DataFormatString="{0:N2}" />

                                    <asp:BoundField DataField="Quantity"
                                        HeaderText="Qty" />

                                    <asp:BoundField DataField="Subtotal"
                                        HeaderText="Subtotal"
                                        DataFormatString="{0:N2}" />

                                    <asp:BoundField DataField="OrderDate"
                                        HeaderText="Order Date"
                                        DataFormatString="{0:dd-MM-yyyy}" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                    <!-- Payment Method -->
                    <div class="section-card">
                        <asp:Label ID="Label11" runat="server"
                            CssClass="section-heading"
                            Text="Payment Method">
                        </asp:Label>

                        <asp:CheckBoxList ID="CheckBoxList1" runat="server"
                            CssClass="payment-options"
                            RepeatDirection="Vertical"
                            RepeatLayout="Flow"
                            TextAlign="Right">
                            <asp:ListItem>Cash on Delivery</asp:ListItem>
                            <asp:ListItem>UPI</asp:ListItem>
                            <asp:ListItem>Credit/Debit Card</asp:ListItem>
                        </asp:CheckBoxList>

                        <div class="payment-note">
                            Choose your preferred payment method before continuing.
                        </div>
                    </div>

                </div>

                <!-- RIGHT COLUMN -->
                <div class="right-column">

                    <div class="order-card">
                        <h2 class="order-heading">Order Total</h2>

                        <div class="order-caption">
                            Please check the amount details below.
                        </div>

                        <table class="total-table">
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="Subtotal"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="0.00"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="Shipping"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="0.00"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="Discount"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="0.00"></asp:Label>
                                </td>
                            </tr>

                            <tr class="grand-total-row">
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text="Grand Total"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="0.00"></asp:Label>
                                </td>
                            </tr>
                        </table>

                        <div class="total-note">
                            Your order total includes the subtotal, shipping charges and any discount applied.
                        </div>

                        <div class="button-area">
                            <asp:Button ID="Button1" runat="server"
                                CssClass="payment-button"
                                Text="Proceed to Payment"
                                OnClick="Button1_Click" />

                            <asp:Button ID="Button3" runat="server"
                                CssClass="back-button"
                                Text="Back to Cart"
                                OnClick="Button3_Click" />
                        </div>

                        <div class="secure-note">
                            Thank you for shopping with us.
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

</asp:Content>
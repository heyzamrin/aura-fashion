
<%@ Page Title="My Shopping Cart" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="ViewCart1.aspx.cs"
    Inherits="WebApplicationProject1.ViewCart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .cart-page {
            background: #FAF8F3;
            min-height: 600px;
            padding: 45px 20px;
            font-family: Arial, Helvetica, sans-serif;
            color: #333333;
        }

        .cart-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .cart-heading {
            color: #866528;
            font-size: 32px;
            font-weight: 600;
            margin: 0 0 10px 0;
        }

        .cart-subheading {
            color: #777777;
            font-size: 15px;
            margin-bottom: 35px;
        }

        .cart-layout {
            display: flex;
            align-items: flex-start;
            gap: 25px;
        }

        .cart-products {
            flex: 1;
            min-width: 0;
        }

        .cart-card {
            background: #FFFFFF;
            border: 1px solid #E9E1D1;
            border-radius: 10px;
            padding: 22px;
            box-shadow: 0 4px 18px rgba(70, 55, 30, 0.05);
            overflow-x: auto;
        }

        .cart-section-title {
            color: #333333;
            font-size: 19px;
            font-weight: 600;
            margin: 0 0 20px 0;
        }

        .cart-grid {
            width: 100%;
            border-collapse: collapse;
            background: #FFFFFF;
            border: none;
            color: #333333;
        }

        .cart-grid th {
            background: #F5EFE3;
            color: #6F5220;
            padding: 15px 10px;
            text-align: center;
            font-size: 13px;
            font-weight: 600;
            border-bottom: 1px solid #E9E1D1;
            white-space: nowrap;
        }

        .cart-grid td {
            padding: 17px 10px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #EEE8DC;
            color: #444444;
            font-size: 13px;
        }

        .cart-grid tr {
            background: #FFFFFF;
        }

        .cart-grid img {
            width: 75px;
            height: 75px;
            object-fit: contain;
            border-radius: 5px;
        }

        .cart-grid input[type="text"] {
            width: 48px;
            padding: 8px 4px;
            text-align: center;
            border: 1px solid #D8C8A8;
            border-radius: 5px;
            color: #333333;
            background: #FFFFFF;
        }

        .cart-grid a {
            color: #866528;
            text-decoration: none;
            font-weight: 600;
            margin: 0 4px;
        }

        .cart-grid a:hover {
            color: #5C431A;
            text-decoration: underline;
        }

        .empty-cart {
            display: block;
            text-align: center;
            color: #866528;
            font-size: 20px;
            font-weight: 600;
            padding: 30px 10px;
        }

        .order-summary {
            width: 310px;
            min-width: 270px;
            flex-shrink: 0;
            background: #FFFFFF;
            border: 1px solid #E9E1D1;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 18px rgba(70, 55, 30, 0.05);
            box-sizing: border-box;
        }

        .summary-heading {
            color: #333333;
            font-size: 20px;
            font-weight: 600;
            margin: 0 0 25px 0;
            padding-bottom: 18px;
            border-bottom: 1px solid #EEE8DC;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 12px;
            margin-bottom: 18px;
            font-size: 14px;
            color: #666666;
        }

        .summary-total {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
            border-top: 1px solid #EEE8DC;
            padding-top: 20px;
            margin-top: 10px;
            margin-bottom: 25px;
            color: #333333;
            font-size: 16px;
            font-weight: 600;
        }

        .total-amount {
            color: #866528;
            font-size: 21px;
            font-weight: 700;
            white-space: nowrap;
        }

        .summary-note {
            color: #888888;
            font-size: 12px;
            line-height: 1.6;
            margin-bottom: 22px;
        }

        .cart-button {
            display: block;
            width: 100%;
            box-sizing: border-box;
            min-height: 46px;
            padding: 13px 12px;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-align: center;
            transition: background 0.2s ease;
        }

        .summary-button {
            background: #866528 !important;
            color: #FFFFFF !important;
            border: 1px solid #866528 !important;
        }

        .summary-button:hover {
            background: #6F5220 !important;
            border-color: #6F5220 !important;
        }

        .shopping-button {
            display: inline-block;
            width: auto;
            min-height: auto;
            margin-top: 22px;
            padding: 8px 0;
            background: transparent !important;
            color: #866528 !important;
            border: none !important;
            font-size: 14px;
            font-weight: 600;
            text-align: left;
        }

        .shopping-button:hover {
            color: #5C431A !important;
            text-decoration: underline;
        }

        .cart-footer {
            margin-top: 22px;
        }

        @media screen and (max-width: 900px) {
            .cart-layout {
                flex-direction: column;
            }

            .cart-products {
                width: 100%;
                box-sizing: border-box;
            }

            .order-summary {
                width: 100%;
                min-width: 0;
            }
        }

        @media screen and (max-width: 600px) {
            .cart-page {
                padding: 28px 12px;
            }

            .cart-heading {
                font-size: 26px;
            }

            .cart-subheading {
                line-height: 1.6;
                margin-bottom: 25px;
            }

            .cart-card {
                padding: 12px;
            }

            .cart-grid {
                min-width: 620px;
            }

            .cart-grid th,
            .cart-grid td {
                padding: 12px 8px;
                font-size: 12px;
            }

            .order-summary {
                padding: 20px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cart-page">
        <div class="cart-container">

            <h1 class="cart-heading">Shopping Cart</h1>

            <p class="cart-subheading">
                Review your selected pieces before proceeding to checkout.
            </p>

            <div class="cart-layout">

                <div class="cart-products">

                    <div class="cart-card">

                        <h2 class="cart-section-title">Your Items</h2>

                        <asp:GridView ID="GridView1" runat="server"
                            AutoGenerateColumns="False"
                            DataKeyNames="CartId"
                            CssClass="cart-grid"
                            GridLines="None"
                            OnRowCancelingEdit="GridView1_RowCancelingEdit"
                            OnRowDeleting="GridView1_RowDeleting"
                            OnRowEditing="GridView1_RowEditing"
                            OnRowUpdating="GridView1_RowUpdating">

                            <Columns>

                                <asp:ImageField DataImageUrlField="ProductImage"
                                    HeaderText="Image">
                                    <ControlStyle Height="75px" Width="75px" />
                                </asp:ImageField>

                                <asp:BoundField DataField="ProductName"
                                    HeaderText="Product"
                                    ReadOnly="True" />

                                <asp:TemplateField HeaderText="Quantity">
                                    <ItemTemplate>
                                        <%# Eval("ProductQuantity") %>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtqty" runat="server"
                                            Text='<%# Bind("ProductQuantity") %>'
                                            Width="48px">
                                        </asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="ProductPrice"
                                    HeaderText="Price"
                                    DataFormatString="{0:N2}"
                                    ReadOnly="True" />

                                <asp:BoundField DataField="ProductSubtotal"
                                    HeaderText="Subtotal"
                                    DataFormatString="{0:N2}"
                                    ReadOnly="True" />

                                <asp:CommandField ShowEditButton="True"
                                    EditText="Edit"
                                    UpdateText="Save"
                                    CancelText="Cancel" />

                                <asp:CommandField ShowDeleteButton="True"
                                    DeleteText="Remove" />

                            </Columns>

                        </asp:GridView>

                        <asp:Label ID="Label1" runat="server"
                            CssClass="empty-cart"
                            Text="Your cart is empty!"
                            Visible="False">
                        </asp:Label>

                    </div>

                    <div class="cart-footer">

                        <asp:Button ID="Button2" runat="server"
                            Text="← Continue Shopping"
                            CssClass="cart-button shopping-button"
                            OnClick="Button2_Click" />

                    </div>

                </div>


                <asp:Panel ID="pnlOrderSummary" runat="server"
                    CssClass="order-summary">

                    <h2 class="summary-heading">Order Summary</h2>

                    <div class="summary-row">
                        <span>Subtotal</span>
                        <asp:Label ID="lblSubtotal" runat="server"
                            Text="₹0.00">
                        </asp:Label>
                    </div>

                    <div class="summary-row">
                        <span>Shipping</span>
                        <span>Calculated at checkout</span>
                    </div>

                    <div class="summary-total">
                        <span>Cart Total</span>
                        <asp:Label ID="lblCartTotal" runat="server"
                            CssClass="total-amount"
                            Text="₹0.00">
                        </asp:Label>
                    </div>

                    <p class="summary-note">
                        Your order total is based on the items currently in your cart.
                        Shipping charges, if applicable, are handled at checkout.
                    </p>

                    <asp:Button ID="Button1" runat="server"
                        Text="Proceed to Summary"
                        CssClass="cart-button summary-button"
                        OnClick="Button1_Click" />

                </asp:Panel>

            </div>

        </div>
    </div>

</asp:Content>



<%--
OLD DESIGN - PRESERVED FOR FUTURE USE

<asp:Content ID="OldContent1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 430px;
        }

        .auto-style2 {
            height: 26px;
        }

        .auto-style3 {
            width: 430px;
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="OldContent2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>
                <span class="nav-label">
                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="CartId"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating"
                        ForeColor="#BB8D3F">

                        <Columns>
                            <asp:ImageField DataImageUrlField="ProductImage"
                                HeaderText="Product Image">
                                <ControlStyle Height="100px" Width="100px" />
                            </asp:ImageField>

                            <asp:BoundField DataField="ProductName"
                                HeaderText="Name"
                                ReadOnly="True" />

                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <%# Eval("ProductQuantity") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtqty" runat="server"
                                        Text='<%# Bind("ProductQuantity") %>'
                                        Width="50px">
                                    </asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField DataField="ProductPrice"
                                HeaderText="Price"
                                ReadOnly="True" />

                            <asp:BoundField DataField="ProductSubtotal"
                                HeaderText="Subtotal"
                                ReadOnly="True" />

                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </span>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <span class="nav-label">
                    <asp:Button ID="Button1" runat="server"
                        BackColor="#866528"
                        Text="Proceed to Summary"
                        OnClick="Button1_Click"
                        Width="100%" />
                </span>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <span class="nav-label">
                    <asp:Label ID="Label1" runat="server"
                        Font-Bold="True"
                        Font-Size="Large"
                        ForeColor="#866528"
                        Text="Your Cart is Empty!"
                        Visible="False">
                    </asp:Label>
                </span>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <span class="nav-label">
                    <asp:Button ID="Button2" runat="server"
                        BackColor="#866528"
                        Text="Continue Shopping"
                        OnClick="Button2_Click"
                        Width="100%" />
                </span>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

END OF OLD DESIGN
--%>
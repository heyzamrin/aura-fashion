
<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplicationProject1.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .product-page {
            background: #f8f6f0;
            padding: 45px 15px;
            min-height: 650px;
            font-family: Arial, sans-serif;
        }

        .product-card {
            max-width: 850px;
            margin: 0 auto;
            background: #ffffff;
            border: 1px solid #e8dfca;
            border-top: 5px solid #866528;
            border-radius: 8px;
            padding: 35px 40px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        }

        .product-title {
            text-align: center;
            color: #866528;
            font-size: 28px;
            font-weight: bold;
            margin: 0 0 8px;
        }

        .product-subtitle {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 22px 25px;
        }

        .product-field {
            display: flex;
            flex-direction: column;
            gap: 9px;
        }

        .product-field.full-width {
            grid-column: 1 / -1;
        }

        .product-label {
            color: #433a2c;
            font-size: 14px;
            font-weight: bold;
        }

        .product-input {
            width: 100%;
            box-sizing: border-box;
            min-height: 44px;
            padding: 11px 12px;
            border: 1px solid #d8d2c5;
            border-radius: 5px;
            background: #ffffff;
            color: #333333;
            font-size: 14px;
            outline: none;
        }

        .product-input:focus {
            border-color: #866528;
            box-shadow: 0 0 0 2px rgba(134, 101, 40, 0.12);
        }

        .product-description {
            min-height: 100px;
            resize: vertical;
        }

        .product-file {
            padding: 10px;
            background: #fbfaf7;
        }

        .product-actions {
            text-align: center;
            margin-top: 30px;
        }

        .product-button {
            min-width: 190px;
            min-height: 46px;
            padding: 12px 25px;
            background: #866528;
            color: #ffffff;
            border: 1px solid #866528;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.2s;
        }

        .product-button:hover {
            background: #ffffff;
            color: #866528;
        }

        .product-message {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            font-weight: bold;
            color: #866528;
            overflow-wrap: anywhere;
        }

        .product-table-wrap {
            max-width: 1100px;
            margin: 35px auto 0;
            overflow-x: auto;
            background: #ffffff;
            padding: 20px;
            border: 1px solid #e8dfca;
            border-radius: 8px;
        }

        .product-table-title {
            color: #866528;
            text-align: center;
            font-size: 21px;
            margin: 0 0 20px;
        }

        @media (max-width: 650px) {
            .product-card {
                padding: 25px 18px;
            }

            .product-grid {
                grid-template-columns: 1fr;
            }

            .product-field.full-width {
                grid-column: auto;
            }

            .product-title {
                font-size: 24px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-page">

        <div class="product-card">

            <h2 class="product-title">Add New Product</h2>
            <p class="product-subtitle">Enter the product details below</p>

            <div class="product-grid">

                <div class="product-field">
                    <asp:Label ID="Label1" runat="server"
                        Text="Product Category"
                        CssClass="product-label"></asp:Label>

                    <asp:DropDownList ID="DropDownList1" runat="server"
                        CssClass="product-input">
                    </asp:DropDownList>
                </div>

                <div class="product-field">
                    <asp:Label ID="Label3" runat="server"
                        Text="Product Name"
                        CssClass="product-label"></asp:Label>

                    <asp:TextBox ID="TextBox1" runat="server"
                        CssClass="product-input"
                        placeholder="Enter product name">
                    </asp:TextBox>
                </div>

                <div class="product-field">
                    <asp:Label ID="Label4" runat="server"
                        Text="Product Price"
                        CssClass="product-label"></asp:Label>

                    <asp:TextBox ID="TextBox2" runat="server"
                        CssClass="product-input"
                        TextMode="Number"
                        placeholder="Enter price">
                    </asp:TextBox>
                </div>

                <div class="product-field">
                    <asp:Label ID="Label5" runat="server"
                        Text="Product Stock"
                        CssClass="product-label"></asp:Label>

                    <asp:TextBox ID="TextBox4" runat="server"
                        CssClass="product-input"
                        TextMode="Number"
                        placeholder="Enter stock quantity">
                    </asp:TextBox>
                </div>

                <div class="product-field full-width">
                    <asp:Label ID="Label7" runat="server"
                        Text="Product Image"
                        CssClass="product-label"></asp:Label>

                    <asp:FileUpload ID="FileUpload1" runat="server"
                        CssClass="product-input product-file" />
                </div>

                <div class="product-field full-width">
                    <asp:Label ID="Label8" runat="server"
                        Text="Product Description"
                        CssClass="product-label"></asp:Label>

                    <asp:TextBox ID="TextBox3" runat="server"
                        CssClass="product-input product-description"
                        TextMode="MultiLine"
                        placeholder="Enter product description">
                    </asp:TextBox>
                </div>

                <div class="product-field full-width">
                    <asp:Label ID="Label9" runat="server"
                        Text="Product Status"
                        CssClass="product-label"></asp:Label>

                    <asp:DropDownList ID="DropDownList2" runat="server"
                        CssClass="product-input">
                        <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                        <asp:ListItem Text="Out of Stock" Value="Out of Stock"></asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>

            <div class="product-actions">
                <asp:Button ID="Button1" runat="server"
                    Text="Add Product"
                    CssClass="product-button"
                    OnClick="Button1_Click" />
            </div>

            <asp:Label ID="Label2" runat="server"
                CssClass="product-message"
                Visible="false">
            </asp:Label>

        </div>

        <div class="product-table-wrap">
            <h3 class="product-table-title">Recently Added Product</h3>

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="True"
                GridLines="None"
                CellPadding="10"
                Width="100%"
                HeaderStyle-BackColor="#866528"
                HeaderStyle-ForeColor="White"
                HeaderStyle-Font-Bold="true"
                RowStyle-BackColor="#ffffff"
                AlternatingRowStyle-BackColor="#f8f6f0"
                BorderColor="#e8dfca"
                BorderWidth="1px">
            </asp:GridView>
        </div>

    </div>

</asp:Content>



















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplicationProject1.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 572px;
        }
        .auto-style4 {
            margin-left: 158;
        }
        .auto-style5 {
            width: 389px;
        }
        .auto-style6 {
            width: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="#BB8D3F" Text="ADD PRODUCT"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    <asp:ListItem Enabled="False">Select Category</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Category"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="auto-style4"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Product name is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Product Price"></asp:Label>
            </td>
            <td class="auto-style6"><span class="nav-label">
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Product Price is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Product Image"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Description"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Product description is required." ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Product stock"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Product Stock is required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#BB8D3F" Text="Status"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="250px">
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Out of Stock</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Status"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6"><span class="nav-label">
                <asp:Button ID="Button1" runat="server" BackColor="#BB8D3F" ForeColor="White" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6"><span class="nav-label">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
                        <asp:BoundField DataField="CategoryId" HeaderText="Category ID" />
                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                        <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                        <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" />
                        <asp:BoundField DataField="ProductStock" HeaderText="Stock" />
                        <asp:BoundField DataField="ProductStatus" HeaderText="Status" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6"><span class="nav-label">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

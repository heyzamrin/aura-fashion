

<%@ Page Title="Edit Product" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="WebApplicationProject1.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .edit-product-page {
            background: #f8f6f0;
            padding: 55px 25px;
            min-height: 75vh;
            font-family: Arial, sans-serif;
        }

        .edit-product-container {
            max-width: 1300px;
            margin: 0 auto;
        }

        .edit-product-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .edit-product-label {
            display: inline-block;
            background: #eee5d2;
            color: #866528;
            padding: 8px 18px;
            border-radius: 25px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1.5px;
            margin-bottom: 12px;
        }

        .edit-product-heading h2 {
            color: #302719;
            font-size: 32px;
            font-weight: 700;
            margin: 0 0 10px;
        }

        .edit-product-heading h2 span {
            color: #866528;
        }

        .edit-product-heading p {
            color: #777064;
            font-size: 14px;
            margin: 0;
            line-height: 1.6;
        }

        .edit-product-card {
            background: #ffffff;
            padding: 25px;
            border: 1px solid #eee6d8;
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(70, 52, 20, 0.07);
        }

        .edit-product-table-wrap {
            width: 100%;
            overflow-x: auto;
        }

        .edit-product-grid {
            width: 100%;
            min-width: 1000px;
            border-collapse: collapse;
            border: none;
            color: #393329;
            font-size: 13px;
        }

        .edit-product-grid th {
            background: #866528;
            color: #ffffff;
            padding: 16px 13px;
            text-align: left;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 0.4px;
            white-space: nowrap;
            border: none;
        }

        .edit-product-grid th:first-child {
            border-radius: 8px 0 0 0;
        }

        .edit-product-grid th:last-child {
            border-radius: 0 8px 0 0;
        }

        .edit-product-grid td {
            padding: 15px 13px;
            color: #393329;
            vertical-align: middle;
            border-bottom: 1px solid #eee9df;
            line-height: 1.6;
        }

        .edit-product-grid tr:nth-child(even) td {
            background: #fcfaf6;
        }

        .edit-product-grid tr:hover td {
            background: #f8f2e7;
        }

        .edit-product-grid img {
            width: 78px;
            height: 78px;
            object-fit: contain;
            padding: 4px;
            background: #ffffff;
            border: 1px solid #e8dfce;
            border-radius: 10px;
        }

        .edit-product-grid input[type="text"],
        .edit-product-grid input[type="number"],
        .edit-product-grid select {
            width: 130px;
            max-width: 160px;
            box-sizing: border-box;
            padding: 9px;
            border: 1px solid #d8d2c5;
            border-radius: 6px;
            background: #ffffff;
            color: #393329;
            font-size: 13px;
        }

        .edit-product-grid input[type="file"] {
            max-width: 190px;
            font-size: 12px;
            color: #625b4e;
        }

        .edit-product-grid a {
            display: inline-block;
            color: #866528;
            font-size: 12px;
            font-weight: bold;
            text-decoration: none;
            margin-right: 10px;
            white-space: nowrap;
        }

        .edit-product-grid a:hover {
            color: #5d451b;
            text-decoration: underline;
        }

        .edit-product-note {
            margin: 20px 0 0;
            padding: 14px 16px;
            background: #f8f6f0;
            border-left: 3px solid #866528;
            border-radius: 5px;
            color: #777064;
            font-size: 13px;
            line-height: 1.7;
        }

        @media screen and (max-width: 600px) {
            .edit-product-page {
                padding: 35px 12px;
            }

            .edit-product-heading h2 {
                font-size: 26px;
            }

            .edit-product-card {
                padding: 12px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="edit-product-page">

        <div class="edit-product-container">

            <div class="edit-product-heading">

                <span class="edit-product-label">STORE MANAGEMENT</span>

                <h2>Edit <span>Products</span></h2>

                <p>
                    Manage your products, update details, replace images,
                    and remove products from your store.
                </p>

            </div>

            <div class="edit-product-card">

                <div class="edit-product-table-wrap">

                    <asp:GridView ID="GridView1"
                        runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="ProductId"
                        OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowDeleting="GridView1_RowDeleting"
                        CssClass="edit-product-grid"
                        CellPadding="0"
                        GridLines="None"
                        EmptyDataText="No products are available.">

                        <Columns>

                            <asp:BoundField
                                DataField="ProductId"
                                HeaderText="PRODUCT ID"
                                ReadOnly="True" />

                            <asp:BoundField
                                DataField="CategoryId"
                                HeaderText="CATEGORY ID" />

                            <asp:TemplateField HeaderText="PRODUCT IMAGE">

                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1"
                                        runat="server" />
                                </EditItemTemplate>

                                <ItemTemplate>
                                    <asp:Image ID="Image1"
                                        runat="server"
                                        ImageUrl='<%# Eval("ProductImage") %>'
                                        AlternateText="Product Image" />
                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:BoundField
                                DataField="ProductName"
                                HeaderText="PRODUCT NAME" />

                            <asp:BoundField
                                DataField="ProductPrice"
                                HeaderText="PRICE" />

                            <asp:BoundField
                                DataField="ProductDescription"
                                HeaderText="DESCRIPTION" />

                            <asp:BoundField
                                DataField="ProductStatus"
                                HeaderText="STATUS" />

                            <asp:BoundField
                                DataField="ProductStock"
                                HeaderText="STOCK" />

                            <asp:CommandField
                                ShowEditButton="True"
                                EditText="Edit"
                                UpdateText="Save"
                                CancelText="Cancel"
                                HeaderText="EDIT" />

                            <asp:CommandField
                                ShowDeleteButton="True"
                                DeleteText="Delete"
                                HeaderText="DELETE" />

                        </Columns>

                    </asp:GridView>

                </div>

                <p class="edit-product-note">
                    <strong>Tip:</strong>
                    Select Edit to update product details. To change a product
                    image, choose the new image file before selecting Save.
                </p>

            </div>

        </div>

    </div>

</asp:Content>























<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="WebApplicationProject1.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        .auto-style2 {
            width: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#F7444E" Text="EDIT PRODUCT"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td><span class="nav-label">
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="ProductId"
                    OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
                        <asp:BoundField DataField="CategoryId" HeaderText="Category ID" />
                        <asp:TemplateField HeaderText="Product Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("ProductImage") %>' Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                        <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                        <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" />
                        <asp:BoundField DataField="ProductStatus" HeaderText="Product Status" />
                        <asp:BoundField DataField="ProductStock" HeaderText="Product Stock" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView></td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

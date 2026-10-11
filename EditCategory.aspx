
<%@ Page Title="Manage Categories" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true"
    CodeBehind="EditCategory.aspx.cs"
    Inherits="WebApplicationProject1.EditCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        /* Main page */

        .category-page {
            background: #f8f6f0;
            padding: 50px 22px 70px;
            min-height: 650px;
            font-family: Arial, sans-serif;
        }

        .category-container {
            max-width: 1320px;
            margin: 0 auto;
        }

        /* Heading section */

        .category-top {
            text-align: center;
            margin-bottom: 38px;
        }

        .category-badge {
            display: inline-block;
            padding: 8px 17px;
            margin-bottom: 15px;
            border: 1px solid #e7dcc3;
            border-radius: 30px;
            background: #ffffff;
            color: #866528;
            font-size: 11px;
            font-weight: bold;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        .category-heading {
            color: #3d3324;
            font-size: 34px;
            font-weight: bold;
            letter-spacing: -0.5px;
            margin: 0 0 13px;
        }

        .category-heading span {
            color: #866528;
        }

        .category-heading-line {
            width: 58px;
            height: 4px;
            background: #866528;
            border-radius: 10px;
            margin: 0 auto 16px;
        }

        .category-subheading {
            max-width: 480px;
            margin: 0 auto;
            color: #81796b;
            font-size: 14px;
            line-height: 1.8;
        }

        /* Table card */

        .category-grid-wrapper {
            width: 100%;
            overflow-x: auto;
            background: #ffffff;
            border: 1px solid #e9dfc9;
            border-radius: 14px;
            padding: 25px;
            box-sizing: border-box;
            box-shadow: 0 12px 35px rgba(65, 48, 15, 0.07);
        }

        /* Card header */

        .category-table-heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            padding: 2px 2px 22px;
        }

        .category-table-title {
            color: #3d3324;
            font-size: 19px;
            font-weight: bold;
            margin-bottom: 6px;
        }

        .category-table-description {
            color: #8b8376;
            font-size: 12px;
            line-height: 1.6;
        }

        .category-table-tag {
            display: inline-block;
            padding: 9px 13px;
            border-radius: 6px;
            background: #f8f3e8;
            color: #866528;
            font-size: 11px;
            font-weight: bold;
            white-space: nowrap;
        }

        /* GridView */

        .category-grid {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            color: #403a30;
            font-size: 13px;
            border: 1px solid #eee7da;
            border-radius: 9px;
            overflow: hidden;
        }

        .category-grid th {
            background: #866528;
            color: #ffffff;
            padding: 17px 14px;
            text-align: left;
            font-size: 11px;
            font-weight: bold;
            letter-spacing: 0.7px;
            text-transform: uppercase;
            white-space: nowrap;
            border: none;
        }

        .category-grid td {
            padding: 17px 14px;
            border-bottom: 1px solid #f0ebe1;
            vertical-align: middle;
            line-height: 1.7;
        }

        .category-grid tr:last-child td {
            border-bottom: none;
        }

        .category-grid tr:nth-child(even) {
            background: #fdfbf7;
        }

        .category-grid tr:hover {
            background: #f8f3e8;
        }

        /* Category ID */

        .category-grid td:first-child {
            color: #866528;
            font-weight: bold;
            white-space: nowrap;
        }

        /* Category images */

        .category-grid img {
            display: block;
            object-fit: cover;
            width: 76px;
            height: 76px;
            border-radius: 10px;
            border: 1px solid #e8deca;
            padding: 3px;
            background: #ffffff;
            box-sizing: border-box;
        }

        /* Editing fields */

        .category-grid input[type="text"] {
            width: 100%;
            min-width: 110px;
            box-sizing: border-box;
            padding: 10px 11px;
            border: 1px solid #ded6c5;
            border-radius: 6px;
            background: #fffefa;
            color: #403a30;
            font-family: Arial, sans-serif;
            font-size: 13px;
        }

        .category-grid input[type="text"]:focus {
            outline: none;
            border-color: #866528;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, 0.10);
        }

        .category-grid input[type="file"] {
            max-width: 190px;
            color: #51452f;
            font-size: 12px;
        }

        /* Action links */

        .category-grid a {
            display: inline-block;
            color: #866528;
            font-size: 12px;
            font-weight: bold;
            text-decoration: none;
            margin: 3px 8px 3px 0;
            padding: 7px 10px;
            border: 1px solid #e5d8bd;
            border-radius: 5px;
            white-space: nowrap;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .category-grid a:hover {
            color: #ffffff;
            background: #866528;
            border-color: #866528;
            text-decoration: none;
        }

        /* Footer and pager */

        .category-grid tfoot td {
            padding: 12px;
        }

        .category-grid table {
            margin: 0 auto;
        }

        /* Responsive layout */

        @media (max-width: 768px) {

            .category-page {
                padding: 32px 12px 45px;
            }

            .category-heading {
                font-size: 27px;
            }

            .category-subheading {
                font-size: 13px;
            }

            .category-grid-wrapper {
                padding: 13px;
                border-radius: 10px;
            }

            .category-grid {
                min-width: 850px;
            }

            .category-grid th,
            .category-grid td {
                padding: 12px 10px;
            }

            .category-table-heading {
                align-items: flex-start;
                flex-direction: column;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="category-page">

        <div class="category-container">

            <!-- Page heading -->

            <div class="category-top">

                <div class="category-badge">
                    Store Management
                </div>

                <div class="category-heading">
                    Manage <span>Categories</span>
                </div>

                <div class="category-heading-line"></div>

                <div class="category-subheading">
                    Organize your store categories, update details,
                    and manage category images in one place.
                </div>

            </div>


            <!-- Table card -->

            <div class="category-grid-wrapper">

                <div class="category-table-heading">

                    <div>
                        <div class="category-table-title">
                            Category Details
                        </div>

                        <div class="category-table-description">
                            View and maintain your existing categories.
                        </div>
                    </div>

                    <div class="category-table-tag">
                        CATEGORY MANAGEMENT
                    </div>

                </div>


                <!-- Categories GridView -->

                <asp:GridView ID="GridView1" runat="server"
                    CssClass="category-grid"
                    DataKeyNames="CategoryId"
                    AutoGenerateColumns="False"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating"
                    GridLines="None"
                    CellPadding="4"
                    AutoGenerateDeleteButton="False"
                    AutoGenerateEditButton="False">

                    <Columns>

                        <asp:BoundField
                            DataField="CategoryId"
                            HeaderText="ID"
                            ReadOnly="True" />

                        <asp:TemplateField HeaderText="Category Image">

                            <EditItemTemplate>

                                <asp:FileUpload ID="FileUpload1"
                                    runat="server" />

                            </EditItemTemplate>

                            <ItemTemplate>

                                <asp:Image ID="Image1"
                                    runat="server"
                                    Height="76px"
                                    Width="76px"
                                    ImageUrl='<%# Eval("CategoryImage") %>'
                                    AlternateText="Category image" />

                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:BoundField
                            DataField="CategoryName"
                            HeaderText="Category Name" />

                        <asp:BoundField
                            DataField="CategoryStatus"
                            HeaderText="Status" />

                        <asp:BoundField
                            DataField="CategoryDescription"
                            HeaderText="Description" />

                        <asp:CommandField
                            ShowEditButton="True"
                            ShowDeleteButton="True"
                            EditText="Edit"
                            UpdateText="Save"
                            CancelText="Cancel"
                            DeleteText="Delete"
                            HeaderText="Actions" />

                    </Columns>

                    <HeaderStyle
                        BackColor="#866528"
                        Font-Bold="True"
                        ForeColor="White" />

                    <RowStyle BackColor="#FFFFFF" />

                    <AlternatingRowStyle BackColor="#FDFBF7" />

                    <FooterStyle
                        BackColor="#F8F3E8"
                        ForeColor="#403A30" />

                    <PagerStyle
                        BackColor="#FFFFFF"
                        ForeColor="#866528"
                        HorizontalAlign="Right" />

                    <SelectedRowStyle
                        BackColor="#F8F3E8"
                        Font-Bold="True"
                        ForeColor="#403A30" />

                </asp:GridView>

            </div>

        </div>

    </div>

</asp:Content>









<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="WebApplicationProject1.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>
                   <asp:GridView ID="GridView1" runat="server" DataKeyNames="CategoryId" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
                    <Columns>
                        <asp:BoundField DataField="CategoryId" HeaderText="Category ID" />
                        <asp:TemplateField HeaderText="Category Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("CategoryImage") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                        <asp:BoundField DataField="CategoryStatus" HeaderText="Status" />
                        <asp:BoundField DataField="CategoryDescription" HeaderText="Description" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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

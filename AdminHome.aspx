

<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebApplicationProject1.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-home {
            background: #f8f6f0;
            min-height: 650px;
            padding: 45px 25px 60px;
            font-family: Arial, sans-serif;
        }

        .admin-heading, .admin-feedback, .admin-cards {
            max-width: 1250px;
            margin-left: auto;
            margin-right: auto;
        }

        .admin-heading {
            margin-bottom: 35px;
        }

        .admin-heading h2 {
            color: #866528;
            font-size: 30px;
            font-weight: bold;
            margin: 0 0 10px;
        }

        .admin-heading p, .admin-card p {
            color: #777;
            font-size: 14px;
            line-height: 1.6;
        }

        .admin-feedback {
            text-align: right;
            margin-bottom: 25px;
        }

        .feedback-link, .admin-card-link {
            display: inline-block;
            background: #fff;
            color: #866528 !important;
            border: 1px solid #866528;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none !important;
            transition: .2s;
        }

        .feedback-link:hover, .admin-card-link:hover {
            background: #866528;
            color: #fff !important;
        }

        .admin-cards {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 25px;
        }

        .admin-card {
            background: #fff;
            border: 1px solid #e8dfca;
            border-radius: 9px;
            padding: 18px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,.04);
            transition: transform .2s, box-shadow .2s;
        }

        .admin-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 9px 22px rgba(134,101,40,.13);
        }

        .admin-image-button {
            display: block;
            width: 100%;
            border: none;
            padding: 0;
            margin: 0;
            background: transparent;
            cursor: pointer;
        }

        .admin-image-button img {
            display: block;
            width: 100%;
            height: 210px;
            object-fit: contain;
        }

        .admin-card h3 {
            color: #866528;
            font-size: 18px;
            margin: 18px 0 8px;
        }

        .admin-card p {
            min-height: 42px;
            margin: 0 0 18px;
        }

        @media (max-width: 1000px) {
            .admin-cards {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        @media (max-width: 550px) {
            .admin-home {
                padding: 30px 15px 40px;
            }

            .admin-heading h2 {
                font-size: 25px;
            }

            .admin-cards {
                grid-template-columns: 1fr;
                gap: 18px;
            }

            .admin-card p {
                min-height: auto;
            }

            .admin-feedback {
                text-align: left;
            }

            .admin-card-link {
                width: 80%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-home">

        <div class="admin-heading">
            <h2>Admin Dashboard</h2>
            <p>Manage your store categories, products, customers and feedback.</p>
        </div>

        <div class="admin-feedback">
            <asp:HyperLink ID="HyperLinkFeedback" runat="server"
                NavigateUrl="~/ViewFeedbackAdmin.aspx"
                CssClass="feedback-link">
                View Customer Feedback &#8594;
            </asp:HyperLink>
        </div>

        <div class="admin-cards">

            <div class="admin-card">
                <asp:ImageButton ID="ImageButton1" runat="server"
                    CssClass="admin-image-button"
                    ImageUrl="~/categoryimages/ADD CATEGORY (2).png"
                    PostBackUrl="~/AddCategory.aspx"
                    AlternateText="Add Category" />
                <h3>Add Category</h3>
                <p>Create a new category for your store.</p>
                <asp:HyperLink ID="HyperLink1" runat="server"
                    NavigateUrl="~/AddCategory.aspx"
                    CssClass="admin-card-link">Add Category</asp:HyperLink>
            </div>

            <div class="admin-card">
                <asp:ImageButton ID="ImageButton2" runat="server"
                    CssClass="admin-image-button"
                    ImageUrl="~/categoryimages/ADD CATEGORY (1).png"
                    PostBackUrl="~/EditCategory.aspx"
                    AlternateText="Edit Category" />
                <h3>Edit Category</h3>
                <p>View and manage existing categories.</p>
                <asp:HyperLink ID="HyperLink2" runat="server"
                    NavigateUrl="~/EditCategory.aspx"
                    CssClass="admin-card-link">Edit Category</asp:HyperLink>
            </div>

            <div class="admin-card">
                <asp:ImageButton ID="ImageButton3" runat="server"
                    CssClass="admin-image-button"
                    ImageUrl="~/categoryimages/ADD CATEGORY (3).png"
                    PostBackUrl="~/AddProduct.aspx"
                    AlternateText="Add Product" />
                <h3>Add Product</h3>
                <p>Add products, prices, images and stock.</p>
                <asp:HyperLink ID="HyperLink3" runat="server"
                    NavigateUrl="~/AddProduct.aspx"
                    CssClass="admin-card-link">Add Product</asp:HyperLink>
            </div>

            <div class="admin-card">
                <asp:ImageButton ID="ImageButton4" runat="server"
                    CssClass="admin-image-button"
                    ImageUrl="~/categoryimages/ADD CATEGORY.png"
                    PostBackUrl="~/EditProduct.aspx"
                    AlternateText="Edit Product" />
                <h3>Edit Product</h3>
                <p>View and update existing products.</p>
                <asp:HyperLink ID="HyperLink4" runat="server"
                    NavigateUrl="~/EditProduct.aspx"
                    CssClass="admin-card-link">Edit Product</asp:HyperLink>
            </div>

            <div class="admin-card">
                <div style="height:210px;display:flex;align-items:center;justify-content:center;">
                    <span style="font-size:75px;color:#866528;">&#128101;</span>
                </div>
                <h3>Manage Users</h3>
                <p>View customer details and manage account access.</p>
                <asp:HyperLink ID="HyperLink5" runat="server"
                    NavigateUrl="~/UserDetails.aspx"
                    CssClass="admin-card-link">Manage Users</asp:HyperLink>
            </div>

        </div>
    </div>
</asp:Content>













<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebApplicationProject1.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><span class="nav-label">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ViewFeedbackAdmin.aspx" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="#866528">View Feedback</asp:LinkButton>
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
            <td>
                &nbsp;</td>
            <td><span class="nav-label">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" Width="300px" ImageUrl="~/categoryimages/ADD CATEGORY (2).png" OnClick="ImageButton1_Click" PostBackUrl="~/AddCategory.aspx" />
            </td>
            <td><span class="nav-label">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="300px" Width="300px" ImageUrl="~/categoryimages/ADD CATEGORY (1).png" PostBackUrl="~/EditCategory.aspx" ForeColor="White" />
            </td>
            <td><span class="nav-label">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" Width="300px" ForeColor="White" ImageUrl="~/categoryimages/ADD CATEGORY (3).png" PostBackUrl="~/AddProduct.aspx" />
            </td>
            <td><span class="nav-label">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" Width="300px" ForeColor="White" ImageUrl="~/categoryimages/ADD CATEGORY.png" PostBackUrl="~/EditProduct.aspx" />
            </td>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewFeedbackAdmin.aspx.cs" Inherits="WebApplicationProject1.ViewFeedbackAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .feedback-page {
            background: #f8f6f0;
            min-height: 75vh;
            padding: 55px 25px;
            font-family: Arial, sans-serif;
        }

        .feedback-container {
            max-width: 1150px;
            margin: 0 auto;
        }

        .feedback-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .feedback-label {
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

        .feedback-title {
            color: #302719;
            font-size: 32px;
            font-weight: 700;
            margin: 0 0 10px;
        }

        .feedback-title span {
            color: #866528;
        }

        .feedback-subtitle {
            color: #777064;
            font-size: 14px;
            margin: 0;
        }

        .feedback-card {
            background: #ffffff;
            padding: 25px;
            border-radius: 16px;
            border: 1px solid #eee6d8;
            box-shadow: 0 8px 25px rgba(70, 52, 20, 0.07);
            overflow-x: auto;
        }

        .feedback-grid {
            width: 100%;
            min-width: 650px;
            border-collapse: collapse;
            border: none;
            color: #393329;
        }

        .feedback-grid th {
            background: #866528;
            color: #ffffff;
            padding: 17px 15px;
            text-align: left;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.4px;
            border: none;
        }

        .feedback-grid th:first-child {
            border-radius: 8px 0 0 0;
        }

        .feedback-grid th:last-child {
            border-radius: 0 8px 0 0;
        }

        .feedback-grid td {
            padding: 17px 15px;
            border-bottom: 1px solid #eee9df;
            vertical-align: middle;
            font-size: 14px;
        }

        .feedback-grid tr:nth-child(even) td {
            background: #fcfaf6;
        }

        .feedback-grid tr:hover td {
            background: #f8f2e7;
        }

        .feedback-grid img {
            width: 78px;
            height: 78px;
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid #e8dfce;
        }

        .feedback-grid a {
            display: inline-block;
            background: #ffffff;
            color: #866528 !important;
            border: 1px solid #866528;
            border-radius: 7px;
            padding: 9px 18px;
            font-size: 12px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.2s ease;
        }

        .feedback-grid a:hover {
            background: #866528;
            color: #ffffff !important;
        }

        @media screen and (max-width: 600px) {
            .feedback-page {
                padding: 35px 12px;
            }

            .feedback-title {
                font-size: 26px;
            }

            .feedback-card {
                padding: 12px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="feedback-page">
        <div class="feedback-container">

            <div class="feedback-heading">
                <span class="feedback-label">STORE MANAGEMENT</span>
                <h2 class="feedback-title">Customer <span>Feedback</span></h2>
                <p class="feedback-subtitle">
                    View customer reviews and manage your replies.
                </p>
            </div>

            <div class="feedback-card">

                <asp:GridView ID="GridView1"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="feedback-grid"
                    GridLines="None"
                    CellPadding="0"
                    EmptyDataText="No customer feedback is available yet.">

                    <Columns>

                        <asp:BoundField
                            DataField="ProductId"
                            HeaderText="PRODUCT ID" />

                        <asp:ImageField
                            DataImageUrlField="ProductImage"
                            HeaderText="PRODUCT">
                            <ControlStyle Height="78px" Width="78px" />
                        </asp:ImageField>

                        <asp:BoundField
                            DataField="ReviewMessage"
                            HeaderText="CUSTOMER FEEDBACK" />

                        <asp:TemplateField HeaderText="REPLY">
                            <ItemTemplate>
                                <asp:LinkButton
                                    ID="LinkButton1"
                                    runat="server"
                                    CommandArgument='<%# Eval("ReviewID") %>'
                                    Text='<%# Eval("ReviewStatus").ToString() == "Replied" ? "Replied" : "Reply" %>'
                                    Font-Size="Small"
                                    OnCommand="LinkButton1_Command">
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>
















<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewFeedbackAdmin.aspx.cs" Inherits="WebApplicationProject1.ViewFeedbackAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <columns>
                        <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
                        <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product">
                            <controlstyle height="100px" width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="ReviewMessage" HeaderText="Feedback" />
                        <asp:TemplateField HeaderText="Reply Message">
                            <itemtemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server"
                                    CommandArgument='<%# Eval("ReviewID") %>'
                                    Text='<%# Eval("ReviewStatus").ToString() == "Replied" ? "Replied" : "Reply" %>'
                                    Font-Size="Small"
                                    OnCommand="LinkButton1_Command">
                                </asp:LinkButton>
                            </itemtemplate>
                        </asp:TemplateField>
                    </columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

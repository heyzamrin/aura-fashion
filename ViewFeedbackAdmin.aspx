<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewFeedbackAdmin.aspx.cs" Inherits="WebApplicationProject1.ViewFeedbackAdmin" %>

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
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCart1.aspx.cs" Inherits="WebApplicationProject1.ViewCart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ForeColor="#BB8D3F">
                    <Columns>
                        <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="Name" ReadOnly="True" />
                        <%-- <asp:BoundField DataField="ProductQuantity" HeaderText="Quantity" />--%>
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
                        <asp:BoundField DataField="ProductPrice" HeaderText="Price" ReadOnly="True" />
                        <asp:BoundField DataField="ProductSubtotal"
    HeaderText="Subtotal"
    ReadOnly="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1"><span class="nav-label">
                <asp:Button ID="Button1" runat="server" BackColor="#BB8D3F" Text="Proceed" OnClick="Button1_Click" Width="100%" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

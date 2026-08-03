<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="WebApplicationProject1.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><span class="nav-label">
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
                            <asp:GridView ID="GridView1" runat="server"
                                DataKeyNames="CartId"
                                AutoGenerateColumns="False"
                                CellPadding="4"
                                ForeColor="Black"
                                GridLines="Horizontal"
                                BackColor="White"
                                BorderColor="#CCCCCC"
                                BorderStyle="None"
                                BorderWidth="1px"
                                OnRowEditing="GridView1_RowEditing"
                                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                OnRowUpdating="GridView1_RowUpdating"
                                OnRowDeleting="GridView1_RowDeleting">
                                <Columns>

                                    <asp:TemplateField HeaderText="Product Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server"
                                                Height="100px"
                                                Width="100px"
                                                ImageUrl='<%# Eval("ProductImage") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="ProductName"
                                        HeaderText="Name"
                                        ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <%# Eval("ProductQuantity") %>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtQty" runat="server"
                                                Text='<%# Bind("ProductQuantity") %>' Width="60px"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="ProductSubtotal"
                                        HeaderText="Sub Total"
                                        ReadOnly="True" />

                                    <asp:CommandField ShowEditButton="True"
                                        ShowDeleteButton="True" />

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
                </table></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

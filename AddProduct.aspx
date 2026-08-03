<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplicationProject1.AddProduct" %>
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
</asp:Content>

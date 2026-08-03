<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="WebApplicationProject1.AccountPage" %>

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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#866528" Text="Order Summary"></asp:Label>
            </td>
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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="‣Customer Information"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="#866528" Text="Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#866528" Text="Email:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label18" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="#866528" Text="Phone:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label19" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="#866528" Text="Address:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label20" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="‣Order Information"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="#866528" Text="Order ID:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label21" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="#866528" Text="Order Date:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label22" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="‣Products"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#866528" ForeColor="#866528">
                                <Columns>
                                    <asp:ImageField HeaderText="Products">
                                    </asp:ImageField>
                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                    <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
                                    <asp:BoundField DataField="ProductQuantity" HeaderText="Quantity" />
                                    <asp:BoundField DataField="ProductSubTotal" HeaderText="Subtotal" />
                                </Columns>
                            </asp:GridView>--%>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

                                <Columns>

                                    <asp:ImageField DataImageUrlField="ProductImage"
                                        HeaderText="Image"
                                        ControlStyle-Width="80px"
                                        ControlStyle-Height="80px" />

                                    <asp:BoundField DataField="ProductName"
                                        HeaderText="Product" />

                                    <asp:BoundField DataField="ProductPrice"
                                        HeaderText="Price" />

                                    <asp:BoundField DataField="Quantity"
                                        HeaderText="Quantity" />

                                    <asp:BoundField DataField="Subtotal"
                                        HeaderText="Subtotal" />

                                    <asp:BoundField DataField="OrderDate"
                                        HeaderText="Order Date"
                                        DataFormatString="{0:dd-MM-yyyy}" />

                                </Columns>

                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="‣Payment Method"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Size="Small" ForeColor="#866528" Height="136px" TextAlign="Left" Width="300px">
                                <asp:ListItem>Cash on Delivery</asp:ListItem>
                                <asp:ListItem>UPI</asp:ListItem>
                                <asp:ListItem>Credit/Debit Card</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><span class="nav-label">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="‣Price Summary"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label13" runat="server" Font-Size="Small" ForeColor="#866528" Text="Subtotal:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label23" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label14" runat="server" Font-Size="Small" ForeColor="#866528" Text="Shipping:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label24" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label15" runat="server" Font-Size="Small" ForeColor="#866528" Text="Discount:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label25" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#866528" Text="Grand Total:"></asp:Label>
                                    </td>
                                    <td><span class="nav-label">
                                        <asp:Label ID="Label26" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><span class="nav-label">
                <asp:Button ID="Button1" runat="server" BackColor="#BB8D3F" Text="Proceed to Payment" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><span class="nav-label">
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#BB8D3F" BorderStyle="Outset" ForeColor="#BB8D3F" Text="Back to Cart" Width="100%" OnClick="Button3_Click" />
            </td>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

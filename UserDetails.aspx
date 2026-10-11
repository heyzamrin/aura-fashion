
<%@ Page Title="Manage Users" Language="C#"
    MasterPageFile="~/Site2.Master"
    AutoEventWireup="true"
    CodeBehind="UserDetailsAdmin.aspx.cs"
    Inherits="WebApplicationProject1.UserDetailsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .users-page {
            min-height: 75vh;
            padding: 40px 20px;
            background: #faf8f4;
            font-family: Arial, sans-serif;
            box-sizing: border-box;
        }

        .users-card {
            max-width: 1000px;
            margin: auto;
            padding: 30px;
            background: #fff;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,.08);
            overflow-x: auto;
            box-sizing: border-box;
        }

        .users-title {
            text-align: center;
            color: #866528;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        .users-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .users-grid th {
            background: #866528;
            color: #fff;
            padding: 14px;
            text-align: left;
            font-size: 14px;
        }

        .users-grid td {
            padding: 14px;
            border-bottom: 1px solid #eee;
            color: #444;
            font-size: 14px;
            vertical-align: middle;
        }

        .users-grid tr:hover td {
            background: #fcfaf6;
        }

        /* Block and Unblock button */
        .status-button {
            min-width: 105px;
            height: 40px;
            padding: 0 20px;
            background: #fff !important;
            color: #866528 !important;
            border: 1px solid #866528 !important;
            border-radius: 5px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            outline: none;
            transition: background-color .25s ease,
                        color .25s ease,
                        box-shadow .25s ease;
        }

        .status-button:hover {
            background: #866528 !important;
            color: #fff !important;
            box-shadow: 0 4px 10px rgba(134, 101, 40, .18);
        }

        .status-button:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(134, 101, 40, .12);
        }

        .back-link {
            display: inline-block;
            margin-top: 22px;
            color: #866528;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
        }

        .back-link:hover {
            color: #5f471d;
            text-decoration: underline;
        }

        .message-label {
            display: block;
            margin-top: 15px;
            color: #866528;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            .users-page {
                padding: 25px 12px;
            }

            .users-card {
                padding: 18px;
            }

            .users-title {
                font-size: 24px;
            }

            .users-grid th,
            .users-grid td {
                padding: 10px;
                font-size: 12px;
            }

            .status-button {
                min-width: 85px;
                height: 36px;
                padding: 0 12px;
                font-size: 12px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="users-page">
        <div class="users-card">

            <div class="users-title">Manage Users</div>

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False"
                DataKeyNames="RegistrationId"
                CssClass="users-grid"
                GridLines="None"
                OnRowCommand="GridView1_RowCommand"
                EmptyDataText="No users found.">

                <Columns>

                    <asp:BoundField
                        DataField="RegistrationId"
                        HeaderText="User ID" />

                    <asp:BoundField
                        DataField="userName"
                        HeaderText="Username" />

                    <asp:BoundField
                        DataField="userEmail"
                        HeaderText="Email" />

                    <asp:BoundField
                        DataField="LoginStatus"
                        HeaderText="Status" />

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>

                            <asp:Button
                                ID="btnBlockUnblock"
                                runat="server"
                                Text='<%# Eval("LoginStatus").ToString() == "Active" ? "Block" : "Unblock" %>'
                                CommandName="ChangeStatus"
                                CommandArgument='<%# Container.DataItemIndex %>'
                                CssClass="status-button"
                                CausesValidation="False" />

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

            <asp:Label ID="LabelMessage"
                runat="server"
                CssClass="message-label">
            </asp:Label>

            <asp:HyperLink ID="HyperLinkBack"
                runat="server"
                NavigateUrl="~/AdminHome.aspx"
                CssClass="back-link"
                Text="← Back to Admin Home">
            </asp:HyperLink>

        </div>
    </div>

</asp:Content>

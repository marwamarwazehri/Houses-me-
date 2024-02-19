<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="Houses_me_.admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="height: 8px">
        <br />
        <img alt="super" src="css-images/super-user.png" style="width: 180px; height: 98px; margin-top: 2px" /></p>
    <div style="height: 337px">
        <table style="width: 100%; height: 329px;">
            <tr>
                <td style="width: 185px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 185px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td>
                    <div class="text-center" style="height: 255px; background-color:#318ce7; box-shadow: -15px -15px 100px rgba(0, 0, 0, 0.1)">
                        <br />
&nbsp;<strong><span style="color: #000000; font-size: large">SuperUser</span><span style="color: #3333FF; font-size: large"><br />
                        <br />
                        <asp:TextBox ID="email" runat="server" ForeColor="Black"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="password" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" Width="105px" ForeColor="Black" />
                        <br />
                        <br />
                        <br />
                        </span>
                        </strong>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 185px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

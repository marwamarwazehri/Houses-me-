<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="rigester.aspx.cs" Inherits="Houses_me_.admin.rigester" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 975px;">
        <tr>
            <td style="height: 239px"></td>
            <td style="height: 239px; width: 973px;">
                <div class="text-center" style="height: 199px; background-color:#318ce7; width: 804px; margin-left: 130px; margin-top: 0px;">
                    <img alt="adduser" src="css-images/user.png" style="width: 211px; height: 116px" />&nbsp;&nbsp; <strong><span style="font-size: large">Manage User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></div>
            </td>
            <td style="height: 239px"></td>
        </tr>
        <tr>
            <td style="height: 34px"></td>
            <td style="height: 34px; width: 973px;">
                <div class="text-center" style="height: 642px; font-size: large">
                    <strong>&nbsp;&nbsp; 
                    <br />
                    Add User<br />
                    <br />
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEm" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Password&nbsp;
                    <asp:TextBox ID="txtPs" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                    Super&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSuper" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Double" OnClick="Button1_Click" Text="Add" Width="125px" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="763px" Height="134px">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                                    <asp:BoundField DataField="super" HeaderText="IsSuperUser" SortExpression="super" />
                                </Columns>
                            </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <div class="text-right">
                        <div class="text-center">
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [registration] WHERE [Id] = @Id" InsertCommand="INSERT INTO [registration] ([name], [email], [password], [super]) VALUES (@name, @email, @password, @super)" SelectCommand="SELECT * FROM [registration] ORDER BY [name]" UpdateCommand="UPDATE [registration] SET [name] = @name, [email] = @email, [password] = @password, [super] = @super WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="super" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="super" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    </strong>
                </div>
            </td>
            <td style="height: 34px"></td>
        </tr>
        <tr>
            <td style="height: 241px"></td>
            <td style="height: 241px; width: 973px;"></td>
            <td style="height: 241px"></td>
        </tr>
    </table>
</asp:Content>

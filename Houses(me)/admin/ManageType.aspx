<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="ManageType.aspx.cs" Inherits="Houses_me_.admin.ManageType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;
    </p>
    <div style="height: 450px; margin-left:70px; width: 781px;">
        <br />
&nbsp;
        <div style="height: 193px; background-color:#318ce7">
            <table style="width:100%;">
                <tr>
                    <td style="width: 182px">&nbsp;</td>
                    <td style="width: 627px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 182px; height: 136px">
                        <img alt="addtype" src="css-images/type-2.png" style="width: 118px; height: 78px" /><br />
                        <br />
                        <strong>Add a Type</strong></td>
                    <td style="height: 136px; width: 627px">&nbsp;&nbsp;&nbsp;&nbsp; Type&nbsp; &nbsp;<asp:TextBox ID="Type" runat="server" Width="156px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Type" ErrorMessage="Plyz Enter a Valid Type" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" Text="Add Type" Width="91px" OnClick="Button1_Click" />
                    </td>
                    <td style="height: 136px"></td>
                </tr>
                <tr>
                    <td style="width: 182px">&nbsp;</td>
                    <td style="width: 627px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div style="height: 155px">
                <br />
                <br />
                <div class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="386px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [type] WHERE [Id] = @Id" InsertCommand="INSERT INTO [type] ([type]) VALUES (@type)" SelectCommand="SELECT * FROM [type] ORDER BY [type]" UpdateCommand="UPDATE [type] SET [type] = @type WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

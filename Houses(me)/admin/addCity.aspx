<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="addCity.aspx.cs" Inherits="Houses_me_.admin.addCity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 467px">
        <table style="width: 100%; height: 457px;">
            <tr>
                <td style="height: 247px; width: 55px"></td>
                <td style="height: 247px; width: 962px">
        <div style="height: 157px; width:483px; margin-left:250px; margin-top:50px; background-color:#318ce7" class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <br />
            <br />
&nbsp;Add a&nbsp;&nbsp; City:&nbsp;
            <asp:TextBox ID="txtAddCity" runat="server" Width="153px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddCity" ErrorMessage="Please enter a valid location" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Outset" Font-Bold="True" OnClick="Button1_Click" Text="Add City" Width="86px" />
            <br />
            <br />
            </strong>
        </div>
                </td>
                <td style="height: 247px"></td>
            </tr>
            <tr>
                <td style="height: 218px; width: 55px"></td>
                <td style="height: 218px; width: 962px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="188px" Width="615px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [city] WHERE [Id] = @Id" InsertCommand="INSERT INTO [city] ([city]) VALUES (@city)" SelectCommand="SELECT * FROM [city]" UpdateCommand="UPDATE [city] SET [city] = @city WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="city" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="height: 218px"></td>
            </tr>
            <tr>
                <td style="width: 55px">&nbsp;</td>
                <td style="width: 962px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

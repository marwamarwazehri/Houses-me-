<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeFile="ManageLocation.aspx.cs" Inherits="Houses_me_.admin.ManageLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 438px">
        <br />
        <strong><em>
        <div style="width: 924px; height: 143px; margin-top: 0px;background-color:#318ce7">
            <strong><em>
            <div style="width: 933px; height: 151px; margin-top: 0px;background-color:#318ce7">
                <table style="width: 100%; height: 150px;">
                    <tr>
                        <td style="width: 465px">&nbsp;&nbsp;</td>
                        <td style="width: 467px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" style="width: 465px">
                            <img alt="location" src="css-images/location.png" style="width: 94px; height: 61px" /><br />
                            </strong>
                            </strong>House Location</td>
                        <strong>
                        <td class="text-center" style="width: 467px">&nbsp; <strong>Location: </strong>&nbsp;
                            <asp:TextBox ID="location" runat="server" Width="123px"></asp:TextBox>
                            <strong><em>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="location" ErrorMessage="Please enter a Valid  Location" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </em>
                            </strong>
                            <br />
                            <br />
        <strong><em>
                            <asp:Button ID="Button1" runat="server" BorderStyle="Double" ForeColor="Black" OnClick="Button1_Click" Text="Add Location" Width="118px" />
        </em>
                            </strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 465px">&nbsp;</td>
                        <td style="width: 467px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
        </div>
            </strong>
        </em>
        <strong>
        <br />
        <br />
        <br />
        <br />
            <span style="font-size: large; color: #000000">
            <br />
&nbsp;&nbsp;&nbsp;</span></div>
        </strong>
        </em>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="444px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [location] WHERE [Id] = @Id" InsertCommand="INSERT INTO [location] ([location]) VALUES (@location)" SelectCommand="SELECT * FROM [location] ORDER BY [location]" UpdateCommand="UPDATE [location] SET [location] = @location WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="location" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; <strong><span style="font-size: large; color: #3333FF"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </em></span></strong>
    </div>
</strong></strong>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="AddHouse.aspx.cs" Inherits="Houses_me_.admin.AddHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 563px; background-color:white">
        <div style="height:600px; margin-top:80px; margin-left:89px; width:860px;  box-shadow: -15px -15px 100px rgba(0, 0, 0, 0.1) ,
            15px 15px 100px rgba(0, 0, 0, 0.1); ">
            <table style="width: 100%; height: 746px;">
                <tr>
                    <td style="width: 404px">&nbsp;</td>
                    <td class="modal-sm" style="width: 524px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 404px; height: 368px">
                        <div style="height: 614px; background-color:#318ce7; width: 288px; margin-left:30px">
                            <img alt="house" src="css-images/addhouse.png" style="width: 192px; height: 139px; margin-top: 83px" /><br />
                            <br />
                            <span style="color: #FFFFFF; font-size: x-large"><strong>Add a Property</strong></span></div>
                    </td>
                    <td style="height: 368px; width: 524px;">
                        <div class="text-left" style="height: 726px; width: 535px">
                            <br />
&nbsp; <strong>Size of lot</strong>&nbsp;&nbsp;
                            <asp:TextBox ID="txtlot" runat="server" Height="24px" Width="180px"></asp:TextBox>
                            &nbsp;SqFt<br />
                            <br />
&nbsp;<strong> Location</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="txtlocation" runat="server" Height="62px" Width="182px" DataSourceID="SqlDataSource1" DataTextField="location" DataValueField="location">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [location] FROM [location] ORDER BY [location]"></asp:SqlDataSource>
                            <strong>
                            &nbsp; City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="txtcity" runat="server" DataSourceID="SqlDataSource3" DataTextField="city" DataValueField="city" Height="22px" Width="172px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [city] FROM [city] ORDER BY [city]"></asp:SqlDataSource>
                            <br />
                            <br />
&nbsp;&nbsp; bedrooms </strong>&nbsp;
                            <asp:TextBox ID="txtbed" runat="server" Height="24px" Width="193px"></asp:TextBox>
                            <br />
                            <br />
&nbsp; <strong>baths&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtbath" runat="server" Height="26px" Width="191px"></asp:TextBox>
                            <br />
                            <br />
&nbsp;&nbsp; <strong>Garage </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtGarage" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
&nbsp;<strong> </strong><span style="font-size: small"><strong>type </strong></span><strong><span style="font-size: large">&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="txtType" runat="server" Height="27px" Width="192px" DataSourceID="SqlDataSource2" DataTextField="type" DataValueField="type">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [type] FROM [type] ORDER BY [type]"></asp:SqlDataSource>
                            <br />
                            <br />
&nbsp;<strong> category&nbsp;&nbsp; </strong>&nbsp;
                            <asp:DropDownList ID="txtCategory" runat="server" Height="43px" Width="197px">
                                <asp:ListItem>For Rent</asp:ListItem>
                                <asp:ListItem>For Sale</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
&nbsp; <strong>price </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtprice" runat="server" Height="26px" Width="190px"></asp:TextBox>
                            &nbsp;<strong>$</strong><br />
                            <br />
&nbsp; <strong>features </strong>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtfeatures" runat="server" Height="77px" Width="193px"></asp:TextBox>
                            <br />
                            <br />
                            <strong>&nbsp;<br />
                            &nbsp;Image </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
&nbsp;<div class="text-right">
                                <asp:FileUpload ID="imageUpload" runat="server" Height="21px" />
                            </div>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BorderColor="#3333FF" BorderStyle="Double" Font-Bold="True" ForeColor="Black" Text="Insert" Width="150px" OnClick="Button1_Click" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
&nbsp;
                            <br />
                        </div>
                    </td>
                    <td style="height: 368px"></td>
                </tr>
                <tr>
                    <td style="width: 404px">&nbsp;</td>
                    <td class="modal-sm" style="width: 524px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

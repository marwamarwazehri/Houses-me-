<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminSite.Master" AutoEventWireup="true" CodeFile="ControlHouses.aspx.cs" Inherits="Houses_me_.admin.ControlHouses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center" style="height: 353px">
        &nbsp;<br />
        <strong><span style="font-size: large; color: #3333FF">Control House<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1127px" Height="16px" style="margin-left: 4px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="lot" HeaderText="Size of Lot" SortExpression="lot" />
                <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                <asp:BoundField DataField="NBbeds" HeaderText="Nb of bedrooms" SortExpression="NBbeds" />
                <asp:BoundField DataField="NBbaths" HeaderText="Nb of baths" SortExpression="NBbaths" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="features" HeaderText="Features" SortExpression="features" />
                <asp:BoundField DataField="image" HeaderText="Image name" SortExpression="image" />

                 <asp:TemplateField  HeaderText="Image"> 
                <ItemTemplate>
                    <asp:Image runat="server"    Height="80" ImageUrl='<%# "images/"+Eval("image") %>' /> 
                </ItemTemplate>

                </asp:TemplateField>



            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [houseFeatures]" DeleteCommand="DELETE FROM [houseFeatures] WHERE [Id] = @Id" InsertCommand="INSERT INTO [houseFeatures] ([lot], [location], [NBbeds], [NBbaths], [price], [features], [image]) VALUES (@lot, @location, @NBbeds, @NBbaths, @price, @features, @image)" UpdateCommand="UPDATE [houseFeatures] SET [lot] = @lot, [location] = @location, [NBbeds] = @NBbeds, [NBbaths] = @NBbaths, [price] = @price, [features] = @features, [image] = @image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="lot" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="NBbeds" Type="String" />
                <asp:Parameter Name="NBbaths" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="features" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="lot" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="NBbeds" Type="String" />
                <asp:Parameter Name="NBbaths" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="features" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </span>
        <div style="width:282px; height: 80px;  background-color:#318ce7;margin-left:400px; margin-top:50px">
        <strong><span style="font-size: large; color: #000000">&nbsp;Add Location&nbsp;</span><span style="font-size: large; color: #3333FF">
           <a href="ManageLocation.aspx"><img alt="addlocation" src="css-images/addLocation.png" style="width: 96px; height: 77px" /></a><br />
&nbsp;</span></strong><span style="font-size: large; color: #3333FF"></div>
        <br />
        <strong>
        <div style="width:282px; height: 80px;  background-color:#318ce7;margin-left:400px; margin-top:5px">
            <span style="font-size: large; color: #000000">&nbsp;Add Type&nbsp;</span>
           <a href="ManageType.aspx"><img alt="type" src="css-images/type-1.png" style="width: 109px; height: 75px" /></a><br />
&nbsp;</div>
        </strong>
        <br />
        <br />
        </span></strong>
    </div>
</asp:Content>

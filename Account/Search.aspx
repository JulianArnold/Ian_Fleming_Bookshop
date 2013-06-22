<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Search Records "></asp:Label>
<br />
<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" Text="Search" />
<br />
<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/IanFlemingBookShop.mdb" 
    DeleteCommand="DELETE FROM [Customers] WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL))" 
    InsertCommand="INSERT INTO [Customers] ([CustomerID], [Firstname], [Surname], [City], [Email], [Telephone]) VALUES (?, ?, ?, ?, ?, ?)" 
    SelectCommand="SELECT * FROM [Customers] WHERE ([Surname] = ?)" 
    UpdateCommand="UPDATE [Customers] SET [Firstname] = ?, [Surname] = ?, [City] = ?, [Email] = ?, [Telephone] = ? WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="CustomerID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="Firstname" Type="String" />
        <asp:Parameter Name="Surname" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Telephone" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="txtSearch" Name="Surname" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Firstname" Type="String" />
        <asp:Parameter Name="Surname" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Telephone" Type="String" />
        <asp:Parameter Name="CustomerID" Type="String" />
    </UpdateParameters>
</asp:AccessDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="CustomerID" 
    DataSourceID="AccessDataSource1">
    <Columns>
        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
            SortExpression="CustomerID" />
        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
            SortExpression="Firstname" />
        <asp:BoundField DataField="Surname" HeaderText="Surname" 
            SortExpression="Surname" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
            SortExpression="Telephone" />
    </Columns>
</asp:GridView>
</asp:Content>


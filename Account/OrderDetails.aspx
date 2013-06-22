<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT Orders.OrderID, Customers.CompanyName, Orders.OrderDate 
FROM 
Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID

">
    </asp:AccessDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderID" 
    DataSourceID="AccessDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
            SortExpression="OrderID" />
        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
            SortExpression="CompanyName" />
        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
            SortExpression="OrderDate" />
    </Columns>
</asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/Northwind.mdb" 
        SelectCommand="SELECT * FROM [Order Details] WHERE ([OrderID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OrderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="OrderID,ProductID" DataSourceID="AccessDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" 
                SortExpression="Discount" />
        </Columns>
    </asp:GridView>
</asp:Content>


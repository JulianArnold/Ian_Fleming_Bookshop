<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" Text="Search records"></asp:Label>
        <br />
        <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="txtButton" runat="server" Text="Search" />
    
 <br />
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/IanFlemingBookShop.mdb" 
            SelectCommand="SELECT * FROM [Stock] WHERE ([StockID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtsearch" Name="StockID" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
    <asp:Label ID="Label2" runat="server" Text="Search Results"></asp:Label>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="StockID" 
            DataSourceID="AccessDataSource3">
            <Columns>
                <asp:BoundField DataField="StockID" HeaderText="StockID" ReadOnly="True" 
                    SortExpression="StockID" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                    SortExpression="Stock_level" />
            </Columns>
        </asp:GridView>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/IanFlemingBookShop.mdb" 
            SelectCommand="SELECT * FROM [Stock]">
            
        </asp:AccessDataSource>
        <br />
    <asp:Label ID="Label3" runat="server" Text="Stock List"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="StockID" 
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="StockID" HeaderText="StockID" ReadOnly="True" 
                    SortExpression="StockID" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                    SortExpression="Stock_level" />
            </Columns>
        </asp:GridView>

</asp:Content>


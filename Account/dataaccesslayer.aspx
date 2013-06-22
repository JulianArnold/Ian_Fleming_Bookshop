<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="dataaccesslayer.aspx.vb" Inherits="dataaccesslayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
    DataKeyNames="ProductID" DataSourceID="ObjectDataSource1">
    <EditItemTemplate>
        ProductID:
        <asp:Label ID="ProductIDLabel1" runat="server" 
            Text='<%# Eval("ProductID") %>' />
        <br />
        ProductName:
        <asp:TextBox ID="ProductNameTextBox" runat="server" 
            Text='<%# Bind("ProductName") %>' />
        <br />
        SupplierID:
        <asp:TextBox ID="SupplierIDTextBox" runat="server" 
            Text='<%# Bind("SupplierID") %>' />
        <br />
        CategoryID:
        <asp:TextBox ID="CategoryIDTextBox" runat="server" 
            Text='<%# Bind("CategoryID") %>' />
        <br />
        QuantityPerUnit:
        <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
            Text='<%# Bind("QuantityPerUnit") %>' />
        <br />
        UnitPrice:
        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
            Text='<%# Bind("UnitPrice") %>' />
        <br />
        UnitsInStock:
        <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
            Text='<%# Bind("UnitsInStock") %>' />
        <br />
        UnitsOnOrder:
        <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
            Text='<%# Bind("UnitsOnOrder") %>' />
        <br />
        ReorderLevel:
        <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
            Text='<%# Bind("ReorderLevel") %>' />
        <br />
        Discontinued:
        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
            Checked='<%# Bind("Discontinued") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ProductName:
        <asp:TextBox ID="ProductNameTextBox" runat="server" 
            Text='<%# Bind("ProductName") %>' />
        <br />
        SupplierID:
        <asp:TextBox ID="SupplierIDTextBox" runat="server" 
            Text='<%# Bind("SupplierID") %>' />
        <br />
        CategoryID:
        <asp:TextBox ID="CategoryIDTextBox" runat="server" 
            Text='<%# Bind("CategoryID") %>' />
        <br />
        QuantityPerUnit:
        <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
            Text='<%# Bind("QuantityPerUnit") %>' />
        <br />
        UnitPrice:
        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
            Text='<%# Bind("UnitPrice") %>' />
        <br />
        UnitsInStock:
        <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
            Text='<%# Bind("UnitsInStock") %>' />
        <br />
        UnitsOnOrder:
        <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
            Text='<%# Bind("UnitsOnOrder") %>' />
        <br />
        ReorderLevel:
        <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
            Text='<%# Bind("ReorderLevel") %>' />
        <br />
        Discontinued:
        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
            Checked='<%# Bind("Discontinued") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ProductID:
        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
        <br />
        ProductName:
        <asp:Label ID="ProductNameLabel" runat="server" 
            Text='<%# Bind("ProductName") %>' />
        <br />
        SupplierID:
        <asp:Label ID="SupplierIDLabel" runat="server" 
            Text='<%# Bind("SupplierID") %>' />
        <br />
        CategoryID:
        <asp:Label ID="CategoryIDLabel" runat="server" 
            Text='<%# Bind("CategoryID") %>' />
        <br />
        QuantityPerUnit:
        <asp:Label ID="QuantityPerUnitLabel" runat="server" 
            Text='<%# Bind("QuantityPerUnit") %>' />
        <br />
        UnitPrice:
        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
        <br />
        UnitsInStock:
        <asp:Label ID="UnitsInStockLabel" runat="server" 
            Text='<%# Bind("UnitsInStock") %>' />
        <br />
        UnitsOnOrder:
        <asp:Label ID="UnitsOnOrderLabel" runat="server" 
            Text='<%# Bind("UnitsOnOrder") %>' />
        <br />
        ReorderLevel:
        <asp:Label ID="ReorderLevelLabel" runat="server" 
            Text='<%# Bind("ReorderLevel") %>' />
        <br />
        Discontinued:
        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
            Checked='<%# Bind("Discontinued") %>' Enabled="false" />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DeleteMethod="Delete" InsertMethod="Insert" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetProducts" 
    TypeName="DataSet1TableAdapters.ProductsTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_ProductID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SupplierID" Type="Int32" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="QuantityPerUnit" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="UnitsInStock" Type="Int16" />
        <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
        <asp:Parameter Name="ReorderLevel" Type="Int16" />
        <asp:Parameter Name="Discontinued" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SupplierID" Type="Int32" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="QuantityPerUnit" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="UnitsInStock" Type="Int16" />
        <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
        <asp:Parameter Name="ReorderLevel" Type="Int16" />
        <asp:Parameter Name="Discontinued" Type="Boolean" />
        <asp:Parameter Name="Original_ProductID" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
</asp:Content>


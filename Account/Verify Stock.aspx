<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Verify Stock.aspx.vb" Inherits="Verify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/IanFlemingBookShop.mdb"
        DeleteCommand="DELETE FROM [Stock] WHERE [StockID] = ?"
        InsertCommand="INSERT INTO [Stock] ([StockID], [Description], [Price], [Stock_level], [SupplierID]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Stock]"
        UpdateCommand="UPDATE [Stock] SET [Description] = ?, [Price] = ?, [Stock_level] = ?, [SupplierID] = ? WHERE [StockID] = ?">

        <DeleteParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="String" />
            <asp:Parameter Name="SupplierID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StockID" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="StockID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="StockID" DataSourceID="AccessDataSource1" Width="215px">
        <EditItemTemplate>
            StockID:
            <asp:Label ID="StockIDLabel1" runat="server" Text='<%# Eval("StockID") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock_level:
            <asp:TextBox ID="Stock_levelTextBox" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            StockID:
            <asp:TextBox ID="StockIDTextBox" runat="server" Text='<%# Bind("StockID") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="StockIDTextBox" ErrorMessage="Please enter a new StockID"></asp:RequiredFieldValidator>
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DescriptionTextBox" 
                ErrorMessage="Please enter a description"></asp:RequiredFieldValidator>
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="PriceTextBox" ErrorMessage="Don't forget the price"></asp:RequiredFieldValidator>
            <br />
            Stock_level:
            <asp:TextBox ID="Stock_levelTextBox" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="Stock_levelTextBox" ErrorMessage="Please add stock level"></asp:RequiredFieldValidator>
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="SupplierIDTextBox" ErrorMessage="Please add a SupplierID"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            StockID:
            <asp:Label ID="StockIDLabel" runat="server" Text='<%# Eval("StockID") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock_level:
            <asp:Label ID="Stock_levelLabel" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <br />
            SupplierID:
            <asp:Label ID="SupplierIDLabel" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>


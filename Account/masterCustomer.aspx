<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="masterCustomer.aspx.vb" Inherits="masterCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/IanFlemingBookShop.mdb"
       DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ?"
        InsertCommand="INSERT INTO [Customers] ([CustomerID], [Firstname], [Surname], [City], [Email], [Telephone]) VALUES (?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM Customers"
        
        
        UpdateCommand="UPDATE [Customers] SET [Firstname] = ?, [Surname] = ?, [City] = ?, [Email] = ?, [Telephone] = ? WHERE [CustomerID] = ?">

        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="Int32" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="CustomerID" DataSourceID="AccessDataSource1" Width="215px">
        <EditItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel1" runat="server" 
                Text='<%# Eval("CustomerID") %>' />
            <br />
            Firstname:
            <asp:TextBox ID="FirstnameTextBox" runat="server" 
                Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" 
                Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" 
                Text='<%# Bind("Email") %>' />
            <br />
            Telephone:
            <asp:TextBox ID="TelephoneTextBox" runat="server" 
                Text='<%# Bind("Telephone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerID:
            <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                Text='<%# Bind("CustomerID") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="CustomerIDTextBox" ErrorMessage="Enter CustomerID"></asp:RequiredFieldValidator>
            <br />
            Firstname:
            <asp:TextBox ID="FirstnameTextBox" runat="server" 
                Text='<%# Bind("Firstname") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="FirstnameTextBox" ErrorMessage="Enter Firstname"></asp:RequiredFieldValidator>
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="SurnameTextBox" ErrorMessage="Enter Surname"></asp:RequiredFieldValidator>
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" 
                Text='<%# Bind("City") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="CityTextBox" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" 
                Text='<%# Bind("Email") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="EmailTextBox" ErrorMessage="Enter email"></asp:RequiredFieldValidator>
            <br />
            Telephone:
            <asp:TextBox ID="TelephoneTextBox" runat="server" 
                Text='<%# Bind("Telephone") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TelephoneTextBox" ErrorMessage="Enter phone number"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel" runat="server" 
                Text='<%# Eval("CustomerID") %>' />
            <br />
            Firstname:
            <asp:Label ID="FirstnameLabel" runat="server" 
                Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" 
                Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" 
                Text='<%# Bind("Email") %>' />
            <br />
            Telephone:
            <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' />
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


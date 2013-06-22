<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Customers.aspx.vb" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Label ID="Label2" runat="server" Text="Search Customers "></asp:Label>
    <br />
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />

 <asp:Label ID="Label1" runat="server" Text="Customer records"></asp:Label>
        <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/IanFlemingBookShop.mdb" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([Surname] = ?)">
        
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="Surname" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" 
        DataKeyNames="CustomerID" DataSourceID="AccessDataSource2" 
        AllowPaging="True"   >
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
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
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
            <br />
            Firstname:
            <asp:TextBox ID="FirstnameTextBox" runat="server" 
                Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Telephone:
            <asp:TextBox ID="TelephoneTextBox" runat="server" 
                Text='<%# Bind("Telephone") %>' />
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
            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
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
    <br /><br /><br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/IanFlemingBookShop.mdb" 
            SelectCommand="SELECT * FROM [Customers]">
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="CustomerID" 
            DataSourceID="AccessDataSource1" Visible="false">
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
        <br />
</asp:Content>


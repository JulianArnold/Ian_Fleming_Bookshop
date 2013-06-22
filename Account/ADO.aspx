<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ADO.aspx.vb" Inherits="ADO" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">

  sub Page_Load(sender as Object, e as EventArgs)
    'Create a connection string
    Dim connString as String
        connString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=|DataDirectory|Northwind.mdb;"
    
    'Open a connection
    Dim objConnection as OleDbConnection
    objConnection = New OleDbConnection(connString)
    objConnection.Open()
    
    'Specify the SQL string
    Dim strSQL as String = "SELECT SupplierID, CompanyName, ContactName, Address, City FROM Suppliers"
    
    'Create a command object
    Dim objCommand as OleDbCommand
    objCommand = New OleDbCommand(strSQL, objConnection)

    'Get a datareader
    Dim objDataReader as OleDbDataReader
    objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection)

    'Do the DataBinding
    dgResults.DataSource = objDataReader
    dgResults.DataBind()    
    
    'Close the datareader/db connection
    objDataReader.Close()
    End Sub
    
   
  </script> 

  <asp:DataGrid id="dgResults" runat="server" />

</asp:Content>

﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="exportxml.aspx.vb" Inherits="exportxml" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

  Sub Page_Load(Sender As Object, E As EventArgs)

    Dim strConnection As String
    Dim strSQL        As String
    Dim objDataSet    As New DataSet()
    Dim objConnection As OleDbConnection
    Dim objAdapter    As OleDbDataAdapter

    ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|Northwind.mdb;"
    strSQL = "SELECT FirstName, LastName, Title, Region FROM Employees;"

    ' open the connection and set the command
    objConnection = New OledbConnection(strConnection)
    objAdapter = New OledbDataAdapter(strSQL, objConnection)

    ' fill the dataset with the data
    objAdapter.Fill(objDataSet, "Employees")
    ' create an XML file called Employees and fill this with our data
    objDataSet.WriteXml(Server.MapPath("Employees.xml"))
    ' add a link to our web page to the XML file created
   

  End Sub

</script>

    <a href="Employees.xml">View XML file</a> 

</asp:Content>


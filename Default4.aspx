﻿

<%@ Import Namespace="System.Data" %>

<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

    Sub Page_Load(ByVal Sender As Object, ByVal E As EventArgs)

        Dim strConnection As String
        Dim strSQL As String
        Dim objDataSet As New DataSet()
        Dim objConnection As OleDbConnection
        Dim objAdapter As OleDbDataAdapter

        ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|IanFlemingBookShop.mdb;"
        strSQL = "SELECT FirstName FROM Customers;"

        ' open the connection and set the command
        objConnection = New OledbConnection(strConnection)
        objAdapter = New OledbDataAdapter(strSQL, objConnection)

        ' fill the dataset with the data
        objAdapter.Fill(objDataSet, "Customers")
        ' create an XML file called Employees and fill this with our data
        objDataSet.WriteXml(Server.MapPath("Customers.xml"))
        ' add a link to our web page to the XML file created
        Response.Write("<a href='Customers.xml'>View XML file</a>")

    End Sub

</script>
Imports System.Data.SqlClient
Imports System.Collections.Generic
Imports System.Data.OleDb


Partial Class VB
    Inherits System.Web.UI.Page

    <System.Web.Script.Services.ScriptMethod(), _
    System.Web.Services.WebMethod()> _
    Public Shared Function SearchCustomers(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim conn As SqlConnection = New SqlConnection

        conn.ConnectionString = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Dim cmd As SqlCommand = New SqlCommand

        cmd.CommandText = "Select * from Customer where Surname like @SearchText + '%'"
        cmd.Parameters.AddWithValue("@SearchText", prefixText)
        cmd.Connection = conn
        conn.Open()

        Dim customers As List(Of String) = New List(Of String)
        Dim sdr As SqlDataReader = cmd.ExecuteReader
        While sdr.Read
            customers.Add(sdr("Surname").ToString + ", " + sdr("Firstname"))
        End While
        conn.Close()


        Return customers
    End Function


End Class

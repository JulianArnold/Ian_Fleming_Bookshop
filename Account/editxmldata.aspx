<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="editxmldata.aspx.vb" Inherits="editxmldata" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<!--%@ Page Language="VB" %-->
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
   private i, j as integer
   private strOutput as string = ""
   public xmldoc as new XMLDataDocument()
   
   sub Page_Load(Sender as Object, e as EventArgs)
      if not Page.IsPostBack then
         GetData()
         BindControl()
      end if
   end sub
   
   sub UpdateBtn_Click(Sender as Object, e as EventArgs)
        Dim StockID As TextBox
        Dim Description As TextBox
        Dim Price As TextBox
        Dim Stock_Level As TextBox
        Dim SupplierID As TextBox
      
      GetData()
      'update data
      For i = 0 To DataGrid1.Items.Count-1
            StockID = DataGrid1.Items(i).FindControl("StockID")
            Description = DataGrid1.Items(i).FindControl("Description")
            Price = DataGrid1.Items(i).FindControl("Price")
            Stock_Level = DataGrid1.Items(i).FindControl("Stock_Level")
            SupplierID = DataGrid1.Items(i).FindControl("SupplierID")
      
            xmldoc.DataSet.Tables(0).Rows(i)("StockID") = StockID.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Description") = Description.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Price") = Price.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Stock_Level") = Stock_Level.Text
            xmldoc.DataSet.Tables(0).Rows(i)("SupplierID") = SupplierID.Text
      Next
      
      try
            xmldoc.Save(Server.MapPath("Stock.xml"))
      catch
         output.Text = "Error updating data"
      end try
      
      BindControl()
   end sub
   
   sub GetData()
      try
            xmldoc.DataSet.ReadXml(Server.MapPath("Stock.xml"))
      catch ex as Exception
         output.Text = "Error accessing XML file"
      end try
   end sub
   
   sub BindControl()
      DataGrid1.DataSource = xmldoc.DataSet
      DataGrid1.DataMember = xmldoc.DataSet.Tables(0).TableName
      DataGrid1.DataBind()
   end sub
</script>

<html><body>
   <asp:Label id="output" runat="server" />
   <!--this is where the form opening tag was-->
   <asp:DataGrid id="DataGrid1" runat="server" 
      BorderColor="black" 
      GridLines="Vertical" 
      HeaderStyle-BackColor="#cccc99"
      ItemStyle-BackColor="#ffffff"
      AlternatingItemStyle-Backcolor="#cccccc" 
      AutogenerateColumns="false" >
      <Columns>
         <asp:TemplateColumn HeaderText="StockID">
            <ItemTemplate>
               <asp:TextBox id="StockID" runat="server" 
                  Text='<%# Container.DataItem("StockID") %>' />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Description">
            <ItemTemplate>
               <asp:TextBox id="Description" runat="server" 
                  Text='<%# Container.DataItem("Description") %>' 
                  width="200px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Price">
            <ItemTemplate>
               <asp:TextBox id="Price" runat="server" 
                  Text='<%# Container.DataItem("Price") %>'
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Stock_level">
            <ItemTemplate>
               <asp:TextBox id="Stock_level" runat="server" 
                  Text='<%# Container.DataItem("Stock_level") %>' 
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn><asp:TemplateColumn HeaderText="SupplierID">
            <ItemTemplate>
               <asp:TextBox id="SupplierID" runat="server" 
                  Text='<%# Container.DataItem("SupplierID") %>' 
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>


      </Columns>     
   </asp:DataGrid>
   
   <center>
   <asp:Button id="update" runat="server"
      OnClick="UpdateBtn_Click"
      text="Update!" />
   </center>
  <!--this is where the form closing tag was-->
</body>
</html>



</asp:Content>


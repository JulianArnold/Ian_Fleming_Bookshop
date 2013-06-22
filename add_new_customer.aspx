<%@ Page Language="VB" AutoEventWireup="false" CodeFile="add_new_customer.aspx.vb" Inherits="add_new_customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDetails" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Please enter a number between 1 - 10"></asp:RangeValidator>
    
    </div>
    </form>
</body>
</html>

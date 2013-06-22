<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">
    </asp:ScriptManager>
    <asp:TextBox ID="txtContactsSearch" runat="server">
    </asp:TextBox>
    <asp:AutoCompleteExtender ServiceMethod="SearchCustomers" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="txtContactsSearch"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false" >
    </asp:AutoCompleteExtender>


</asp:Content>


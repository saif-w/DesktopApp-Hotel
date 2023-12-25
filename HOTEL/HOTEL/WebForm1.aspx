<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HOTEL.WebForm1" %>

<%@ Register Src="~/admin_UC/user.ascx" TagPrefix="uc1" TagName="user" %>







<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:user runat="server" ID="user" />
      
        <br />
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
      
    </form>
</body>
</html>

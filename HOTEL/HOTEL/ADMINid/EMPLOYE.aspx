<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINid/ADMIN.Master" AutoEventWireup="true" CodeBehind="EMPLOYE.aspx.cs" Inherits="HOTEL.ADMINid.EMPLOYE" %>

<%@ Register Src="~/admin_UC/employe.ascx" TagPrefix="uc1" TagName="employe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:employe runat="server" ID="employe" />
</asp:Content>

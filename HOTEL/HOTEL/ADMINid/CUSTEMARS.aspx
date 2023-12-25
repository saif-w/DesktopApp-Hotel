<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINid/ADMIN.Master" AutoEventWireup="true" CodeBehind="CUSTEMARS.aspx.cs" Inherits="HOTEL.ADMINid.CUSTEMARS" %>

<%@ Register Src="~/admin_UC/custamers.ascx" TagPrefix="uc1" TagName="custamers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:custamers runat="server" ID="custamers" />
</asp:Content>

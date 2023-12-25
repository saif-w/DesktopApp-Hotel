<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINid/ADMIN.Master" AutoEventWireup="true" CodeBehind="JOP.aspx.cs" Inherits="HOTEL.ADMINid.JOP" %>

<%@ Register Src="~/admin_UC/jops.ascx" TagPrefix="uc1" TagName="jops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:jops runat="server" ID="jops" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINid/ADMIN.Master" AutoEventWireup="true" CodeBehind="ROOMS.aspx.cs" Inherits="HOTEL.ADMINid.ROOMS1" %>

<%@ Register Src="~/admin_UC/rooms.ascx" TagPrefix="uc1" TagName="rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:rooms runat="server" id="rooms" />
</asp:Content>

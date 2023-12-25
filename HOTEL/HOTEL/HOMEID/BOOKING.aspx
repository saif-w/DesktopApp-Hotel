<%@ Page Title="" Language="C#" MasterPageFile="~/HOMEID/HOME.Master" AutoEventWireup="false" CodeBehind="BOOKING.aspx.cs" Inherits="HOTEL.HOME.BOOKING" %>

<%@ Register Src="~/admin_UC/booking.ascx" TagPrefix="uc1" TagName="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:booking runat="server" ID="booking" />
</asp:Content>

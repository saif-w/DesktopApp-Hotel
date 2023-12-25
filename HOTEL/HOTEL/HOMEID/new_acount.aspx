<%@ Page Title="" Language="C#" MasterPageFile="~/HOME/HOME.Master" AutoEventWireup="false" CodeBehind="new_acount.aspx.cs" Inherits="HOTEL.HOME.new_acount" %>

<%@ Register Src="~/admin_UC/new_acount.ascx" TagPrefix="uc1" TagName="new_acount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:new_acount runat="server" ID="new_acount" />
</asp:Content>

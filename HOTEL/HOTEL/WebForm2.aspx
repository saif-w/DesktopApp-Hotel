<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HOTEL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id" RepeatColumns="2">
            <ItemTemplate>
                <asp:Image ID="Image1"  runat="server" Height="223px" ImageUrl='<%# "roomimags//" + Eval("id") +".jpg" %>' Width="222px" />
                <video width="320" height="240" src="'<%# "roomimags//" + Eval("id") +".jpg" %>'"   controls>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT * FROM [ROOMS]"></asp:SqlDataSource>
        <br />
        <br />
    
        <br />
       
    </div>
    </form>
</body>
</html>

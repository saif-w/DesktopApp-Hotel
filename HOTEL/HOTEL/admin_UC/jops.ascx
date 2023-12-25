<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="jops.ascx.cs" Inherits="HOTEL.admin_UC.jops" %>
<style type="text/css">
    .auto-style1 {
        width: 56%;
        height: 280px;
        margin-left: 0px;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: center;
        height: 106px;
    }
</style>
<center>
<table align="center" border="0" class="auto-style1" style="border-style: none">
    <tr>
        <td class="auto-style2" colspan="3">
           <center>     
               <h1>     <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="الوظيفة"></asp:Label></h1>
            </center>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="الرجاء ادخال الوظيفة" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style2">
           <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700" Text="اسم الوظيفة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
           <asp:TextBox ID="txtusername" runat="server" Visible="False"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
               <center>     <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#00CC99"  style="font-size: large" Text="اضافة" Width="141px" BorderStyle="None" OnClick="Button1_Click1" /></center>
                </td>
    </tr>
</table>
    </center>


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="booking.ascx.cs" Inherits="HOTEL.admin_UC.booking" %>
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
               <h1>     <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="حجز موعد"></asp:Label></h1>
            </center>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="الرجاء ادخال اسم الثلاثي" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style2">
           <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700" Text="اسم الثلاثي"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم الهاتف" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]+$" ValidationGroup="g"></asp:RegularExpressionValidator>
                    </td>
        <td class="auto-style2">
           <asp:TextBox ID="txtphone" runat="server" MaxLength="10" OnTextChanged="txtphone_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700" Text="رقم الهاتف"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtdate" ErrorMessage="الرجاء ادخال تاريخ الحجز" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style3">
           <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700" Text="تاريخ الحجز"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
               <center>     <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#00CC99" OnClick="Button1_Click" style="font-size: large" Text="اضافة" Width="141px" BorderStyle="None" ValidationGroup="g" /></center>
                </td>
    </tr>
</table>
    </center>


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="new_acount.ascx.cs" Inherits="HOTEL.admin_UC.Custamers" %>


<style type="text/css">
    .auto-style1 {
        width: 48%;
        height: 263px;
    }
</style>



<table class="auto-style1" align="center" style="border-style: none">
    <tr>
        <td colspan="3" style="text-align: center">
            <h2>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="انشاء حساب جديد"></asp:Label>
            </h2>
        </td>
    </tr>
    <tr>
        <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtusername" ErrorMessage="الرجاء ادخال اسم المستخدم" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td style="text-align: center">
           <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: center">
            <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700" Text="اسم المستخدم"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtpassword" ErrorMessage="الرجاء ادخال كلمة السر" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td style="text-align: center">
          <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: center">
            <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700" Text="كلمة السر"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="الرجاء ادخال اسم الثلاثي" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td style="text-align: center">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: center">
            <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700" Text="اسم الثلاثي"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم الهاتف" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]+$" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
        <td style="text-align: center">
            <asp:TextBox ID="txtphone" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Number"></asp:TextBox>
        </td>
        <td style="text-align: center">
            <asp:Label ID="Label5" runat="server" style="font-size: large; font-weight: 700" Text="رقم الهاتف"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#00CC99" OnClick="Button1_Click" style="font-size: large" Text="تسجيل الدخول" Width="164px" />
            <br />
        </td>
    </tr>
</table>




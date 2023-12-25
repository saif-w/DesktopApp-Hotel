<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="rooms.ascx.cs" Inherits="HOTEL.admin_UC.rooms" %>
<style type="text/css">
    .auto-style1 {
        width: 56%;
        height: 280px;
        margin-left: 0px;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style4 {
        text-align: center;
        height: 37px;
    }
    .auto-style5 {
        text-align: center;
        height: 32px;
    }
    .auto-style6 {
        text-align: center;
        height: 38px;
    }
</style>
<center>
<table align="center" border="0" class="auto-style1" style="border-style: none">
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2" colspan="3">
           <center>     
               <h1>     <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="اضافة غرف"></asp:Label></h1>
            </center>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" rowspan="5">
                        <asp:Image ID="Image1" runat="server" Height="162px" Width="164px" />
                    </td>
        <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txttype" ErrorMessage="الرجاء ادخال نوع الغرفة" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style2">
            <asp:DropDownList ID="txttype" runat="server" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="125px">
                <asp:ListItem>فردية</asp:ListItem>
                <asp:ListItem>زوجية</asp:ListItem>
                <asp:ListItem>عائلية</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700" Text="نوع الغرفة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="الرجاء ادخال اسم الغرفة" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style2">
           <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700" Text="اسم الغرفة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtprice" ErrorMessage="الرجاء ادخال المبلغ" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtprice" ErrorMessage="الرجاء ادخال رقم" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]+$" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
        <td class="auto-style4">
           <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700" Text="المبلغ"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtdisc" ErrorMessage="الرجاء ادخال الوصف" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style4">
           <asp:TextBox ID="txtdisc" runat="server" Height="128px" TextMode="MultiLine" Width="181px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label7" runat="server" style="font-size: large; font-weight: 700" Text="الوصف"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="fup" ErrorMessage="الرجاء ادخال الصورة" Font-Bold="True" 
                            ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
        <td class="auto-style4">
            <asp:FileUpload ID="fup" runat="server" />
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" style="font-size: large; font-weight: 700" Text="الصورة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
                        <asp:TextBox ID="txtid" runat="server" Visible="False"></asp:TextBox>
                    </td>
        <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="txtusername" runat="server" Visible="False"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style6">
                        <asp:TextBox ID="txtid0" runat="server" Visible="False"></asp:TextBox>
                    </td>
        <td class="auto-style6" colspan="3">
               <center>     <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#00CC99"  style="font-size: large" Text="اضافة" Width="141px" BorderStyle="None" ValidationGroup="g1" OnClick="Button1_Click" /></center>
                </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="4">
               <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
    </center>



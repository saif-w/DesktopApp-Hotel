<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="employe.ascx.cs" Inherits="HOTEL.admin_UC.employe" %>
<style type="text/css">
    .auto-style1 {
        width: 50%;
        height: 899px;
    }
    .auto-style2 {
        text-align: center;
    }
     .auto-style3 {
        text-align: center;
        text-underline-position:right;
        width:200px;
    }
</style>
  <script type = "text/javascript">
        function Confirm_delete() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value_delete";
            if (confirm("هل انت تريد الحذف؟")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
   
        function Confirm_update() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value_update";
            if (confirm("هل انت تريد التعديل؟")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
<center>
    <br />
   
        <ContentTemplate>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="font-size: x-large" Text="صفحة الموظف"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="الرجاء ادخال اسم الثلاثي" Font-Bold="True" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtname" runat="server" Width="106px" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700" Text="اسم ثلاثي"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadress" ErrorMessage="الرجاء ادخال عنوان" Font-Bold="True" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtadress" runat="server" Width="106px" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700" Text="العنوان"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم الهاتف" Font-Bold="True" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="الرجاء ادخال رقم" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]+$" ValidationGroup="g2"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtphone" runat="server" Width="106px" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700" Text="رقم الهاتف"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="jopname" DataValueField="id" Height="30px" Width="140px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT [id], [jopname] FROM [JOPS]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" style="font-size: large; font-weight: 700" Text="نوع العمل"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtnotes" runat="server" Height="86px" TextMode="MultiLine" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" style="font-size: large; font-weight: 700Te" xt="ملاحظة">ملاحظات</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <center>
                            <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#00CC99" OnClick="Button1_Click" style="font-size: large" Text="اضافة" Width="127px" BorderStyle="None" ValidationGroup="g2" />
                        </center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button5" runat="server" Text="بحث" BackColor="#FFFF99" BorderColor="#00CC99" BorderStyle="None" style="font-size: large" ValidationGroup="g" Width="127px" />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtserch" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" style="font-size: large; font-weight: 700" Text="بحث"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:TextBox ID="txtid" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="txtusername" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
            <br />
                        <%--<div style="overflow:scroll;  height:200px; width:250; clip: rect(auto, auto, auto, auto);">--%>
                            <center>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="المعرف" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                        <asp:BoundField DataField="المعرف" HeaderText="المعرف" InsertVisible="False" ReadOnly="True" SortExpression="المعرف" />
                                        <asp:BoundField DataField="اسم الثلاثي" HeaderText="اسم الثلاثي" SortExpression="اسم الثلاثي" />
                                        <asp:BoundField DataField="العنوان" HeaderText="العنوان" SortExpression="العنوان" />
                                        <asp:BoundField DataField="رقم الهاتف" HeaderText="رقم الهاتف" SortExpression="رقم الهاتف" />
                                        <asp:BoundField DataField="اسم العمل" HeaderText="اسم العمل" SortExpression="اسم العمل" />
                                        <asp:BoundField DataField="اسم مستخدم" HeaderText="اسم مستخدم" SortExpression="اسم مستخدم" />
                                        <asp:BoundField DataField="ملاحظات" HeaderText="ملاحظات" SortExpression="ملاحظات" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="select_employes" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtserch" Name="serch" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </center>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="المعرف" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="name" HeaderText="اسم الثلاثي" SortExpression="name" />
                                    <asp:BoundField DataField="adrees" HeaderText="العنوان" SortExpression="adrees" />
                                    <asp:BoundField DataField="phone" HeaderText="ؤقم الهاتف" SortExpression="phone" />
                                    <asp:BoundField DataField="jopname" HeaderText="اسم العمل" SortExpression="jopname" />
                                    <asp:BoundField DataField="username" HeaderText="اسم المستخدم" SortExpression="username" />
                                    <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HOTELConnectionString %>" SelectCommand="SELECT EMPLOYES.id, EMPLOYES.name, EMPLOYES.adrees, EMPLOYES.phone, JOPS.jopname, EMPLOYES.username, EMPLOYES.notes FROM EMPLOYES INNER JOIN JOPS ON EMPLOYES.id_jops = JOPS.id"></asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" BackColor="#FF5050" BorderColor="#00CC99" BorderStyle="None" OnClick="Button4_Click" style="font-size: large" Text="حذف" ValidationGroup="g" Width="127px" OnClientClick="Confirm_delete()" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" BackColor="#0099FF" BorderColor="#0099FF" BorderStyle="None" OnClick="Button3_Click" style="font-size: large" Text="تعديل" ValidationGroup="g2" Width="127px" OnClientClick="Confirm_update()" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    

    </center>


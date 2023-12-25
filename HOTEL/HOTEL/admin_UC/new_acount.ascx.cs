using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HOTEL.BL;
namespace HOTEL.admin_UC
{
    public partial class Custamers : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (members.members_load(txtusername.Text).Rows.Count == 0)
            {
                members.members_insert(txtusername.Text, txtpassword.Text, txtname.Text, Convert.ToInt32(txtphone.Text), 1);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('تمت الاضافة بنجاح');</Script>");
            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('يوجد اسم مستخدم بي الفعل');</Script>");



        }
    }
}
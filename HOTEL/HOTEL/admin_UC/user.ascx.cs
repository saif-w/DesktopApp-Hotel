using HOTEL.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTEL.admin_UC
{
    public partial class user : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ايجاد اسم مستخدم وكلمة السر و نقل الي صفحة الادمن عن طريق الكوكيس

            //if (members.login_lo(txtusername.Text, txtpassword.Text).Rows.Count == 1)
            //{
            //    DataTable dt = new DataTable();
            //    int x = Convert.ToInt32(members.members_mtype(txtusername.Text).Rows[0][4]);

            //    COOKES.CreateCookie("hotel", new string[] { "username", "password" }, new string[] { txtusername.Text, txtpassword.Text }, !CheckBox1.Checked, Response);
            //    if (Convert.ToInt32(x) == 1)
            //        Response.Redirect("../ADMINid/HOME.aspx");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (members.login_lo(txtusernaame.Text, txtpassword.Text).Rows.Count == 1) {
              
                COOKES.CreateCookie("hotel", new string[] { "username", "password" }, new string[] { txtusernaame.Text, txtpassword.Text }, !CheckBox1.Checked, Response);
            }
        }
    }
}
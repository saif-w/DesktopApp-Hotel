using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HOTEL.BL;
namespace HOTEL.admin_UC
{
    public partial class jops : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtusername.Text = COOKES.ReadFromCookie("hotel", "username", Request);
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            _jops.jops_insert(txtname.Text, txtusername.Text);
            Response.Write("<script>alert('تمت الاضافة');</script>");
        }
    }
}
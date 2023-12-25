using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HOTEL.BL;
using System.Data.SqlClient;

namespace HOTEL.admin_UC
{
    public partial class booking : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string user = COOKES.ReadFromCookie("hotel", "username", Request);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                booking1.booking_insert(txtname.Text, Convert.ToInt32(txtphone.Text), Convert.ToDateTime(txtdate.Text));
                Response.Write("<script>alert('تمت الاضافة بي نجاح');</script>");
            Response.Redirect(Request.RawUrl);
        }

        protected void txtphone_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
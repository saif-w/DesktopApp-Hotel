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
    public partial class rooms : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtusername.Text = COOKES.ReadFromCookie("hotel", "username", Request);
            txtid.Text = find_image().ToString();
            
        }
        public string find_image()
        {
             string x = string.Format("	SELECT top 1 [id] FROM [ROOMS] ORDER BY [id] DESC");
           
            queray q = new queray();

          int no= Convert.ToInt32(q.RunQuery(x).Rows[0][0])+1;
            return no.ToString();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            

            if (fup.HasFile)
            {
                fup.SaveAs(Server.MapPath("//roomimags") + "\\" + 5 + ".jpg");
                //_rooms.rooms_insert(txtname.Text, txttype.SelectedItem.ToString(), Convert.ToInt32(txtprice.Text),txtdisc.Text ,txtusername.Text);
                //Response.Write("<script>alert('تمت الاضافة');</script>");
                //Response.Redirect(Request.RawUrl);

            }
            else
            {
                Label6.Text = "الرجاء ادخال صورة"; 
            }
        }
    }
}
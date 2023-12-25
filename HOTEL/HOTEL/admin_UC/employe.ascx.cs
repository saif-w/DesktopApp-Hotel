using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HOTEL.BL;
namespace HOTEL.admin_UC
{
    public partial class employe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtusername.Text = COOKES.ReadFromCookie("hotel", "username", Request);
            if (txtserch.Text == "")
            {
                
                GridView2.Visible = true;

                GridView1.Visible = false;
            }
            else
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
            }

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            employes.emplye_insert(txtname.Text, txtadress.Text, Convert.ToInt32(txtphone.Text), Convert.ToInt32(DropDownList1.SelectedValue), "saif", txtnotes.Text);
            Response.Redirect(Request.RawUrl);
            Response.Write("<script>alert('تمت الاضافة');</script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(GridView1.SelectedValue);
            string query = string.Format("select * from EMPLOYES where id='{0}'", ID);
            queray q = new queray();
            if (q.RunQuery(query).Rows.Count == 1)
            {
                txtid.Text = q.RunQuery(query).Rows[0][0].ToString();
                txtname.Text = q.RunQuery(query).Rows[0][1].ToString();
                txtadress.Text = q.RunQuery(query).Rows[0][2].ToString();
                txtphone.Text = q.RunQuery(query).Rows[0][3].ToString();
                DropDownList1.SelectedValue = q.RunQuery(query).Rows[0][4].ToString();
                txtusername.Text = q.RunQuery(query).Rows[0][5].ToString();
                txtnotes.Text = q.RunQuery(query).Rows[0][6].ToString();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
           }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value_delete"];
            if (confirmValue == "Yes")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('تم الحذف')", true);
                employes.employe_delete(Convert.ToInt32(txtid.Text));
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('تم الحذف');</script>");
            }
            else
            {
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value_update"];
            if (confirmValue == "Yes")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('تم التعديل')", true);
                employes.employe_update(Convert.ToInt32(txtid.Text), txtname.Text, txtadress.Text, Convert.ToInt32(txtphone.Text), Convert.ToInt32(DropDownList1.SelectedValue), txtusername.Text, txtnotes.Text);
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('تم التعديل');</script>");
            }
            else
            {
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(GridView2.SelectedValue);
            string query = string.Format("select * from EMPLOYES where id='{0}'", ID);
            queray q = new queray();
            if (q.RunQuery(query).Rows.Count == 1)
            {
                txtid.Text = q.RunQuery(query).Rows[0][0].ToString();
                txtname.Text = q.RunQuery(query).Rows[0][1].ToString();
                txtadress.Text = q.RunQuery(query).Rows[0][2].ToString();
                txtphone.Text = q.RunQuery(query).Rows[0][3].ToString();
                DropDownList1.SelectedValue = q.RunQuery(query).Rows[0][4].ToString();
                txtusername.Text = q.RunQuery(query).Rows[0][5].ToString();
                txtnotes.Text = q.RunQuery(query).Rows[0][6].ToString();
            }

        }
    }
}
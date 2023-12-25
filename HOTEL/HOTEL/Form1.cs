using hotel.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace hotel
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        void load()
        {
           //dataGridView1.DataSource= _COUSTMER._SELECTE("");
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            load();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //string x = _PAYMENT._check_in(Convert.ToInt32(textBox1.Text)).Rows[0][0].ToString();
            //string y = DateTime.Now.ToShortDateString();
            //DateTime date1 = DateTime.Parse(x);
            //DateTime date2 = DateTime.Parse(y);
            //TimeSpan diff = (date2 - date1);
            
           


            //double f = Convert.ToDouble(_ROOM._cost(Convert.ToInt32(textBox1.Text)).Rows[0][0].ToString());
           

            //double z = Convert.ToDouble(diff.ToString("dd"));
            //double h = f * z;
            //textBox2.Text = h.ToString();
            //try
            //{



             
            //}
            //catch
            //{ }
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.total_fatoraTableAdapter.Fill(this.dataSet1.total_fatora, Convert.ToInt32(textBox2.Text),Convert.ToInt32(textBox1.Text));
        }
    }
}

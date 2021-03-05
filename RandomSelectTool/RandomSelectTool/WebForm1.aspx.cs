using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RandomSelectTool
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            string[] array= new string[10];
            int number;
            array[0] = TextBox1.Text;
            array[1] = TextBox2.Text;
            array[2] = TextBox3.Text;
            array[3] = TextBox4.Text;
            array[4] = TextBox5.Text;
            number = rnd.Next(0, 4);
            Label1.Text = "Sonucunuz :" + array[number];



        }
    }
}
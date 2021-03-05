using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{

    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorum_id"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("select Yorum_AdSoyad,Yorum_Mail,Yorum_Icerik,Yemek_Ad from Tbl_Yorumlar inner join Tbl_Yemekler " +
                    "on Tbl_Yorumlar.Yemek_Id=Tbl_Yemekler.Yemek_Id where Yorum_Id=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set Yorum_Icerik=@p1, Yorum_Onay=@p2 where Yorum_Id=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}
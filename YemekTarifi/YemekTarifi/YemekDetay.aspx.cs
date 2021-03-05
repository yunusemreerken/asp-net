using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select Yemek_Ad from  Tbl_Yemekler where Yemek_Id=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                Label4.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //yorumlar
            SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where Yemek_Id=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(Yorum_AdSoyad,Yorum_Mail,Yorum_Icerik,Yemek_Id)" +
                "values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}
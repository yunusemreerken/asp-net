using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string kategori_id = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            kategori_id = Request.QueryString["kategoriid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemek_Id=@p1",bgl.baglanti());
                komut.Parameters.AddWithValue("@p1",id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();


                
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler where Kategori_Id=@p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1",kategori_id);
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "Kategori_Ad";
                    DropDownList1.DataValueField = "Kategori_Id";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                
            }

            
        }

        protected void BtnGuncelle_Click1(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resim/"+ FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Yemek_Ad=@p1,Yemek_Malzeme=@p2,Yemek_Tarif=@p3,Kategori_Id=@p4,Yemek_Resim=@p6 " +
                "where Yemek_Id=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6","~/resim/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //tüm yemk durumları false;
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Yemek_Durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //seçilen yemeğin durumunun true yap.
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Yemek_Durum = 1 where Yemek_Id=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}
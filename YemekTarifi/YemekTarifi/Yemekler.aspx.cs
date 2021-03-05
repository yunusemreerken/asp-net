using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string yemek_id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;



            if (Page.IsPostBack == false)
            {
                yemek_id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];



                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "Kategori_Ad";
                DropDownList1.DataValueField = "Kategori_Id";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }


            //Yemek Listesi
            SqlConnection dbopen = bgl.baglanti();
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler", dbopen);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dbopen.Close();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where Yemek_Id=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", yemek_id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (Yemek_Ad,Yemek_Malzeme,Yemek_Tarif,Kategori_Id) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //Kategori sayısı arttırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set kategori_Adet=kategori_Adet+1 where Kategori_Id = @p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


    }
}
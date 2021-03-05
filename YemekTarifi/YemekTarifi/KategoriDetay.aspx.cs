using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string kategori_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_id = Request.QueryString["Kategori_Id"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Kategori_Id=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kategori_id);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            
        }
    }
}
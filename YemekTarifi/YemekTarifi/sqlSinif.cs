using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class sqlSinif
    {
        public SqlConnection baglanti()
        {

            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-9A8NPH3\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifSite;Integrated Security=true;MultipleActiveResultSets=True");
            baglan.Open();
            return baglan;

        }
    }

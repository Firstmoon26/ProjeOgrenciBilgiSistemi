using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\v11.00;Initial Catalog=DBProjeOBS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e) //LOGIN İŞLEMİ
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from Tbl_Ogrenci where OGRNO=@p1 and OGRSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextNumara.Text);
            komut.Parameters.AddWithValue("@p2", TextSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgrNo", TextNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Kullanıcı adı veya şifre hatalı!";
            }
            baglanti.Close();
        }

        protected void ÖgretmenGirisButton_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from Tbl_Ogretmen where OGRTNO=@p1 and OGRTSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextNumara.Text);
            komut.Parameters.AddWithValue("@p2", TextSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgrtNo", TextNumara.Text);
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Kullanıcı adı veya şifre hatalı!";
            }
            baglanti.Close();

        }
    }
}
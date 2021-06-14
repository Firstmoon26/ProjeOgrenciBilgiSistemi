using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int notid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                notid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
                TextOgrAdSoyad.Text = dt.NotGetir2(notid)[0].OGRENCIADSOYAD;
                TextDersAd.Text = dt.NotGetir2(notid)[0].DERSAD;
                TextSınav1.Text = dt.NotGetir2(notid)[0].SINAV1.ToString();
                TextSınav2.Text = dt.NotGetir2(notid)[0].SINAV2.ToString();
                TextSınav3.Text = dt.NotGetir2(notid)[0].SINAV3.ToString();
                TextOrtalama.Text = dt.NotGetir2(notid)[0].ORTALAMA.ToString();
                TextDurum.Text = dt.NotGetir2(notid)[0].DURUM; ;
            }
        }

        protected void HesaplaButton_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;

            sinav1 = Convert.ToInt32(TextSınav1.Text);
            sinav2 = Convert.ToInt32(TextSınav2.Text);
            sinav3 = Convert.ToInt32(TextSınav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TextOrtalama.Text = ortalama.ToString("0.00");

            if (ortalama>=60)
            {
                TextDurum.Text = "Geçti";
            }

            else
            {
                TextDurum.Text = "Kaldı";
            }

        }
        protected void GuncelleButton_Click(object sender, EventArgs e)
        {
            notid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(TextSınav1.Text), byte.Parse(TextSınav2.Text),byte.Parse(TextSınav3.Text), decimal.Parse(TextOrtalama.Text), (TextDurum.Text), notid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void KaydetButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TextOgrNo.Text, TextOgrAd.Text, TextOgrSoyad.Text, TextOgrTelefon.Text, TextOgrMail.Text, TextOgrSifre.Text,TextOgrSinif.Text);
            Response.Redirect("Anasayfa.aspx");
        }
    }
}
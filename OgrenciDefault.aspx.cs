using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) // BAĞLANTI İLE PROFİL VERİLERİNİN GETİRİLMESİ
        {
            TextBoxOgrNo.Text = Session["OgrNo"].ToString();
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            TextBoxAdSoyad.Text = "ADI SOYADI: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRAD + " " 
                + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSOYAD;
            TextBoxTel.Text = "TELEFON: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRTELEFON;
            TextBoxEposta.Text = "E-POSTA: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRMAIL;
            TextBoxSifre.Text = "ŞİFRE: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSIFRE;
            TextBoxSinif.Text = "SINIF: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSINIF;
        }

        protected void GüncelleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciPanelGuncelle.aspx?OgrNo="+ TextBoxOgrNo.Text);
        }
    }
}
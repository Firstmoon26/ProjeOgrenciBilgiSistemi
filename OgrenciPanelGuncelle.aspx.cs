using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class OgrenciPanelGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                TextBoxOgrNo.Text = Request.QueryString["OgrNo"];
                TextBoxAdSoyad.Text = "ADI SOYADI: " + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRAD + " "
                    + dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSOYAD;
                TextBoxTel.Text = dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRTELEFON;
                TextBoxEposta.Text = dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRMAIL;
                TextBoxSifre.Text = dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSIFRE;
                TextBoxSinif.Text = dt.OgrenciPaneliGetir(TextBoxOgrNo.Text)[0].OGRSINIF;
            }
        }

        protected void GüncelleButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrPanelBilgiGuncelle(TextBoxTel.Text, TextBoxEposta.Text, TextBoxSifre.Text, TextBoxSinif.Text, TextBoxOgrNo.Text);
            Response.Redirect("OgrenciDefault.aspx?OgrNo=" + TextBoxOgrNo.Text);
        }
    }
}
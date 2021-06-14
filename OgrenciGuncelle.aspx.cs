using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                TextOgrId.Text = id.ToString();
                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                TextOgrNo.Text = dt.OgrenciSec(id)[0].OGRNO;
                TextOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                TextOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                TextOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                TextOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                TextOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                TextOgrSinif.Text = dt.OgrenciSec(id)[0].OGRSINIF;
            }
        }

        protected void GuncelleButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciGuncelle(TextOgrNo.Text, TextOgrAd.Text, TextOgrSoyad.Text, TextOgrTelefon.Text, TextOgrMail.Text,
                TextOgrSifre.Text, TextOgrSinif.Text, Convert.ToInt32(TextOgrId.Text));
            Response.Redirect("Anasayfa.aspx");
        }
    }
}
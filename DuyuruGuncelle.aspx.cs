using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e) /*Güncellenecek olan duyuru bilgilerini textbox lara taşıdık */
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
                DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
                TextDuyuruID.Text = id.ToString();
                TextDuyuruBaslık.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
                TextAreaIcerik.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;
            }
        }

        protected void GüncelleButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruGuncelle(TextDuyuruBaslık.Text, TextAreaIcerik.Value, Convert.ToInt32(TextDuyuruID.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) /*Datasetten dropdown liste öğretmen isimlerini çektik*/
        {
            if (Page.IsPostBack==false)
            {
                DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
                DropDownListOgretmen.DataSource = dt.OgretmenListesi();
                DropDownListOgretmen.DataTextField = "OGRTADSOYAD";
                DropDownListOgretmen.DataValueField = "OGRTID";
                DropDownListOgretmen.DataBind();
            }
           
        }

        protected void EkleButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(TextDuyuruBaslık.Text, TextAreaIcerik.Value.ToString(), Convert.ToInt32(DropDownListOgretmen.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}
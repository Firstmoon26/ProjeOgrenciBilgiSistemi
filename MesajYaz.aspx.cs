using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class MesajYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextGonderen.Text = Session["OGRTNO"].ToString();
        }

        protected void GonderButton_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TextGonderen.Text, TextAlici.Text, TextKonu.Text, TextIcerik.Value.ToString());
            Response.Redirect("GidenMesajlar.Aspx");
        }
    }
}
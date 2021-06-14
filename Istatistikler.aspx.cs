using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeOgrenciBilgiSistemi
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TextBox1.Text = "Toplam öğrenci sayısı: " + dt.OgrenciSayisi().ToString();
            TextBox2.Text = "Toplam öğretmen sayısı: " + dt.OgretmenSayisi().ToString();
            TextBox3.Text = "Toplam ders sayısı: " + dt.DersSayisi().ToString();
            TextBox4.Text = "Toplam duyuru sayısı: " + dt.DuyuruSayisi().ToString();
            TextBox5.Text = "Toplam mesaj sayısı: " + dt.MesajSayisi().ToString();
            TextBox6.Text = "1. Sınavlarda En Başarılı Öğrenci: " + dt.Sinav1Max();
            TextBox7.Text = "2. Sınavlarda En Başarılı Öğrenci: " + dt.Sinav2Max();
            TextBox8.Text = "3. Sınavlarda En Başarılı Öğrenci: " + dt.Sinav3Max();
            TextBox9.Text = "Ayrık Matematik Ortalaması En Yüksek Öğrenci: " + dt.Ders1Max();
            TextBox10.Text = "Bilgisayar Ağları Ortalaması En Yüksek Öğrenci: " + dt.Ders2Max();
            TextBox11.Text = "Sayısal Tasarım Ortalaması En Yüksek Öğrenci: " + dt.Ders3Max();
            TextBox12.Text = "C Programlama Ortalaması En Yüksek Öğrenci: " + dt.Ders4Max();
            TextBox13.Text = "Proje Yönetimi Ortalaması En Yüksek Öğrenci: " + dt.Ders5Max();
            TextBox14.Text = "Yazılım Mühendisliği Ortalaması En Yüksek Öğrenci: " + dt.Ders6Max();
            TextBox15.Text = "Nesne Yönelimli Programlama Ortalaması En Yüksek Öğrenci: " + dt.Ders7Max();
            TextBox16.Text = "Veritabanı Yönetim Sistemleri Ortalaması En Yüksek Öğrenci: " + dt.Ders8Max();
            TextBox17.Text = "Veri Yapıları Ortalaması En Yüksek Öğrenci: " + dt.Ders9Max();
            TextBox18.Text = "Algoritma Analizi Ortalaması En Yüksek Öğrenci: " + dt.Ders10Max();
            TextBox19.Text = "Yapay Zeka Ortalaması En Yüksek Öğrenci: " + dt.Ders11Max();
            TextBox20.Text = "İşletim Sistemleri Analizi Ortalaması En Yüksek Öğrenci: " + dt.Ders12Max();
            TextBox21.Text = "Web Programlama Ortalaması En Yüksek Öğrenci: " + dt.Ders13Max();
            TextBox22.Text = "1'inci Vizelerin Not Ortalaması: " + dt.OrtSinav1();
            TextBox23.Text = "2'nci Vizelerin Not Ortalaması: " + dt.OrtSinav2();
            TextBox24.Text = "Finallerin Not Ortalaması: " + dt.OrtSinav3();
            TextBox25.Text = "Not Ortalamasına Göre Başarılı Olunan Ders Sayısı: " + dt.BasariliSayisi();
            TextBox26.Text = "Not Ortalamasına Göre Başarısız Olunan Ders Sayısı: " + dt.BasarisizSayisi();
        }
    }
}
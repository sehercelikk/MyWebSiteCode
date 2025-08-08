using System;
using System.IO;
using System.Web.UI;

namespace WebSite
{
    public partial class Hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            if (Page.IsPostBack==false)
            {
                DataSet1TableAdapters.AboutTableAdapter dtHakkimda = new DataSet1TableAdapters.AboutTableAdapter();
                var data = dtHakkimda.HakkimdaList()[0];
                TextBox1.Text = data.Unvan;
                TextBox2.Text = data.Ad;
                TextBox3.Text = data.Soyad;
                TextBox4.Text = data.Aciklama;

                HiddenField1.Value = data.Foto;
                ProfilFoto.ImageUrl = data.Foto;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string imgYol = HiddenField1.Value;
            if(FileUpload1.HasFile)
            {
                string dosyaAdi=Path.GetFileName(FileUpload1.FileName);
                string sanalYol = "~/images/" + dosyaAdi;
                string fizikiYol=Server.MapPath(sanalYol);

                FileUpload1.SaveAs(fizikiYol);
                imgYol = sanalYol;
            }

            DataSet1TableAdapters.AboutTableAdapter dtGuncelle = new DataSet1TableAdapters.AboutTableAdapter();
            dtGuncelle.HakkimdaGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, imgYol);
            Response.Redirect("Default");
        }
    }
}
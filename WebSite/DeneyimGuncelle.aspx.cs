using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class DeneyimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt16(Request.QueryString["Id"]);
            TxtId.Enabled = false;
            TxtId.Text=id.ToString();

           if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.ExperienceTableAdapter dt = new DataSet1TableAdapters.ExperienceTableAdapter();
                TxtKurumAdi.Text = dt.GetByIdDeneyim(Convert.ToInt16(id))[0].KurumAdi;
                TxtUnvan.Text = dt.GetByIdDeneyim(Convert.ToInt16(id))[0].Unvan;
                TxtTarih.Text = dt.GetByIdDeneyim(Convert.ToInt16(id))[0].Tarih;
                TxtAciklama.Text = dt.GetByIdDeneyim(Convert.ToInt16(id))[0].Aciklama;
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ExperienceTableAdapter dtGuncelle = new DataSet1TableAdapters.ExperienceTableAdapter();
            dtGuncelle.DeneyimGuncelle(TxtKurumAdi.Text, TxtUnvan.Text, TxtTarih.Text, TxtAciklama.Text,Convert.ToInt16(TxtId.Text));
            Response.Redirect("Deneyim");

        }
    }
}
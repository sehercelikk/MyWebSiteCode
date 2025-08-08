using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class EgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt32(Request.QueryString["Id"]);
            TxtId.Enabled = false;
            TxtId.Text=id.ToString();

            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.EducationsTableAdapter dtGetir= new DataSet1TableAdapters.EducationsTableAdapter();
                TxtOkul.Text = dtGetir.EgitimGetir(Convert.ToInt32(id))[0].OkulAdi;
                TxtBolum.Text = dtGetir.EgitimGetir(Convert.ToInt32(id))[0].Bolum;
                TxtTarih.Text = dtGetir.EgitimGetir(Convert.ToInt32(id))[0].Tarih;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.EducationsTableAdapter dtGuncelle = new DataSet1TableAdapters.EducationsTableAdapter();
            dtGuncelle.EgitimGuncelle(TxtOkul.Text, TxtBolum.Text, TxtTarih.Text, Convert.ToInt32(TxtId.Text));
            Response.Redirect("Egitim");

        }
    }
}
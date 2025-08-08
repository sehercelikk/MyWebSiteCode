using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class ProjeGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt32(Request.QueryString["Id"]);
            TxtId.Enabled = false;
            TxtId.Text = id.ToString();

            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.ProjelerTableAdapter dt = new DataSet1TableAdapters.ProjelerTableAdapter();
                TxtProjeAd.Text = dt.ProjeGetir(Convert.ToInt32(id))[0].ProjeName;
                TxtAciklama.Text = dt.ProjeGetir(Convert.ToInt32(id))[0].Aciklama;
                TxtLink.Text = dt.ProjeGetir(Convert.ToInt32(id))[0].Link;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ProjelerTableAdapter dt = new DataSet1TableAdapters.ProjelerTableAdapter();
            dt.ProjeGuncelle(TxtProjeAd.Text,TxtAciklama.Text,TxtLink.Text,Convert.ToInt32(TxtId.Text));
            Response.Redirect("Proje");
        }
    }
}
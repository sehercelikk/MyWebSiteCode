using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class BeceriGuncelle : System.Web.UI.Page
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
                DataSet1TableAdapters.SkillsTableAdapter dt = new DataSet1TableAdapters.SkillsTableAdapter();
                TxtAd.Text = dt.BeceriGetir(Convert.ToInt16(id))[0].BeceriAd;
                TxtYuzde.Text = dt.BeceriGetir(Convert.ToInt16(id))[0].YuzdeKac.ToString();
                TxtAciklama.Text = dt.BeceriGetir(Convert.ToInt16(id))[0].Aciklama;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.SkillsTableAdapter dt = new DataSet1TableAdapters.SkillsTableAdapter();
            dt.BeceriGuncelle(TxtAd.Text,Convert.ToInt32(TxtYuzde.Text),TxtAciklama.Text,Convert.ToInt16(TxtId.Text));
            Response.Redirect("Beceri");
        }
    }
}
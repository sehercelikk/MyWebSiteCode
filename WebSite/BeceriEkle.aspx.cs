using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class BeceriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.SkillsTableAdapter dt = new DataSet1TableAdapters.SkillsTableAdapter();
            dt.BeceriEkle(TxtAd.Text,Convert.ToInt32(TxtYuzde.Text),TxtAciklama.Text);
            Response.Redirect("Beceri");
        }
    }
}
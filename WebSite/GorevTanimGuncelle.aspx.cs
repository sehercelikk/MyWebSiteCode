using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class GorevTanimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt16(Request.QueryString["Id"]);
            TxtId.Enabled = false;
            TxtId.Text = id.ToString();

            if (Page.IsPostBack==false)
            {
                DataSet1TableAdapters.GorevTanimlariAdapter dt= new DataSet1TableAdapters.GorevTanimlariAdapter();
                TxtGorev.Text = dt.GorevGetir(Convert.ToInt16(id))[0].Gorev;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.GorevTanimlariAdapter dtGuncelle = new DataSet1TableAdapters.GorevTanimlariAdapter();
            dtGuncelle.GorevGuncelle(TxtGorev.Text,Convert.ToInt16(TxtId.Text));
            Response.Redirect("GorevTanim");
        }
    }
}

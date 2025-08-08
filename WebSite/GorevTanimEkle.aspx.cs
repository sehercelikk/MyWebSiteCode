using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class GorevTanimEkle : System.Web.UI.Page
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
            DataSet1TableAdapters.GorevTanimlariAdapter dt= new DataSet1TableAdapters.GorevTanimlariAdapter();
            dt.GorevEkle(TxtGorev.Text);
            Response.Redirect("GorevTanim");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class GorevTanim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.GorevTanimlariAdapter dt= new DataSet1TableAdapters.GorevTanimlariAdapter();
            Repeater1.DataSource = dt.GorevTanimlari();
            Repeater1.DataBind();
        }
    }
}
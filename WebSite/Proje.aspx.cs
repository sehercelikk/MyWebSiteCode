using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Proje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.ProjelerTableAdapter dt = new DataSet1TableAdapters.ProjelerTableAdapter();
            Repeater1.DataSource = dt.ProjeList();
            Repeater1.DataBind();
        }
    }
}
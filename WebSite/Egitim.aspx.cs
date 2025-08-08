using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Egitim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.EducationsTableAdapter dt= new DataSet1TableAdapters.EducationsTableAdapter();
            Repeater1.DataSource = dt.EgitimList().OrderByDescending(a=>a.Id);
            Repeater1.DataBind();
        }
    }
}
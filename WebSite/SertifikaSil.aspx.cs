using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class SertifikaSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt32(Request.QueryString["Id"]);
            DataSet1TableAdapters.SertifikalarTableAdapter dt = new DataSet1TableAdapters.SertifikalarTableAdapter();
            dt.SertifikaSil(Convert.ToInt32(id));
            Response.Redirect("Sertifika");
        }
    }
}
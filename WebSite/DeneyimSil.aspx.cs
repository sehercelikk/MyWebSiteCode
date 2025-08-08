using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class DeneyimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            int id = Convert.ToInt16(Request.QueryString["Id"]);
            DataSet1TableAdapters.ExperienceTableAdapter dt= new DataSet1TableAdapters.ExperienceTableAdapter();
            dt.DeleteDeneyim(Convert.ToInt16(id));
            Response.Redirect("Deneyim");
        }
    }
}
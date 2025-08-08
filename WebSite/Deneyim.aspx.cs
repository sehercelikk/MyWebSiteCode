using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Deneyim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.ExperienceTableAdapter dtDeneyim= new DataSet1TableAdapters.ExperienceTableAdapter();
            Repeater1.DataSource = dtDeneyim.DeneyimList();
            Repeater1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Beceri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.SkillsTableAdapter dt = new DataSet1TableAdapters.SkillsTableAdapter();
            Repeater1.DataSource = dt.BeceriList();
            Repeater1.DataBind();
        }
    }
}
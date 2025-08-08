using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Sertifika : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            DataSet1TableAdapters.SertifikalarTableAdapter dt= new DataSet1TableAdapters.SertifikalarTableAdapter();
            Repeater1.DataSource = dt.SertifikaList();
            Repeater1.DataBind();
        }
    }
}
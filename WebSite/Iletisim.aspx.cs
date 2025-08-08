using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }

            DataSet1TableAdapters.ContactTableAdapter dt= new DataSet1TableAdapters.ContactTableAdapter();
            TxtAdress.Text = dt.IletisimList()[0].Adres;
            TxtMail.Text = dt.IletisimList()[0].Mail;
            TxtLinkedln.Text = dt.IletisimList()[0].Linkedln;
            TxtGithub.Text = dt.IletisimList()[0].Github;
        }
    }
}
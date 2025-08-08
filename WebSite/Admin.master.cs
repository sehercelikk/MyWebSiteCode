using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                if (Session["KullaniciAdi"] !=null)
                {
                    KullaniciAdi.InnerText= Session["KullaniciAdi"].ToString();
                }
                else
                {
                    KullaniciAdi.InnerText = "Misafir";
                }
            }
        }
    }
}
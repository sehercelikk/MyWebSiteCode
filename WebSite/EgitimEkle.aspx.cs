﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class EgitimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.EducationsTableAdapter dt= new DataSet1TableAdapters.EducationsTableAdapter();
            dt.AddEgitim(TxtOkul.Text,TxtBolum.Text,TxtTarih.Text);
            Response.Redirect("Egitim");
        }
    }
}
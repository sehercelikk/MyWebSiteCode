using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class HobiGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            TxtId.Enabled = false;
            TxtId.Text=id.ToString(); 
            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.HobilerTableAdapter dt= new DataSet1TableAdapters.HobilerTableAdapter();
                TxtHobi.Text = dt.HobiGetir(Convert.ToInt32(id))[0].HobiAd;
                Txtaciklama.Text = dt.HobiGetir(Convert.ToInt32(id))[0].Aciklama;
                HiddenField1.Value = dt.HobiGetir(Convert.ToInt32(id))[0].ImagePath;
                HobiFoto.ImageUrl= dt.HobiGetir(Convert.ToInt32(id))[0].ImagePath;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string imgYol = HiddenField1.Value;
            if (FileUpload1.HasFile)
            {
                string dosyaAdi = Path.GetFileName(FileUpload1.FileName);
                imgYol = "~/images/hobiler/" + dosyaAdi;
                string fizikselYol = Server.MapPath(imgYol);
                FileUpload1.SaveAs(fizikselYol);
            }

            DataSet1TableAdapters.HobilerTableAdapter dtGuncelle = new DataSet1TableAdapters.HobilerTableAdapter();
            dtGuncelle.HobiGuncelle(TxtHobi.Text,Txtaciklama.Text,imgYol,Convert.ToInt32(TxtId.Text));
            Response.Redirect("Hobi");
        }
    }
}
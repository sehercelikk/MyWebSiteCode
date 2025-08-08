using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class HobiEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Login");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string imgYol = "~/images/hobiler/default.png";
            if(FileUpload1.HasFile)
            {
                string dosyaAdi=Path.GetFileName(FileUpload1.FileName);
                imgYol= "~/images/hobiler/" + dosyaAdi;
                string fizikselYol=Server.MapPath(imgYol);
                FileUpload1.SaveAs(fizikselYol);
            }
            DataSet1TableAdapters.HobilerTableAdapter dt= new DataSet1TableAdapters.HobilerTableAdapter();
            dt.HobiEkle(TxtHobi.Text, Txtaciklama.Text, imgYol);
            Response.Redirect("Hobi");
        }
    }
}
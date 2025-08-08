using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebSite
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=BPODSHGM74\\MSSQLSERVER2025;Initial Catalog=WebSiteDb;Integrated Security=True;TrustServerCertificate=True");


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand command = new SqlCommand("Select * From Admin Where KullaniciAdi=@P1 and Sifre=@P2", baglanti);
           command.Parameters.AddWithValue("@P1", TextBox1.Text);
            command.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader reader = command.ExecuteReader();
            if(reader.Read())
            {
                Session["KullaniciAdi"] = reader["KullaniciAdi"].ToString();
                Response.Redirect("Hakkimda");
            }
            else
            {
                Response.Write("Kullanıcı Adı veya Şifre Hatalı");
            }
            baglanti.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet1TableAdapters.AboutTableAdapter dt = new DataSet1TableAdapters.AboutTableAdapter();
            Repeater1.DataSource = dt.HakkimdaList();
            Repeater1.DataBind();


            DataSet1TableAdapters.EducationsTableAdapter dtEgitim = new DataSet1TableAdapters.EducationsTableAdapter();
            Repeater2.DataSource = dtEgitim.EgitimList().OrderByDescending(a => a.Id);
            Repeater2.DataBind();

            DataSet1TableAdapters.ExperienceTableAdapter dtDeneyim = new DataSet1TableAdapters.ExperienceTableAdapter();
            Repeater3.DataSource = dtDeneyim.DeneyimList().OrderByDescending(a => a.Id);
            Repeater3.DataBind();

            DataSet1TableAdapters.SkillsTableAdapter dtBeceri = new DataSet1TableAdapters.SkillsTableAdapter();
            Repeater4.DataSource = dtBeceri.BeceriList();
            Repeater4.DataBind();

            DataSet1TableAdapters.HobilerTableAdapter dtHobi = new DataSet1TableAdapters.HobilerTableAdapter();
            Repeater5.DataSource = dtHobi.HobiList();
            Repeater5.DataBind();

            DataSet1TableAdapters.SertifikalarTableAdapter dtSertifika = new DataSet1TableAdapters.SertifikalarTableAdapter();
            Repeater6.DataSource = dtSertifika.SertifikaList();
            Repeater6.DataBind();

            DataSet1TableAdapters.ProjelerTableAdapter dtProj = new DataSet1TableAdapters.ProjelerTableAdapter();
            Repeater7.DataSource = dtProj.ProjeList();
            Repeater7.DataBind();

            DataSet1TableAdapters.ContactTableAdapter dtIletisim = new DataSet1TableAdapters.ContactTableAdapter();
            var iletisim = dtIletisim.IletisimList().FirstOrDefault();
            if (iletisim != null)
            {
                Label22.Text = iletisim.Adres;
                Label23.Text = iletisim.Mail;
                Linkedln.NavigateUrl = iletisim.Linkedln.TrimEnd('\r', '\n', ' ');
                Github.NavigateUrl = iletisim.Github.TrimEnd('\r', '\n', ' '); ;
            }

            DataSet1TableAdapters.GorevTanimlariAdapter dtGorevler = new DataSet1TableAdapters.GorevTanimlariAdapter();
            var gorevler = dtGorevler.GorevTanimlari();

            List<string> gorevList = new List<string>();
            foreach (var item in gorevler)
            {
                gorevList.Add(item.Gorev);
            }

            string ekle = string.Join(",", gorevList);
            Session["GorevTanim"] = ekle;

        }

        protected void BtnMesajGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ContactTableAdapter iletisim = new DataSet1TableAdapters.ContactTableAdapter();
            var adminMail = iletisim.IletisimList().Select(i => i.Mail).FirstOrDefault().ToString();

            string name = TxtAdSoyad.Text.Trim();
            string mail = TxtEmail.Text.Trim();
            string konu = TxtKonu.Text.Trim();
            string mesaj = TxtMesaj.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(mail) || string.IsNullOrEmpty(konu) || string.IsNullOrEmpty(mesaj))
            {
                lblResult.Text = "Lütfen gerekli alanları doldurun.";
                lblResult.ForeColor = System.Drawing.Color.Red;

                return;
            }
            //okvw jcwf qjkz ndeq
            try
            {
                MailMessage mailGonder = new MailMessage();
                mailGonder.From = new MailAddress(adminMail);  // Senin SMTP mail adresin
                mailGonder.To.Add(adminMail);  // Kendi mailin (iletişim için)

                mailGonder.Subject = konu;
                mailGonder.Body = $"İsim: {name}\nEmail: {mail}\n\nMesaj:\n{mesaj}";

                // Kullanıcının mail adresini ReplyTo olarak ekle
                mailGonder.ReplyToList.Add(new MailAddress(mail));

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential(adminMail, "okvwjcwfqjkzndeq");
                smtp.EnableSsl = true;
                smtp.Send(mailGonder);

                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Mesajınız başarıyla gönderildi.";

                // Alanları temizle
                TxtAdSoyad.Text = "";
                TxtEmail.Text = "";
                TxtKonu.Text = "";
                TxtMesaj.Text = "";

            }
            catch (Exception ex)
            {
                lblResult.Text = "Mesaj gönderilirken hata oluştu: " + ex.Message;
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}

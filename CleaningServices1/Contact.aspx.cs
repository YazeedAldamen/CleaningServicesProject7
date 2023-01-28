using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("ashrafshwayat16@gmail.com");
            mail.From = new MailAddress($"{email.Value}");
            mail.Subject = "Contact";

            mail.Body = message.InnerText;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("ashrafshwayat16", "ycijhzwlhoovwdav");
            smtp.Send(mail);


            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);
        }
    }
}


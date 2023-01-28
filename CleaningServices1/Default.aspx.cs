using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace CleaningServices1
{
    public partial class _Default : Page
    {
        CleaningServicesEntities g = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            var ratings = from r in g.Ratings select new {
                r.Booking.ClientName,
                r.Comment,
                r.Rating1
            };
            

            mainComment.InnerHtml = string.Empty;
            foreach(var item in ratings) {
                if(item.Rating1 < 4){
                    continue;
                }
                mainComment.InnerHtml += $" <div class=\"item\">\r\n                            <div class=\"testimony-wrap py-4\">\r\n                                <div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"fa fa-quote-right\"></span></div>\r\n                                <div class=\"text\">\r\n                                    <div class=\"d-flex align-items-center mb-4\">\r\n                                        <div class=\"user-img\" style=\"background-image: url(images/pngegg.png)\"></div>\r\n                                        <div class=\"pl-3\">\r\n                                            <p class=\"name\">{item.ClientName}</p>\r\n                                            <span class=\"position\" style='color:yellow; font-size:18px' >{item.Rating1}&nbsp;<i class=\"fa-solid fa-star\"></i></span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <p class=\"mb-1\" style='overflow:hidden; width:100%; height:70px;' >{item.Comment}</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>";
            }

            var rating = from r in g.Ratings
                          select new
                          {

                              r.Rating1
                          };

            var jobsDone = g.Bookings.Where(a => a.Status == "Done").Count();

            int count = 0;
            foreach (var item in rating)
            {
                if (item.Rating1 < 3)
                {
                    continue;
                }
                count++;
            }





            happyCustomers.Attributes.Add("data-number", count.ToString());
            jobs.Attributes.Add("data-number", jobsDone.ToString());
        }
       
        protected void book_click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            Session["Phone"] = txtPhone.Text;
            Session["City"] = cityDropDown.SelectedValue;
            Response.Redirect("bookingPage.aspx");



        }

        protected void location_click(object sender, EventArgs e)
        {

            MailMessage mail = new MailMessage();
            mail.To.Add(txtName.Text.ToString().Trim());
            mail.From = new MailAddress("hopeorganization23@gmail.com");
            mail.Subject = "Reating Service";
            mail.Body = "<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n\t<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\r\n  \t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0;\">\r\n \t<meta name=\"format-detection\" content=\"telephone=no\"/>\r\n\r\n\t<!-- Responsive Mobile-First Email Template by Konstantin Savchenko, 2015.\r\n\thttps://github.com/konsav/email-templates/  -->\r\n\r\n\t<style>\r\n/* Reset styles */ \r\nbody { margin: 0; padding: 0; min-width: 100%; width: 100% !important; height: 100% !important;}\r\nbody, table, td, div, p, a { -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%; }\r\ntable, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse !important; border-spacing: 0; }\r\nimg { border: 0; line-height: 100%; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; }\r\n#outlook a { padding: 0; }\r\n.ReadMsgBody { width: 100%; } .ExternalClass { width: 100%; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\n\r\n/* Rounded corners for advanced mail clients only */ \r\n@media all and (min-width: 560px) {\r\n\t.container { border-radius: 8px; -webkit-border-radius: 8px; -moz-border-radius: 8px; -khtml-border-radius: 8px; }\r\n}\r\n\r\n/* Set color for auto links (addresses, dates, etc.) */ \r\na, a:hover {\r\n\tcolor: #FFFFFF;\r\n}\r\n.footer a, .footer a:hover {\r\n\tcolor: #828999;\r\n}\r\n\r\n \t</style>\r\n\r\n\t<!-- MESSAGE SUBJECT -->\r\n\t<title>Responsive HTML email templates</title>\r\n\r\n</head>\r\n\r\n<!-- BODY -->\r\n<!-- Set message background color (twice) and text color (twice) -->\r\n<body topmargin=\"0\" rightmargin=\"0\" bottommargin=\"0\" leftmargin=\"0\" marginwidth=\"0\" marginheight=\"0\" width=\"100%\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%; height: 100%; -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%;\r\n\tbackground-color: #2b98f0;\r\n\tcolor: #FFFFFF;\"\r\n\tbgcolor=\"#2b98f0\"\r\n\ttext=\"#FFFFFF\">\r\n\r\n<!-- SECTION / BACKGROUND -->\r\n<!-- Set message background color one again -->\r\n<table width=\"100%\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%;\" class=\"background\"><tr><td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;\"\r\n\tbgcolor=\"#2b98f0\">\r\n\r\n<!-- WRAPPER -->\r\n<!-- Set wrapper width (twice) -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"\r\n\twidth=\"500\" style=\"border-collapse: collapse; border-spacing: 0; padding: 0; width: inherit;\r\n\tmax-width: 500px;\" class=\"wrapper\">\r\n\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\r\n\t\t\tpadding-top: 20px;\r\n\t\t\tpadding-bottom: 20px;\">\r\n\r\n\t\t\t<!-- PREHEADER -->\r\n\t\t\t<!-- Set text color to background color -->\r\n\t\t\t<div style=\"display: none; visibility: hidden; overflow: hidden; opacity: 0; font-size: 1px; line-height: 1px; height: 0; max-height: 0; max-width: 0;\r\n\t\t\t\tcolor: #2D3445;\" class=\"preheader\">\r\n\t\t\t\tAAlways remember that your evaluation is important in improving our services</div>\r\n\r\n\t\t\t<!-- LOGO -->\r\n\t\t\t<!-- Image text color should be opposite to background color. Set your url, image src, alt and title. Alt text should fit the image size. Real image size should be x2. URL format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content=logo&utm_campaign={{Campaign-Name}} -->\r\n\t\t\t<a target=\"_blank\" style=\"text-decoration: none;\"\r\n\t\t\t\t><img border=\"0\" vspace=\"0\" hspace=\"0\"\r\n\t\t\t\tsrc=\"https://lh3.googleusercontent.com/h6F5vL8rIZ_QuobLf_8G8TQlT7jwPK1XylbdaCpqB5XDKPDeH6oH-CHY8iJZdz6bT3BmuDJec7BUa1aBkVK-DHHczybRLVG2z3Rzq86Y4qDC46YNkd1sgcoAoWpBPARaYYfRtnwg3crxsmWU4oLKIBNCK2Sh0YohED47mjDV-7is6ziYrfYPM08W_t5FWZuuLRStljZtIl60NCfzafvHf9Y8UnSOq1k6Amtve6UO0s5G87-zVKTLJLvpjBAgGCjzcoHlqiMn8H2fxmW3XAm9o53CLNYZo9yum_w3XrhRHITdqlUmnSOC0ZDO_qzu2EzM8Tzj9ZM5AQFvfUOnNvg5AI0rf8yewI0R1ZE2caaSctmChtq7rD3PS6UhfC7e0OfNA57P_2L5g6swrFeeP0XmVuVAaYG28zg31uC2MZUZxZWvKShIzy-gHmWPVJ63bpWB4CXNCKt1TWRulV7ECIdF5pOLfWFq_uEjjeD7NpoJyWHw-rHrA7HuA1hQ_yhwKNNfKTus77c10HyRQ5i9GWEfTevKUIAuOEyoZaskylfl7pt3S-kv8azfX85EjJ_9JSVqINziezj7OZpcAQo_ETCqqEihGSz4ufsbzgPWaQ0xd1AxZhF6HkA1MzlqTNv-CuG3rIfVgBR1BIu7KR0GtpUhdA5UCgbVBBF056kVtgL7YxO_IWUztMS80hQnHiOg5kjjBAsIs69BUSkqyzHKUsXFDSBuGYI51YXsKs6SP6bk8BEzuXcle5PipkOVhEoi6h4WvfE82MKRDqJUg6tfQyOHN4vDXHXl3ilZLLP0aq5TCo-3KTiYffFTY_cGDEK6avHG0K7AYRsTYqiXNXhBg00GDdXbR8dQo4jjN9fjPnxs8sI2wdFDU1X2KHGY1dyZ9h3k--IOPTC8obnDCfIPLRqRMXe--JXxXYWGr4L6LipFifShA9FgQ9QbbvrIo8vB32DZMgBWrgfQ0KduRG4kb_qUtQl7gBWhI51KFeFZD6i3iuKiebnNwx_bNGZ-_AyVKDxrcwr15B6U6tznOUaGfvW1tra2dDXrG8f1-7RjcBe9iP4DzBKianrXA52xC-v0dn2OEufp20J5txIvfeRRgR6lIZ6lOpv5mWQXOMiBzm_lS4-eUGpFJNYl65RMeRH7WhJQUUgbUO52baM4DDEgP-l0qw4Jmav3I8KRhI29erI=w1662-h1350-no?authuser=0\"\r\n\t\t\t\twidth=\"100\" height=\"80\"\r\n\t\t\t\talt=\"Logo\" title=\"Logo\" style=\"\r\n\t\t\t\tcolor: #FFFFFF;\r\n\t\t\t\tfont-size: 10px; margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\" /></a>\r\n\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- HERO IMAGE -->\r\n\t<!-- Image text color should be opposite to background color. Set your url, image src, alt and title. Alt text should fit the image size. Real image size should be x2 (wrapper x2). Do not set height for flexible images (including \"auto\"). URL format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content={{Ìmage-Name}}&utm_campaign={{Campaign-Name}} -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;\r\n\t\t\tpadding-top: 0px;\" class=\"hero\"><a target=\"_blank\" style=\"text-decoration: none;\"\r\n\t\t\t><img border=\"0\" vspace=\"0\" hspace=\"0\"\r\n\t\t\tsrc=\"https://img.freepik.com/free-photo/portrait-man-cleaning-his-home_23-2148112853.jpg?w=1060&t=st=1674734340~exp=1674734940~hmac=8033918437a8638cec2c94823b6358ed6aa9ca149f7367b40c43c576072b1825\"\r\n\t\t\talt=\"Please enable images to view this content\" title=\"Hero Image\"\r\n\t\t\twidth=\"340\" style=\"\r\n\t\t\twidth: 87.5%;\r\n\t\t\tmax-width: 340px;\r\n\t\t\tcolor: #FFFFFF; font-size: 13px; margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\"/></a></td>\r\n\t</tr>\r\n\r\n\t<!-- SUPHEADER -->\r\n\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\") -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 14px; font-weight: 400; line-height: 150%; letter-spacing: 2px;\r\n\t\t\tpadding-top: 27px;\r\n\t\t\tpadding-bottom: 0;\r\n\t\t\tcolor: #FFFFFF;\r\n\t\t\tfont-family: sans-serif;\" class=\"supheader\">\r\n\t\t\t\tBecome a success partner\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- HEADER -->\r\n\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\") -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;  padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 24px; font-weight: bold; line-height: 130%;\r\n\t\t\tpadding-top: 5px;\r\n\t\t\tcolor: #FFFFFF;\r\n\t\t\tfont-family: sans-serif;\" class=\"header\">\r\n\t\t\t\tRating the cleaning service you got\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- PARAGRAPH -->\r\n\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\"). Duplicate all text styles in links, including line-height -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;\r\n\t\t\tpadding-top: 15px; \r\n\t\t\tcolor: #FFFFFF;\r\n\t\t\tfont-family: sans-serif;\" class=\"paragraph\">\r\n\t\t\t\tBy clicking on the evaluation button, you will be taken to the service evaluation page that you obtained. Please evaluate the service transparently. This will help to increase the quality of service\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- BUTTON -->\r\n\t<!-- Set button background color at TD, link/text color at A and TD, font family (\"sans-serif\" or \"Georgia, serif\") at TD. For verification codes add \"letter-spacing: 5px;\". Link format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content={{Button-Name}}&utm_campaign={{Campaign-Name}} -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\r\n\t\t\tpadding-top: 25px;\r\n\t\t\tpadding-bottom: 5px;\" class=\"button\"><a\r\n\t\t\thref=\"https://github.com/konsav/email-templates/\" target=\"_blank\" style=\"text-decoration: underline;\">\r\n\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"max-width: 240px; min-width: 120px; border-collapse: collapse; border-spacing: 0; padding: 0;\"><tr><td align=\"center\" valign=\"middle\" style=\"padding: 12px 24px; margin: 0; text-decoration: underline; border-collapse: collapse; border-spacing: 0; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -khtml-border-radius: 4px;\"\r\n\t\t\t\t\tbgcolor=\"#E9703E\"><a target=\"_blank\" style=\"text-decoration: underline;\r\n\t\t\t\t\tcolor: #FFFFFF; font-family: sans-serif; font-size: 17px; font-weight: 400; line-height: 120%;\"\r\n\t\t\t\t\thref=\"https://localhost:44381/ratingPage\">\r\n\t\t\t\t\t  Rate now\r\n\t\t\t\t\t</a>\r\n\t\t\t</td></tr></table></a>\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- LINE -->\r\n\t<!-- Set line color -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\r\n\t\t\tpadding-top: 30px;\" class=\"line\"><hr\r\n\t\t\tcolor=\"#565F73\" align=\"center\" width=\"100%\" size=\"1\" noshade style=\"margin: 0; padding: 0;\" />\r\n\t\t</td>\r\n\t</tr>\r\n\r\n\t<!-- FOOTER -->\r\n\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\"). Duplicate all text styles in links, including line-height -->\r\n\t<tr>\r\n\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 13px; font-weight: 400; line-height: 150%;\r\n\t\t\tpadding-top: 10px;\r\n\t\t\tpadding-bottom: 20px;\r\n\t\t\tcolor: white;\r\n\t\t\tfont-family: sans-serif;\" class=\"footer\">\r\n\r\n\t\t\t\tThis email template was sent to&nbsp;you becouse we&nbsp;want to&nbsp;make the&nbsp;world a&nbsp;better place. \r\n\r\n\t\t\t\t<!-- ANALYTICS -->\r\n\t\t\t\t<!-- http://www.google-analytics.com/collect?v=1&tid={{UA-Tracking-ID}}&cid={{Client-ID}}&t=event&ec=email&ea=open&cs={{Campaign-Source}}&cm=email&cn={{Campaign-Name}} -->\r\n\t\t\t\t<img width=\"1\" height=\"1\" border=\"0\" vspace=\"0\" hspace=\"0\" style=\"margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\"\r\n\t\t\t\tsrc=\"https://raw.githubusercontent.com/konsav/email-templates/master/images/tracker.png\" />\r\n\r\n\t\t</td>\r\n\t</tr>\r\n\r\n<!-- End of WRAPPER -->\r\n</table>\r\n\r\n<!-- End of SECTION / BACKGROUND -->\r\n</td></tr></table>\r\n\r\n</body>\r\n</html>";
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "hcbjhizhsclsqkfl");
            smtp.Send(mail);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookingPage.aspx");
        }
    }
}

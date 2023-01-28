using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.scss
{
    public partial class WebForm1 : System.Web.UI.Page
    {   
        CleaningServicesEntities g = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var ratings = from r in g.Ratings
                          select new
                          {
                              r.Booking.ClientName,
                              r.Comment,
                              r.Rating1
                          };

            testmonials.InnerHtml = string.Empty;

            foreach (var item in ratings)
            {

                testmonials.InnerHtml += $" <div class=\"col-md-4 mb-4 mb-md-4\" >\r\n        <div class=\"card\">\r\n          <div class=\"card-body py-4 mt-2\">\r\n            <div class=\"d-flex justify-content-center mb-4\">\r\n              <img src=\"images/pngegg.png\"                class=\"rounded-circle shadow-1-strong\" width=\"100\" height=\"100\" />\r\n            </div>\r\n            <h5 class=\"font-weight-bold\">{item.ClientName}</h5>\r\n     <span class=\"position\" style='color:black; font-size:18px' >{item.Rating1}&nbsp;<i class=\"fa-solid fa-star\"></i></span>\r\n                              <p class=\"mb-2\">\r\n              <i class=\"fas fa-quote-left pe-2\"></i> {item.Comment}</p>\r\n          </div>\r\n        </div>\r\n      </div>";



            }
        }
    }
            }
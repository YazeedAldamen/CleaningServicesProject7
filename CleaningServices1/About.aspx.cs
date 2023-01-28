using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class About : Page
    {
    CleaningServicesEntities g = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var ratings = from r in g.Ratings
                          select new
                          {

                              r.Rating1
                          };

            var jobsDone = g.Bookings.Where(a=>a.Status == "Done").Count();

            int count = 0;
            foreach (var item in ratings)
            {
                if (item.Rating1 < 3)
                {
                    continue;
                }
                count++;
            }


             


            happyCustomers.Attributes.Add("data-number",count.ToString());
            jobs.Attributes.Add("data-number", jobsDone.ToString());
        }
    }
}
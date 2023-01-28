using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class ratingPage : System.Web.UI.Page
    {   CleaningServicesEntities g = new CleaningServicesEntities();
        Rating rating = new Rating();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["bookID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else{
                int bookID = int.Parse(Session["bookID"].ToString());

                int[] bookingID = g.Ratings.Select(x => x.BookingID).ToArray();
                foreach (int item in bookingID)
                {
                    if (item == bookID)
                    {

                        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "exist();", true);

                    }

                }
            }
            

            //string bookID = Request.QueryString["id"];
           double count = g.Ratings.Select(a => a.Rating1).Count();
            double sum = g.Ratings.Select(a => a.Rating1).Sum();
            double rating =Math.Round(sum / count,1) ;
            rate.InnerHtml = rating.ToString() ;
        }

        protected void btnRate_Click(object sender, EventArgs e)
        {
            //string bookID = Request.QueryString["id"];
            int bookID = int.Parse(Session["bookID"].ToString());

            
            if (star5.Checked)
            {
                rating.Comment = txtComment.Text;
                rating.Rating1 = Convert.ToInt32(star5.Value);
                rating.BookingID = bookID;
                g.Ratings.Add(rating);
                g.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);

            }
            else if (star4.Checked)
            {
                rating.Comment = txtComment.Text;
                rating.Rating1 = Convert.ToInt32(star4.Value);
                rating.BookingID = bookID;

                g.Ratings.Add(rating);
                g.SaveChanges();

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);

            }
            else if (star3.Checked)
            {
                rating.Comment = txtComment.Text;
                rating.Rating1 = Convert.ToInt32(star3.Value);
                rating.BookingID = bookID;

                g.Ratings.Add(rating);
                g.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);


            }
            else if (star2.Checked)
            {
                rating.Comment = txtComment.Text;
                rating.Rating1 = Convert.ToInt32(star2.Value);
                rating.BookingID = bookID;

                g.Ratings.Add(rating);
                g.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);


            }
            else if (star1.Checked)
            {
                rating.Comment = txtComment.Text;
                rating.Rating1 = Convert.ToInt32(star1.Value);
                rating.BookingID = bookID;

                g.Ratings.Add(rating);
                g.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "wass();", true);
            }

        }
    }
}
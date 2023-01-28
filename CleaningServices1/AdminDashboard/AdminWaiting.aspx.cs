using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class AdminWaiting : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        { 
            Session.Remove("lol");
            string name = txtSearch.Text;
            var search = (from cc in CS.Bookings
                          where cc.Status == "waiting"
                          select cc);
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
            if (!IsPostBack)
            {
                req.Text = CS.Bookings.Where(a => a.Status == "waiting").Select(a => a.BookingID).Count().ToString();
                pro.Text = CS.Bookings.Where(a => a.Status == "progress").Select(a => a.BookingID).Count().ToString();
                don.Text = CS.Bookings.Where(a => a.Status == "Done").Select(a => a.BookingID).Count().ToString();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtSearch.Text;
            var search = (from cc in CS.Bookings
                          where (cc.ClientName.ToString().Contains(name) && cc.Status == "waiting" ||
                          cc.ClientPhone.ToString().Contains(name) && cc.Status == "waiting" ||

                          cc.Status.Contains(name) && cc.Status == "waiting" ||
                             cc.City.CityName.Contains(name) && cc.Status == "waiting" ||
                          cc.ClientEmail.Contains(name)) && cc.Status == "waiting"
                          select cc);
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
        }
    }
}
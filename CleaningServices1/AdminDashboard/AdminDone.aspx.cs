using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class AdminDone : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string name = txtSearch.Text;
                var search = (from cc in CS.Bookings
                              where (cc.Status == "Done")
                              select new { cc.Employee.EmployeeName, cc.ClientPhone, cc.ClientName, cc.EmployeeID, cc.BookingID, cc.Address, cc.Status, cc.ClientEmail, cc.CityID, cc.City.CityName, cc.Date });
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();

                req.Text = CS.Bookings.Where(a=>a.Status=="waiting").Select(a=>a.BookingID).Count().ToString();
                pro.Text = CS.Bookings.Where(a => a.Status == "progress").Select(a => a.BookingID).Count().ToString();
                don.Text = CS.Bookings.Where(a => a.Status == "Done").Select(a => a.BookingID).Count().ToString();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string name = txtSearch.Text;
            var search = (from cc in CS.Bookings
                          where (cc.ClientName.ToString().Contains(name) && cc.Status == "Done" ||
                          cc.ClientPhone.ToString().Contains(name) ||
                          cc.BookingID.ToString().Contains(name) ||
                          cc.Status.Contains(name) && cc.Status == "Done" ||
                             cc.City.CityName.Contains(name) && cc.Status == "Done" ||
                          cc.ClientEmail.Contains(name) || cc.Employee.EmployeeName.Contains(name)) && cc.Status == "Done"
                          select new { cc.Employee.EmployeeName, cc.ClientPhone, cc.ClientName, cc.EmployeeID, cc.BookingID, cc.Address, cc.Status, cc.ClientEmail, cc.CityID, cc.City.CityName, cc.Date });
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
        }
    }
}
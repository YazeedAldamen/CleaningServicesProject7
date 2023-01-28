using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        CleaningServicesEntities obj = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var y = Context.User.Identity.GetUserId();

            string AspEmail = obj.AspNetUsers.FirstOrDefault(a => a.Id == y).Email;

            int EmpId = obj.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeID;



            var x = from t1 in obj.Bookings
                    where t1.Status == "Done" && t1.EmployeeID.ToString() == EmpId.ToString()
                    select new { t1.BookingID, t1.ClientName, t1.ClientPhone, t1.Address, t1.Status, t1.ClientEmail,t1.CityID, t1.City.CityName };


            GridView1.DataSource = x.ToList();
            GridView1.DataBind();
        }

       
    }
}

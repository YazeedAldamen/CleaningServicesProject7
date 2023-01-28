using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class Profile : System.Web.UI.Page
    {
        CleaningServicesEntities mo = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var y = Context.User.Identity.GetUserId();
            
            string AspEmail = mo.AspNetUsers.FirstOrDefault(a => a.Id == y).Email;

            int EmpId = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeID;

            string Name = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeName;
            string Email = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeEmail;
            decimal Phone = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeePhone;



            //Employee em = new Employee();

            hName.InnerHtml = Name;


            txtID.InnerHtml = EmpId.ToString();
            txtName.InnerHtml = Name;
            txtEmail.InnerHtml = Email;
            txtPhone.InnerHtml = Phone.ToString();

            int task = (from x in mo.Bookings where x.Status == "Done" && x.EmployeeID == EmpId select x).Count();
            txtTotal.InnerHtml = task.ToString();

        }
    }
}

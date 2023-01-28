using CleaningServices1.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class EditProfile : System.Web.UI.Page
    {
        CleaningServicesEntities mo = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var y = Context.User.Identity.GetUserId();

                string AspEmail = mo.AspNetUsers.FirstOrDefault(a => a.Id == y).Email;

                int EmpId = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeID;

                string Name = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeName;
                string Email = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeEmail;
                decimal Phone = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeePhone;

                int task = (from x in mo.Bookings where x.Status == "Done" && x.EmployeeID == EmpId select x).Count();
                txtTotal.InnerHtml = task.ToString();

                txtID.InnerHtml = EmpId.ToString();

                TextBox1.Text = Name;
                TextBox2.Text = Email;
                TextBox3.Text = Phone.ToString();

            }
        }




        protected void Save_click(object sender, EventArgs e)
        {
            var y = Context.User.Identity.GetUserId();

            string AspEmail = mo.AspNetUsers.FirstOrDefault(a => a.Id == y).Email;

            int EmpId = mo.Employees.FirstOrDefault(a => a.EmployeeEmail == AspEmail).EmployeeID;


            

            var change = mo.Employees.Find(EmpId);

            var x = Convert.ToInt32(TextBox3.Text);
            change.EmployeeName = TextBox1.Text;
            change.EmployeeEmail = TextBox2.Text;
            change.EmployeePhone = x;
            //change.Password = txtPassword.Text;
            

            var aspChange = mo.AspNetUsers.Find(y);

            aspChange.Email = TextBox2.Text;
            aspChange.UserName= TextBox2.Text;
            aspChange.PhoneNumber = x.ToString();

            mo.SaveChanges();
           
            


            Response.Redirect("Profile.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}
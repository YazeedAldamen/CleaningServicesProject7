using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
   
    public partial class conf : System.Web.UI.Page
    {
        CleaningServicesEntities db = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Employee c = new Employee();
            //var lc = from b in db.Employees
            //            where (c.Status == "Active".ToString())
            //            select new { c.EmployeeID, c.EmployeeName, c.Status };
            // Label7.Text = Convert.ToInt32( c.EmployeeID.() ) ;   
            Label7.Text = db.Employees.Where(zz=> zz.Status == "Active").Count().ToString();

            if (!IsPostBack)
            {
                Employee em = new Employee();
                var query = from b in db.Employees
                            where (b.Status == "free".ToString())
                            select new { b.EmployeeID, b.EmployeeName, b.Status };

                DropDownList1.DataSource = query.ToList();
                DropDownList1.DataValueField = "EmployeeID";
                DropDownList1.DataTextField = "EmployeeName";
                DropDownList1.DataBind();
            }

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("AdminWaiting.aspx");
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var req = db.Bookings.Find(id);
                Label2.Text = req.ClientName;
                Label3.Text = req.ClientPhone.ToString();
                Label4.Text = req.  ClientEmail.ToString();
                Label5.Text= req.Address;
                Label6.Text = req.City.CityName.  ToString();
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( DropDownList1.SelectedValue);
            int idbook = Convert.ToInt32(Request.QueryString["id"]);
            Employee employee= db.Employees.Find(id);
            var em= db.Employees.Find(id);
            Booking up = db.Bookings.Find(idbook);

            up.Status = "Active";
            em.Status = "Active";
           
            //db.Bookings.AddOrUpdate(up);
            db.SaveChanges();

           

        }
    }
}
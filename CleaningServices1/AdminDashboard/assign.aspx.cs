using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CleaningServicesEntities db = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["lol"] != null)
            {
                try { 
                int l = Convert.ToInt32(Session["lol"]);
                var req = db.Bookings.Find(l);
                Label1.Text = req.ClientName;
                Label2.Text = req.ClientPhone.ToString();
                Label3.Text = req.City.CityName.ToString();
                Label4.Text = req.ClientEmail.ToString();
                //Label7.Text= req.Employee.EmployeeName.ToString();

                int em = Convert.ToInt32(Request.QueryString["em"]);
                var en = db.Employees.Find(em);
               
                Label7.Text = en.EmployeeName.ToString();
                }
                catch(Exception xx)
                {
                    Label5.Text = "Please Choose Employee Name";
                }

            }

            else
            {

                if (Request.QueryString["id"] == null)
                {

                    Response.Redirect("AdminWaiting.aspx");
                }
                else
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);

                    var x = Request.QueryString["id"];
                    var req = db.Bookings.Find(id);
                    Label1.Text = req.ClientName;
                    Label2.Text = req.ClientPhone.ToString();
                    Label3.Text = req.City.CityName.ToString();
                    Label4.Text = req.ClientEmail.ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label6.Text = Request.QueryString["id"];
            Session["lol"] = Request.QueryString["id"];
            //Label5.Text= Session["lol"].ToString();
            //string name = txtSearch.Text;
            Employee em = new Employee();
            var query = from b in db.Employees
                        where (b.Status == "Active".ToString())
                        select new {b.EmployeeName ,b.EmployeeEmail,b.EmployeePhone,b.EmployeeID,b.Gender,b.Status};
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
          
            emmm.InnerHtml = "Employee Table";
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

          
            
                if (Session["lol"] != null && Request.QueryString["em"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["em"]);
                    int idbook = Convert.ToInt32(Session["lol"]);

                    Employee employee = db.Employees.Find(id);
                    var em = db.Employees.Find(id);
                    Booking up = db.Bookings.Find(idbook);

                    up.Status = "progress";
                    up.EmployeeID = id;
                    em.Status = "Busy";

                    //db.Bookings.AddOrUpdate(up);
                    db.SaveChanges();
                    Session.Abandon();
                    Session.Remove("lol");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                }
            

            

            //if (Request.QueryString["em"] == null)
            //{

            //    //Response.Redirect("AdminWaiting.aspx");
            //}
            //else
            //{
             
            //}
        }
    }
}
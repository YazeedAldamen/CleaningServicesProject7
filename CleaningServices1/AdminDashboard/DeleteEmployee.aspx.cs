using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {

                Response.Redirect("Employees.aspx");
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (!IsPostBack)
                {
                    var emp = CS.Employees.Where(s => s.EmployeeID == id).ToList();

                    var bookP = from BP in CS.Bookings
                                where (BP.EmployeeID == id && BP.Status == "progress")
                                select (BP);

                    var bookD = from BD in CS.Bookings
                                where (BD.EmployeeID == id && BD.Status == "Done")
                                select (BD);

                    lblname.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeeName;
                    lblposi.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Roles;
                    lblPosition.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Roles;
                    lblEmail.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeeEmail;
                    lblPhone.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeePhone.ToString();
                    lblStatus.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Status;
                    string ss = CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Status;
                    if (ss == "Active")
                    {
                        lblStatus.Style["color"] = "Green";
                    }
                    else
                    {
                        lblStatus.Style["color"] = "Red";
                    }

                    string gend = CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Gender;
                    if (gend == "Female")
                    {
                        Image1.ImageUrl = "~/AdminDashboard/IMG/user.png";
                    }
                    else
                    {
                        Image1.ImageUrl = "~/AdminDashboard/IMG/avatar.png";

                    }


                    GridView1.DataSource = bookD.ToList();
                    GridView1.DataBind();

                    GridView2.DataSource = bookP.ToList();
                    GridView2.DataBind();

                }
            }
        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            string name = txtSearch.Text;
            //int id;

            var search = (from cc in CS.Bookings
                          where (cc.BookingID.ToString().Contains(name) ||
                          cc.ClientPhone.ToString().Contains(name) ||
                          cc.ClientName.Contains(name) ||
                           cc.Address.Contains(name) ||
                          cc.ClientEmail.Contains(name))
                          select cc);
            GridView3.DataSource = search.ToList();
            GridView3.DataBind();
        }

        protected void back_Click(object sender, EventArgs e)
        {
            int id1 = Convert.ToInt32(Request.QueryString["id"]);
            CleaningServices1.Booking[] ph = (from f in CS.Bookings where f.EmployeeID == id1 select (f)).ToArray();

            for (var i = 0; i < ph.Length; i++)
            {
                string boo = CS.Bookings.FirstOrDefault(a => a.EmployeeID == id1).Status;
                Booking book1 = (from c in CS.Bookings
                                 where c.EmployeeID == id1
                                 select c).FirstOrDefault();
                if (boo == "progress" || boo == "waiting")
                {
                    book1.Status = "waiting";
                    book1.ClientPhone = ph[i].ClientPhone;
                    book1.ClientEmail = ph[i].ClientEmail;
                    book1.ClientName = ph[i].ClientName;
                    book1.Address = ph[i].Address;
                    book1.CityID = ph[i].CityID;
                    book1.Date = ph[i].Date;
                    book1.EmployeeID = null;
                }
                else
                {
                    book1.Status = ph[i].Status;
                    book1.ClientPhone = ph[i].ClientPhone;
                    book1.ClientEmail = ph[i].ClientEmail;
                    book1.ClientName = ph[i].ClientName;
                    book1.Address = ph[i].Address;
                    book1.CityID = ph[i].CityID;
                    book1.Date = ph[i].Date;
                    book1.EmployeeID = null;
                }
                CS.SaveChanges();
            }

            ////foreach (var x in ph) {
            ////    if (book.Status == "progress" || book.Status == "waiting")
            ////    {
            ////        book.Status = "waiting" ;
            ////        book.ClientPhone = x.ClientPhone;
            ////        book.ClientEmail = x.ClientEmail;
            ////        book.ClientName = x.ClientName;
            ////        book.Address = x.Address;
            ////        book.CityID = x.CityID;
            ////        book.Date = x.Date;
            ////    }
            ////    else
            ////    {
            ////        book.Status =x.Status;
            ////        book.ClientPhone = x.ClientPhone;
            ////        book.ClientEmail = x.ClientEmail;
            ////        book.ClientName = x.ClientName;
            ////        book.Address = x.Address;
            ////        book.CityID = x.CityID;
            ////        book.Date = x.Date;
            ////    }
            ////    CS.SaveChanges();
            ////    //CS.Bookings.Add(book);
            ////}

            ////ScriptManager.RegisterStartupScript(this, GetType(), "Popup","message();", true);
            ////Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Hello, World!');", true);
            int id = Convert.ToInt32(Request.QueryString["id"]);

            Employee employee= (from c in CS.Employees
                                where c.EmployeeID == id1
                                select c).FirstOrDefault(); 
            
            var cust = CS.Employees.Single(x => x.EmployeeID == id);
            CS.Employees.Remove(cust);

            var aspUserDelete = CS.AspNetUsers.Single(x => x.Email == employee.EmployeeEmail);
            CS.AspNetUsers.Remove(aspUserDelete);

            CS.SaveChanges();
            Response.Redirect("Employees.aspx");

        }


    }
    }


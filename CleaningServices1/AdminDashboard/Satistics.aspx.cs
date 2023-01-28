using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class Satistics : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
            int Employee1 = CS.Employees.Select(a => a.EmployeeID).Count();
            int Client1 = CS.Bookings.Select(a => a.ClientEmail).Distinct().Count(); 
            int Book = CS.Bookings.Select(a => a.BookingID).Count();
            int revenue =Convert.ToInt32( CS.Services.Select(a => a.Price).Sum());
            int expene1 = revenue * 40 / 100;
            int profit = revenue - expene1;
            Revenue.Text = revenue.ToString()+" JD";
            Expense.Text = expene1.ToString() + " JD";
            Profit.Text = profit.ToString() + " JD";
            Employees.Text = Employee1.ToString();
            Clients.Text = Client1.ToString();
            Bookings.Text = Book.ToString();


                int wat = CS.Bookings.Where(x=>x.Status=="waiting").Select(a => a.BookingID).Count();
                int pro = CS.Bookings.Where(x => x.Status == "progress").Select(a => a.BookingID).Count();
                int don = CS.Bookings.Where(x => x.Status == "done").Select(a => a.BookingID).Count();
                var chart = "";
                chart += "<script>";
                chart += $"chartData=[{wat},{pro},{don}]";
                chart += " </script>";
                book.Text = chart;
                //var piec1 = "";
                //piec1 += "<script>";
                //piec1 += $"piechart1=[{pro},{don},{wat}]";
                //piec1 += " </script>";
                //Pirch1.Text = piec1;

                var piec = "";
                int c = 0, bath = 0, bed = 0, pool = 0;
                var ser = CS.Services.Select(a => a.ServiceName).ToList();

                foreach(var cont in ser)
                {
                    if (cont.Contains("Carpets")) bath++;
                    if (cont.Contains("Bedroom")) bed++;
                    if (cont.Contains("Car")) c++;
                    if (cont.Contains("Pool")) pool++;
                }

                piec += "<script>";
                piec += $"piechart=[{bath},{bed},{c},{pool}]";
                piec += " </script>";
                Pirch.Text = piec;
            }
        }
    }
}
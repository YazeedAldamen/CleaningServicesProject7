using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class EmployeeDetails : System.Web.UI.Page
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

                    string gend = CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Gender;
                    if (gend == "Female")
                    {
                        Image1.ImageUrl = "~/AdminDashboard/IMG/user.png";
                    }
                    else
                    {
                        Image1.ImageUrl = "~/AdminDashboard/IMG/avatar.png";

                    }

                    lblname.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeeName;
                    lblposi.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Roles;
                    lblPosition.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.Roles;
                    lblEmail.InnerHtml += CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeeEmail;
                    lblPhone.InnerHtml += "0" + CS.Employees.FirstOrDefault(a => a.EmployeeID == id)?.EmployeePhone.ToString();
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




                    GridView1.DataSource = bookD.ToList();
                    GridView1.DataBind();

                    GridView2.DataSource = bookP.ToList();
                    GridView2.DataBind();
                    //Image1

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
                           cc.Address.Contains(name) || cc.Status.Contains(name) ||
                          cc.ClientEmail.Contains(name))
                          select cc);
            GridView3.DataSource = search.ToList();
            GridView3.DataBind();
        }
        //protected void btnSearch_Click2(object sender, EventArgs e)
        //{
        //    string name = txtSearch2.Text;
        //    //int id;

        //    var search = (from cc in CS.Bookings
        //                  where (cc.BookingID.ToString().Contains(name) ||
        //                  cc.ClientPhone.ToString().Contains(name) ||
        //                  cc.ClientName.Contains(name) ||
        //                   cc.Address.Contains(name) ||
        //                  cc.ClientEmail.Contains(name))
        //                  select cc);
        //    GridView2.DataSource = search.ToList();
        //    GridView2.DataBind();
        //}
    }
}
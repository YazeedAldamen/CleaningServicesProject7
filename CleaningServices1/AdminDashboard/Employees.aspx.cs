using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class Employees : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
            var ww = from c in CS.Employees
                     where c.Roles == "Employee"
                     select (c);

            GridView1.DataSource = ww.ToList();
            GridView1.DataBind();


                active.Text= CS.Employees.Where(s=>s.Status=="Active").Count().ToString();
                busy.Text = CS.Employees.Where(s => s.Status == "Busy").Count().ToString();

            }
        }

        

      
        protected void btnSearch_Click1(object sender, EventArgs e)
        {        //txtSearch                       where cc.CustomerID.ToString().Contains(searchText) || cc.CustomerName.Contains(searchText)

            string name = txtSearch.Text;
            //int id;

            var search = (from cc in CS.Employees
                          where (cc.EmployeeID.ToString().Contains(name) ||
                          cc.EmployeePhone.ToString().Contains(name) || 
                          cc.EmployeeName.Contains(name)||
                          cc.Status.Contains(name) ||
                          cc.EmployeeEmail.Contains(name))
                          select cc);
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
            //if (int.TryParse(txtSearch.Text, out id))
            //{
            //    var search = (from m in CS.Employees
            //                  where (m.EmployeeID == id || m.EmployeePhone == id)
            //                  select m);
            //    GridView1.DataSource = search.ToList();
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    var search = (from m in CS.Employees
            //                  where (m.EmployeeName== name || m.EmployeeEmail == name)
            //                  select m);
            //    GridView1.DataSource = search.ToList();
            //    GridView1.DataBind();
            //}





        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = DropDownList1.SelectedValue;
            //int id;
            if(name == "All") {
                var search1 = (from cc in CS.Employees
                                            select cc);
            GridView1.DataSource = search1.ToList();
            GridView1.DataBind();
        }
            else { 
            var search = (from cc in CS.Employees
                          where (
                          cc.Status.Contains(name))
                        
                          select cc);
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
            }
        }
    }
}
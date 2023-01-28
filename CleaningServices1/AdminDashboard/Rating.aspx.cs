using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1.AdminDashboard
{
    public partial class Rating : System.Web.UI.Page
    {
        CleaningServicesEntities CS = new CleaningServicesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var ww = from c in CS.Ratings
                         select (c);

                GridView1.DataSource = ww.ToList();
                GridView1.DataBind();
                num.Text ="# Rating : "+ CS.Ratings.Select(a => a.RatingID).Count().ToString();


            }
        }




        protected void btnSearch_Click1(object sender, EventArgs e)
        {        //txtSearch                       where cc.CustomerID.ToString().Contains(searchText) || cc.CustomerName.Contains(searchText)

            string name = txtSearch.Text;
            //int id;

            var search = (from cc in CS.Ratings
                          where (cc.RatingID.ToString().Contains(name) ||
                          cc.Rating1.ToString().Contains(name) ||
                          cc.Comment.Contains(name) ||
                          cc.BookingID.ToString().Contains(name))
                          select cc);
            GridView1.DataSource = search.ToList();
            GridView1.DataBind();
        
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = DropDownList1.SelectedValue;
            //int id;
            if (name == "All")
            {
                var search1 = (from cc in CS.Ratings
                               select cc);
                GridView1.DataSource = search1.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Select(a => a.RatingID).Count().ToString();
            }
            else if(name == "5")
            {
                var search = (from cc in CS.Ratings
                              where (
                              cc.Rating1.ToString().Contains(name))
                              select cc);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Where(a=>a.Rating1==5).Select(a => a.RatingID).Count().ToString();
            }
            else if (name == "4")
            {
                var search = (from cc in CS.Ratings
                              where (
                              cc.Rating1.ToString().Contains(name))
                              select cc);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Where(a => a.Rating1 == 4).Select(a => a.RatingID).Count().ToString();
            }
            else if (name == "3")
            {
                var search = (from cc in CS.Ratings
                              where (
                              cc.Rating1.ToString().Contains(name))
                              select cc);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Where(a => a.Rating1 == 3).Select(a => a.RatingID).Count().ToString();
            }
            else if (name == "2")
            {
                var search = (from cc in CS.Ratings
                              where (
                              cc.Rating1.ToString().Contains(name))
                              select cc);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Where(a => a.Rating1 == 2).Select(a => a.RatingID).Count().ToString();
            }
            else if (name == "1")
            {
                var search = (from cc in CS.Ratings
                              where (
                              cc.Rating1.ToString().Contains(name))
                              select cc);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
                num.Text = "# Rating : " + CS.Ratings.Where(a => a.Rating1 == 1).Select(a => a.RatingID).Count().ToString();
            }
//# ratings
           
        }
    }
}
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServices1
{
    public partial class bookingPage2 : System.Web.UI.Page
    {
        CleaningServicesEntities g = new CleaningServicesEntities();
        int total = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                {
                    txtName.Text = Session["Name"].ToString();
                    txtPhone.Text = Session["Phone"].ToString();
                    cityDropdown.SelectedValue = Session["City"].ToString();
                    
                }
            }


            //string r = g.Bookings.FirstOrDefault(a => a.BookingID == 35).Date.ToString();
            //Response.Write(r);
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {

            CleaningServicesEntities db = new CleaningServicesEntities();
            Booking booking = new Booking();
            booking.ClientName = txtName.Text;
            booking.ClientPhone = int.Parse(txtPhone.Text);
            booking.Address = txtAddress.Text;

            booking.ClientEmail = txtEmail.Text;
            booking.CityID = int.Parse(cityDropdown.SelectedValue);
            booking.Status = "waiting";
            booking.Date = Convert.ToDateTime(txtCalender.Value);
            int x = db.Bookings.Select(a => a.BookingID).Max();

            int id;
            bool flag = false;


            if (x == 0)
            {
                id = 1;
                booking.BookingID = id;
            }
            else
            {
                id = x + 1;
                booking.BookingID = id;
            }
            db.Bookings.Add(booking);
            db.SaveChanges();
            Service service = new Service();
            service.BookingID = id;
            if (checkboxBedrooms.Checked)
            {
                flag = true;
                service.ServiceName = "Bedroom";
                service.Quantity = int.Parse(txtboxBedrooms.Text);
                service.Price = int.Parse(txtboxBedrooms.Text) * 25;
                service.BookingID = id;

            }

            if (checkboxBathrooms.Checked)
            {
                flag = true;
                service.ServiceName += " Bathroom";
                service.Quantity += int.Parse(txtboxBathrooms.Text);
                service.Price += int.Parse(txtboxBathrooms.Text) * 20;
                service.BookingID = id;
            }
            if (checkboxCars.Checked)
            {
                flag = true;
                service.ServiceName += " Car";
                service.Quantity += int.Parse(txtboxCars.Text);
                service.Price += int.Parse(txtboxCars.Text) * 15;
                service.BookingID = id;
            }
            if (checkboxPools.Checked)
            {
                flag = true;
                service.ServiceName += " Pool";
                service.Quantity += int.Parse(txtboxPools.Text);
                service.Price += int.Parse(txtboxPools.Text) * 50;
                service.BookingID = id;
            }
            if (flag == false)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "wass();", true);
            }
            else
            {
                db.Services.Add(service);
                db.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "pass();", true);
            }






        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxBedrooms.Checked)
            {
                txtboxBedrooms.Enabled = true;
                lblBedrooms.Text = txtboxBedrooms.Text + " Bedrooms";


            }
            else
            {
                txtboxBedrooms.Enabled = false;
                lblBedrooms.Text = " Bedrooms";


            }
        }

        protected void checkboxBathrooms_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxBathrooms.Checked)
            {
                txtboxBathrooms.Enabled = true;
                lblBathrooms.Text = txtboxBathrooms.Text + " Bathrooms";

            }
            else
            {
                txtboxBathrooms.Enabled = false;
                lblBathrooms.Text = " Bathrooms";

            }

        }
        protected void checkboxCars_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxCars.Checked)
            {
                txtboxCars.Enabled = true;
                lblCars.Text = txtboxCars.Text + " Cars";

            }
            else
            {

                txtboxCars.Enabled = false;
                lblCars.Text = " Cars";

            }
        }
        protected void checkboxPools_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxPools.Checked)
            {
                txtboxPools.Enabled = true;
                lblPools.Text = txtboxPools.Text + " Pools";

            }
            else
            {
                txtboxPools.Enabled = false;
                lblPools.Text = " Pools";

            }
        }
        protected void txtboxBedrooms_TextChanged(object sender, EventArgs e)
        {
            lblBedrooms.Text = txtboxBedrooms.Text + " Bedrooms";
            total = int.Parse(txtboxBedrooms.Text) * 25 + int.Parse(txtboxBathrooms.Text) * 20 + int.Parse(txtboxCars.Text) * 15 + int.Parse(txtboxPools.Text) * 50;
            lblSubTotal.Text = "$" + total.ToString();

        }

        protected void txtboxBathrooms_TextChanged(object sender, EventArgs e)
        {
            lblBathrooms.Text = txtboxBathrooms.Text + " Bathrooms";
            total = int.Parse(txtboxBedrooms.Text) * 25 + int.Parse(txtboxBathrooms.Text) * 20 + int.Parse(txtboxCars.Text) * 15 + int.Parse(txtboxPools.Text) * 50;
            lblSubTotal.Text = "$" + total.ToString();

        }

        protected void txtboxCars_TextChanged(object sender, EventArgs e)
        {
            lblCars.Text = txtboxCars.Text + " Cars";
            total = int.Parse(txtboxBedrooms.Text) * 25 + int.Parse(txtboxBathrooms.Text) * 20 + int.Parse(txtboxCars.Text)*15 + int.Parse(txtboxPools.Text) * 50 ;
            lblSubTotal.Text = "$" + total.ToString();

        }

        protected void txtboxPools_TextChanged(object sender, EventArgs e)
        {
            lblPools.Text = txtboxPools.Text + " Pools";
            total = int.Parse(txtboxBedrooms.Text) * 25 + int.Parse(txtboxBathrooms.Text) * 20 + int.Parse(txtboxCars.Text) * 15 + int.Parse(txtboxPools.Text) * 50;
            lblSubTotal.Text = "$" + total.ToString();
        }
    }
}

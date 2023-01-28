using CleaningServices1.Models;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;
using System.Security.Policy;
using System.Net.Mail;

namespace CleaningServices1.AdminDashboard
{

    public partial class AddEmp : System.Web.UI.Page
    {

        CleaningServicesEntities cu = new CleaningServicesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
           
            var user = new ApplicationUser() { UserName = txtEmail.Text, Email = txtEmail.Text, PhoneNumber = txtphone.Text  };
            IdentityResult result = manager.Create(user, txtPassword.Text);
            Employee ee = new Employee();
            //System.Threading.Thread.Sleep(3000);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                manager.AddToRole(user.Id,"Employee");
                ee.EmployeeName = txtName.Text;
                ee.EmployeePhone = Convert.ToDecimal(txtphone.Text);
                ee.EmployeeEmail = txtEmail.Text;
                ee.Password = txtPassword.Text;
                ee.Roles = "Employee";
                ee.Status = "Active";
                ee.Gender = RadioButtonList1.SelectedValue;
                cu.Employees.Add(ee);
                cu.SaveChanges();


                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text.ToString().Trim());
                mail.From = new MailAddress("hopeorganization23@gmail.com");
                mail.Subject = "Reating Service";
                mail.Body = $"Hello, {txtName.Text} Your Account is now active use these credintials to log in Email: {txtEmail.Text}, Password: {txtPassword.Text}. ";

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587; // 25 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "hcbjhizhsclsqkfl");
                smtp.Send(mail);


                txtName.Text = string.Empty;
                txtphone.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtEmail.Text = string.Empty;
                RadioButtonList1.ClearSelection();

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

            }

            else
            {
                Label1.Text = result.Errors.FirstOrDefault();
            }
            try { }

            catch (DbEntityValidationException aa)
            {
                foreach (var eve in aa.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }

        }
        }
}
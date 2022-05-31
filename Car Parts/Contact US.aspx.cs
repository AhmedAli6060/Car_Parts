using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Car_Parts
{
    public partial class Contact_US : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lblmai = (from obj in db.Information
                                 select obj.Email).ToList();

                lblMail.Text = lblmai.LastOrDefault();

                var mobil = (from obj in db.Information
                                 select obj.Mobile).ToList();

                lblMobile.Text = mobil.LastOrDefault();
            }
        }

        protected void lbSend_Click(object sender, EventArgs e)
        {
            ContactU con = new ContactU();
            con.Name = txtName.Text;
            con.Subject = txtMobile.Text;
            con.Email = txtMail.Text;
            con.Message = txtMessage.Text;
            db.AddToContactUs(con);
            db.SaveChanges();
            Response.Write("<script language=javascript>alert('تم إرسال الرسالة');</script>");

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(txtMail.Text);
            msg.To.Add("Academy-1944@hotmail.com");
            msg.Subject = "اسم الراسل:- " + txtName.Text + " , الجوال:- " + txtMobile.Text;
            msg.Body = txtMessage.Text;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
            networkcred.UserName = "mywork.6060@gmail.com";
            networkcred.Password = "136cfa0d-a524-4787-b56b-fee96c46be8e";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Host = "smtp.elasticemail.com";
            smtp.Port = 2525;
            smtp.EnableSsl = true;
            smtp.Send(msg);


            txtName.Text = txtMobile.Text = txtMail.Text = txtMessage.Text = "";
        }

    
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Car_Parts
{
    public partial class Rrequests : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            if (CheckBox2.Checked==true)
            {
                Order ord = new Order();
                ord.Name = Name.Text;
                ord.Mobile = Phone.Text;
                ord.Area = Region.Text;
                ord.City = City.Text;
                ord.VinNO = CarNum.Text;
                ord.CarBrand = CarBrand.Text;
                ord.TypeOfCar = TypeOfCar.Text;
                ord.CarModel = CarModel.Text;
                ord.CarStyle = CarStyle.Text;
                ord.NameOfPart = NameOfPart.Text;
                ord.DescriptionOfPart = Description.Text;
                ord.Delivery = rblDeler.SelectedItem.Value;
                ord.Status = "New";
                ord.Seen = "لم يتم";
                db.AddToOrders(ord);
                db.SaveChanges();

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("Academy-1944@hotmail.com");
                msg.To.Add(txtMail.Text);
                msg.Subject = " ماركة السيارة:- " + CarBrand.Text + " , الموديل:- " + CarModel.Text + " , مسمي القطعة المطلوبة:- " + NameOfPart.Text + " , دليفري:- " + rblDeler.SelectedItem.Text;
                msg.Body = "اسم العميل :-" + Name.Text + " ,,, الجوال :- " + Phone.Text;
                msg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
                networkcred.UserName = "carservi@carservic.com";
                networkcred.Password = "asd123456ASD";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkcred;
                smtp.Host = "webmail.carservic.com";
                smtp.Port = 25;
                smtp.Send(msg);

                Response.Write("<script language=javascript>alert('تم إرسال الطلب');</script>");
                Name.Text = Phone.Text = Region.Text = City.Text = CarNum.Text = CarBrand.Text = txtMail.Text = TypeOfCar.Text = CarModel.Text = CarStyle.Text = NameOfPart.Text = Description.Text = "";
                CheckBox2.Checked = false;


            }
            else
            {
                Response.Write("<script language=javascript>alert('يجب  ان توافق علي الشروط والأحكام أولا');</script>");
            }

            
        }
    }
}
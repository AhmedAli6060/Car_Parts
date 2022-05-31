using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class WorkShop_Admin_ : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            if (fuImage.HasFile)
            {
                string ex = System.IO.Path.GetExtension(fuImage.FileName);
                if (ex.ToLower() != ".jpg" && ex.ToLower() != ".gif" && ex.ToLower() != ".png" && ex.ToLower() != ".jpeg")
                {
                    Label2.Visible = true;
                    Label2.Text = "انت لم تختر صورة ";
                }
                else
                {


                    WorkShop wrsh = new WorkShop();
                    wrsh.Name = txtName.Text;
                    wrsh.Mobile = txtMobile.Text;
                    wrsh.Phone = txtPhone.Text;
                    wrsh.Location = txtLocation.Text;
                    wrsh.Photo = fuImage.FileName;

                    fuImage.SaveAs(Server.MapPath("~/images/" + fuImage.FileName));


                    db.AddToWorkShops(wrsh);

                    db.SaveChanges();
                    Response.Write("<script language=javascript>alert('تم الاضافة');</script>");

                    txtName.Text = txtMobile.Text = txtLocation.Text = txtMobile.Text = txtPhone.Text = "";
                    Response.Redirect("~/WorkShop(Admin).aspx");

                }
            }
            else
            {

                WorkShop wrsh = new WorkShop();

                wrsh.Name = txtName.Text;
                wrsh.Mobile = txtMobile.Text;
                wrsh.Phone = txtPhone.Text;
                wrsh.Location = txtLocation.Text;
                wrsh.Photo = fuImage.FileName;
                db.AddToWorkShops(wrsh);
                db.SaveChanges();
                
                txtName.Text = txtMobile.Text = txtLocation.Text = txtMobile.Text = txtPhone.Text = "";
                Response.Redirect("~/WorkShop(Admin).aspx"); 
            }
        }
    }
}
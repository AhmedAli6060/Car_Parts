using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class LogIn : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {

            int check = (from us in db.Users
                         where us.UserName == txtUsername.Text && us.Password == txtPass.Text
                         select db.Users).Count();
            if (check == 1)
            {
                User use = (from ss in db.Users
                            where ss.UserName == txtUsername.Text && ss.Password == txtPass.Text
                            select ss).FirstOrDefault();
                Session["ID"] = use.User_ID;
                Session["Name"] = use.UserName;
                Session["Role"] = use.Role;
               
                Response.Redirect("~/Home.aspx");

            }
            else
            {
                Response.Write("<script language=javascript>alert('اسم المستخدم او كلمة المرور خاطئه');</script>");
            }

        }

        

        protected void lbAddnew_Click(object sender, EventArgs e)
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
                    int check = (from obj in db.Users
                                 where obj.UserName == txtUser.Text
                                 select obj).Count();
                    if (check == 0)
                    {
                        Customer cus = new Customer();
                        cus.MemberShip = ddlstatus.SelectedItem.Text;
                        cus.Name = txtName.Text;
                        cus.Mobile = txtMobile.Text;
                        cus.Area = txtArea.Text;
                        cus.City = txtCity.Text;
                        cus.NameOfPart = txtNamePart.Text;
                        cus.Image = fuImage.FileName;

                        User us = new Car_Parts.User();
                        us.UserName = txtUser.Text;
                        us.Password = txtPassword.Text;
                        us.Role = "User";
                        us.resetPass = 0;

                        fuImage.SaveAs(Server.MapPath("~/images/" + fuImage.FileName));

                        db.AddToUsers(us);
                        db.AddToCustomers(cus);
                        db.SaveChanges();
                        Response.Write("<script language=javascript>alert('تم التسجيل بنجاح');</script>");

                        ddlstatus.SelectedIndex = -1;
                        txtName.Text = txtMobile.Text = txtArea.Text = txtCity.Text = txtNamePart.Text = txtUser.Text = txtPassword.Text = txtConfPass.Text = "";
                        Response.Redirect("~/LogIn.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('اسم المستخدم موجود مسبقا برجاء اختيار اسم جديد');</script>");
                    }
                }
            }
            else
            {
                
                    int check = (from obj in db.Users
                                 where obj.UserName == txtUser.Text
                                 select obj).Count();
                    if (check == 0)
                    {
                        Customer cus = new Customer();
                        cus.MemberShip = ddlstatus.SelectedItem.Text;
                        cus.Name = txtName.Text;
                        cus.Mobile = txtMobile.Text;
                        cus.Area = txtArea.Text;
                        cus.City = txtCity.Text;
                        cus.NameOfPart = txtNamePart.Text;
                        cus.Image = fuImage.FileName;

                        User us = new Car_Parts.User();
                        us.UserName = txtUser.Text;
                        us.Password = txtPassword.Text;
                        us.Role = "User";

                        db.AddToUsers(us);
                        db.AddToCustomers(cus);
                        db.SaveChanges();
                        Response.Write("<script language=javascript>alert('تم التسجيل بنجاح');</script>");

                        ddlstatus.SelectedIndex = -1;
                        txtName.Text = txtMobile.Text = txtArea.Text = txtCity.Text = txtNamePart.Text = txtUser.Text = txtPassword.Text = txtConfPass.Text = "";
                        Response.Redirect("~/LogIn.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('اسم المستخدم موجود مسبقا برجاء اختيار اسم جديد');</script>");
                    }
            }
        }

        protected void lbNew_Click(object sender, EventArgs e)
        {
            pSignup.Visible = true;
            pLogin.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            pSignup.Visible = false;
            pLogin.Visible = true;
        }
    }
}
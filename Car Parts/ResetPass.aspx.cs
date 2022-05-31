using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class ResetPass : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {


            int uss = (from obj in db.Users
                       where obj.UserName == txtUsername.Text
                       select obj.resetPass).FirstOrDefault();
            if (uss == 3)
            {
                lblPass.Text = "لقد تجاوزت الحد المسموح به لاسترجاع كلمة المرور";
                lblPass.Visible = true;
                lbl.Visible = false;
            }
            else
            {
                string us = (from obj in db.Users
                             where obj.UserName == txtUsername.Text
                             select obj.Password).FirstOrDefault();
                if (us == null)
                {
                    lblPass.Text = "اسم المستخدم غير صحيح";
                    lblPass.Visible = true;
                    lbl.Visible = false;
                }
                else
                {
                    lblPass.Text = us;
                    lblPass.Visible = true;
                    lbl.Visible = true;

                    User ussr = (from obj in db.Users
                                 where obj.UserName == txtUsername.Text && obj.Password == lblPass.Text
                                 select obj).FirstOrDefault();
                    ussr.resetPass = uss + 1;
                    db.SaveChanges();
                }
            }
        }
    }
}
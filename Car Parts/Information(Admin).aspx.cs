using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Information_Admin_ : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            Information inf = new Information();
            inf.AboutUS = txtabout.Text;
            inf.Mobile = txtMobile.Text;
            inf.Email = txtMail.Text;
            inf.Address = txtAddress.Text;
            inf.Facebook = txtFacebook.Text;
            inf.twitter = txttwitter.Text;
            db.AddToInformation(inf);
            db.SaveChanges();

            Response.Write("<script language=javascript>alert('تمت الإضافة');</script>");

            txtabout.Text = txtAddress.Text = txtFacebook.Text = txtMail.Text = txtMobile.Text = txttwitter.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Admin1 : System.Web.UI.MasterPage
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lbFace = (from obj in db.Information
                              select obj.Facebook).ToList();

                facebook.HRef = lbFace.Last();

                var lbtw = (from obj in db.Information
                            select obj.twitter).ToList();

                twitter.HRef = lbtw.LastOrDefault();

                var lblgoogle = (from obj in db.Information
                                 select obj.Email).ToList();

                lblMail.Text = lblgoogle.LastOrDefault();

                var lbabo = (from obj in db.Information
                             select obj.AboutUS).ToList();

                lblAbout.Text = lbabo.LastOrDefault();

            }

            if (Session["name"] != null)
            {
                if (Session["Role"].ToString() == "Admin" || Session["Role"].ToString() == "admin")
                {

                    LinkButton1.Visible = true;
                    lbLogOut.Visible = true;
                }
                else
                {

                    lbLogOut.Visible = true;
                    LinkButton1.Visible = false;

                }
            }
            else
            {

                lbLogOut.Visible = false;
                LinkButton1.Visible = false;
                Response.Redirect("~/Home.aspx");
            }



        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session["name"] = Session["Role"] = Session["ID"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}
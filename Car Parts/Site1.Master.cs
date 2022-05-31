using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Car_Parts
{
    public partial class Site12 : System.Web.UI.MasterPage
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["Auto PartsConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(strConn);
            SqlDataAdapter sda = new SqlDataAdapter("select top 3 Service from Services order by Services_ID desc", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            if (!IsPostBack)
            {
                var lbFace = (from obj in db.Information
                              select obj.Facebook).ToList();

                facebook.HRef = lbFace.Last();

                var lbtw = (from obj in db.Information
                            select obj.twitter).ToList();

                twitter.HRef = lbtw.LastOrDefault();


                var lbabo = (from obj in db.Information
                             select obj.AboutUS).ToList();

                lblAbout.Text = lbabo.LastOrDefault();

            }

            if (Session["name"] != null)
            {
                if (Session["Role"].ToString() == "Admin" || Session["Role"].ToString() == "admin")
                {

                    LinkButton1.Visible = true;
                    plus.Visible = false;
                    Div1.Visible = true;
                }
                else
                {
                    LinkButton1.Visible = false;
                    plus.Visible = false;
                    Div1.Visible = true;

                }
            }
            else
            {
                LinkButton1.Visible = false;
                plus.Visible = true;
                Div1.Visible = false;
            }



        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            Session["name"] = Session["Role"] = Session["ID"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}
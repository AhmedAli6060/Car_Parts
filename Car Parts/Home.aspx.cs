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
    public partial class Home : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strConn = ConfigurationManager.ConnectionStrings["Auto PartsConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(strConn);
                SqlDataAdapter sda = new SqlDataAdapter("select top 4 * from Services order by Services_ID desc", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                SqlConnection conn = new SqlConnection(strConn);
                SqlDataAdapter sdaa = new SqlDataAdapter("select top 4 * from Services order by Services_ID desc", conn);
                DataTable dtt = new DataTable();
                sda.Fill(dtt);
                Repeater2.DataSource = dtt;
                Repeater2.DataBind();


                var prt = (from obj in db.Parts
                           select new
                           {
                               obj.PartsID,
                               obj.NameOFPart,
                               obj.Image
                           }).Take(6).OrderBy(x => Guid.NewGuid()).ToList();
                Repeater3.DataSource = prt;
                Repeater3.DataBind();


                var mob = (from obj in db.Information
                           select obj.Mobile).ToList();
                lblMobile.Text = mob.LastOrDefault();

                var mail = (from obj in db.Information
                            select obj.Email).ToList();
                lblMail.Text = mail.LastOrDefault();

                var addres = (from obj in db.Information
                              select obj.Address).ToList();
                lblAddress.Text = addres.LastOrDefault();

            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Help_Admin_ : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DATA();
            }
        }

        public void DATA()
        {
            GridView1.DataSource = (from obj in db.Helpings
                                 select new
                                 {
                                     help_ID = obj.help_ID,
                                     Name = obj.Name,
                                     City = obj.City,
                                     Mobile = obj.Mobile
                                 }).ToList();

            GridView1.DataBind();
        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            Helping hlp = new Helping();
            hlp.Name = txtName.Text;
            hlp.City = txtCity.Text;
            hlp.Mobile = txtMobile.Text;
            db.AddToHelpings(hlp);
            db.SaveChanges();
            DATA();
            Response.Write("<script language=javascript>alert('تمت الاضافة');</script>");
            txtName.Text = txtMobile.Text = txtCity.Text = "";
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            Helping con = (from obj in db.Helpings
                             where obj.help_ID == id
                             select obj).FirstOrDefault();
            db.Helpings.DeleteObject(con);

            db.SaveChanges();
            GridView1.EditIndex = -1;
            DATA();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DATA();
        }

    }
}
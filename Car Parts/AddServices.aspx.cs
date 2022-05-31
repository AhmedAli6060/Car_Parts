using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class AddServices : System.Web.UI.Page
    {
        
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            Service serv = new Service();
            serv.ServName = txtName.Text;
            serv.Service1 = txtServ.Text;
            db.AddToServices(serv);
            db.SaveChanges();
            Response.Write("<script language=javascript>alert('تمت الاضافة');</script>");
            txtName.Text = txtServ.Text = "";
        }

    }
}
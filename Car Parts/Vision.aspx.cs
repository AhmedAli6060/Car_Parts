using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Vision : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAddVis_Click(object sender, EventArgs e)
        {

            Vision_Message vm = new Vision_Message();
            vm.Vision = txtVision.Text;
            vm.Message = txtMess.Text;
            vm.Stragety = txtStrategy.Text;
            db.AddToVision_Message(vm);
            db.SaveChanges();
            Response.Write("<script language=javascript>alert('تمت الإضافة ');</script>");
            txtVision.Text = txtMess.Text = txtStrategy.Text = "";
        }
    }
}
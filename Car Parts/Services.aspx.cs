using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Services1 : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var vis = (from obj in db.Vision_Message
                           select obj.Vision).ToList();
                lblVesion.Text = vis.Last();

                var str = (from obj in db.Vision_Message
                           select obj.Stragety).ToList();
                lblStragety.Text = str.Last();

                var mes = (from obj in db.Vision_Message
                           select obj.Message).ToList();
                lblMessage.Text = mes.Last();
            }

        }
    }
}
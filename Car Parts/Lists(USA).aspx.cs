using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Car_Parts
{
    public partial class Lists : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var prt = (from obj in db.Parts
                           where obj.Status == "USA"
                           select new
                           {
                               PartsID = obj.PartsID,
                               NameOFPart = obj.NameOFPart,
                               Image = obj.Image,
                               Price = obj.Price,
                               Description = obj.Description
                           }).ToList();
                rParts.DataSource = prt;
                rParts.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            var prt = (from obj in db.Parts
                       where obj.Status == "USA" && obj.NameOFPart.Contains(txtSearch.Text)
                       select new
                       {
                           PartsID = obj.PartsID,
                           NameOFPart = obj.NameOFPart,
                           Image = obj.Image,
                           Price = obj.Price,
                           Description = obj.Description
                       }).ToList();
            rParts.DataSource = prt;
            rParts.DataBind();
        }
    }
}
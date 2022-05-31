using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class WorkShops_User_ : System.Web.UI.Page
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

            gvWork.DataSource = (from obj in db.WorkShops
                                 select new
                                 {
                                     WorkShop_ID = obj.WorkShop_ID,
                                     Name = obj.Name,
                                     Phone = obj.Phone,
                                     Mobile = obj.Mobile,
                                     Location = obj.Location,
                                     Photo = obj.Photo
                                 }).ToList();

            gvWork.DataBind();
        }

        protected void gvWork_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvWork.PageIndex = e.NewPageIndex;
            DATA();
        }
    }
}
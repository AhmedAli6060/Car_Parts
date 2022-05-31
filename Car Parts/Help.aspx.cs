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
    public partial class Help : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DATA();
                ddlCity.Items.Insert(0, "اختار المدينة");
            }
        }

        public void DATA()
        {

            ddlCity.DataSource = (from obj in db.Helpings
                                  select obj.City).Distinct();
            ddlCity.DataBind();

            gvHelp.DataSource = (from obj in db.Helpings
                                 select new
                                 {
                                     help_ID = obj.help_ID,
                                     Name = obj.Name,
                                     City = obj.City,
                                     Mobile = obj.Mobile
                                 }).ToList().OrderBy(x => Guid.NewGuid()).ToList();

            gvHelp.DataBind();
        }


        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCity.SelectedIndex == 0)
            {
                var hlp = (from obj in db.Helpings
                           select new
                           {
                               help_ID = obj.help_ID,
                               Name = obj.Name,
                               City = obj.City,
                               Mobile = obj.Mobile
                           }).ToList();
                gvHelp.DataSource = hlp;
                gvHelp.DataBind();

            }
            else
            {

                var hhlp = (from obj in db.Helpings
                            where obj.City == ddlCity.SelectedItem.Value
                            select new
                            {
                                help_ID = obj.help_ID,
                                Name = obj.Name,
                                City = obj.City,
                                Mobile = obj.Mobile
                            }).ToList();
                gvHelp.DataSource = hhlp.OrderBy(x => Guid.NewGuid()).ToList();
                gvHelp.DataBind();

            }
        }

        protected void gvHelp_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvHelp.PageIndex = e.NewPageIndex;
            DATA();
        }

    }
}
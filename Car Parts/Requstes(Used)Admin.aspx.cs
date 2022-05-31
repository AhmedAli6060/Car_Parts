using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Requstes_Used_Admin : System.Web.UI.Page
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
            gvRequestNew.DataSource = (from obj in db.Orders
                                       where obj.Status == "Used"
                                       select new
                                       {
                                           Order_ID = obj.Order_ID,
                                           Name = obj.Name,
                                           Mobile = obj.Mobile,
                                           Area = obj.Area,
                                           City = obj.City,
                                           VinNO = obj.VinNO,
                                           CarBrand = obj.CarBrand,
                                           TypeOfCar = obj.TypeOfCar,
                                           CarModel = obj.CarModel,
                                           CarStyle = obj.CarStyle,
                                           NameOfPart = obj.NameOfPart,
                                           DescriptionOfPart = obj.DescriptionOfPart,
                                           Delivery = obj.Delivery,
                                           Status = obj.Status,
                                           Seen=obj.Seen
                                       }).ToList();
            gvRequestNew.DataBind();
        }

        protected void gvRequestNew_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(gvRequestNew.DataKeys[e.RowIndex].Values[0]);

            Order ord = (from obj in db.Orders
                         where obj.Order_ID == Id
                         select obj).FirstOrDefault();
            db.Orders.DeleteObject(ord);

            db.SaveChanges();
            gvRequestNew.EditIndex = -1;
            DATA();
        }

        protected void gvRequestNew_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvRequestNew.PageIndex = e.NewPageIndex;
            DATA();
        }

        protected void gvRequestNew_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(gvRequestNew.SelectedDataKey["Order_ID"]);
            Order or = (from ord in db.Orders
                        where ord.Order_ID == id
                        select ord).FirstOrDefault();
            or.Seen = "تم";
            db.SaveChanges();
            Response.Redirect("~/Requstes(Used)Admin.aspx");
        }

    }
}
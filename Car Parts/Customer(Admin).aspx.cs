using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Customer_Admin_ : System.Web.UI.Page
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
            gvCustomer.DataSource = (from obj in db.Customers
                                     select new
                                     {
                                        Customer_ID= obj.Customer_ID,
                                         MemberShip = obj.MemberShip,
                                         Name = obj.Name,
                                         Mobile = obj.Mobile,
                                         Area = obj.Area,
                                         City = obj.City,
                                         NameOfPart = obj.NameOfPart,
                                         Image=obj.Image
                                     }).ToList();
            gvCustomer.DataBind();
        }

        protected void gvCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCustomer.PageIndex = e.NewPageIndex;
            DATA();
        }

        protected void gvCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(gvCustomer.DataKeys[e.RowIndex].Values[0]);

            Customer con = (from obj in db.Customers
                             where obj.Customer_ID == Id
                             select obj).FirstOrDefault();
            db.Customers.DeleteObject(con);

            db.SaveChanges();
            gvCustomer.EditIndex = -1;
            DATA();
        }
    }
}
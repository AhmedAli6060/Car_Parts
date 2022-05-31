using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class ListsGER_Admin_ : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GVdata();
            }
        }

        public void GVdata()
        {
            gvContetUSA.DataSource = (from obj in db.Parts
                                where obj.Status == "GER"
                                select new
                                {
                                    PartsID = obj.PartsID,
                                    NameOFPart = obj.NameOFPart,
                                    Price = obj.Price,
                                    Description = obj.Description,
                                    Image = obj.Image,
                                }).ToList();
            gvContetUSA.DataBind();
        }

        protected void lbAdd_Click(object sender, EventArgs e)
        {
            if (fuImage.HasFile)
            {
                string ex = System.IO.Path.GetExtension(fuImage.FileName);
                if (ex.ToLower() != ".jpg" && ex.ToLower() != ".gif" && ex.ToLower() != ".png" && ex.ToLower() != ".jpeg")
                {
                    Response.Write("<script language=javascript>alert('يجب أن تختار صورة');</script>");
                }
                else
                {
                    Part prt = new Part();
                    prt.NameOFPart = txtNameofpart.Text;
                    prt.Price = txtPrice.Text;
                    prt.Description = txtDesc.Text;
                    prt.Image = fuImage.FileName;
                    prt.Status = "GER";

                    fuImage.SaveAs(Server.MapPath("~/images/" + fuImage.FileName));

                    db.AddToParts(prt);
                    db.SaveChanges();

                    Response.Write("<script language=javascript>alert('تمت الإضافة بنجاح');</script>");
                    txtNameofpart.Text = txtDesc.Text = txtPrice.Text = "";
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('يجب أن تختار صورة أولا');</script>");
            }

        }
        
        protected void gvContetUSA_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(gvContetUSA.DataKeys[e.RowIndex].Values[0]);

            Part prt = (from obj in db.Parts
                           where obj.PartsID == Id
                           select obj).FirstOrDefault();
            db.Parts.DeleteObject(prt);

            db.SaveChanges();
            gvContetUSA.EditIndex = -1;
            GVdata();

        }

        protected void gvContetUSA_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvContetUSA.EditIndex = -1;
            GVdata();
        }

        protected void gvContetUSA_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvContetUSA.PageIndex = e.NewPageIndex;
            GVdata();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Comments_Admin_ : System.Web.UI.Page
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
            gvSubject.DataSource = (from obj in db.Subjects
                                    join obj2 in db.Users
                                    on obj.User_ID equals obj2.User_ID
                                    select new 
                                    {
                                       Subject_ID= obj.Subject_ID,
                                       Sub=obj.Sub,
                                       Createdate=obj.Createdate,
                                       UserName=obj2.UserName
                                    }).ToList();
            gvSubject.DataBind();
        }

        protected void gvSubject_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(gvSubject.DataKeys[e.RowIndex].Values[0]);
            int num = (from obj in db.Subjects
                       join obj2 in db.Comments
                       on obj.Subject_ID equals obj2.subject_ID
                       where obj2.subject_ID == Id
                      select obj.Subject_ID).FirstOrDefault();

            if (num == Id)
            {

                db.delsubject(num);
                db.SaveChanges();

                Subject sub = (from obj in db.Subjects
                                where obj.Subject_ID == Id
                                select obj).FirstOrDefault();
                db.Subjects.DeleteObject(sub);
                db.SaveChanges();
            }
            else
            {
               
                Subject sub = (from obj in db.Subjects
                                where obj.Subject_ID == Id
                                select obj).FirstOrDefault();
                db.Subjects.DeleteObject(sub);
                db.SaveChanges();
            }
            
            gvSubject.EditIndex = -1;
            DATA();
        }

        protected void gvSubject_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSubject.PageIndex = e.NewPageIndex;
            DATA();
        }
    }
}
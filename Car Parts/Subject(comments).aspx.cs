using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Parts
{
    public partial class Subject_comments_ : System.Web.UI.Page
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
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var rep = (from obj in db.Comments
                       join obj2 in db.Users
                       on obj.user_ID equals obj2.User_ID
                       where obj.subject_ID==id
                       select new
                       {
                           Comment_ID = obj.Comment_ID,
                           UserName = obj2.UserName,
                           Comment = obj.Comment1,
                           CreateDate = obj.CreateDate
                       }).ToList();
            Repeater1.DataSource = rep;
            Repeater1.DataBind();
        }
        protected void lbAdd_Click1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            Comment com = new Comment();
            com.Comment1 = txtComment.Text;
            com.CreateDate = DateTime.Now.ToString();
            com.user_ID = Convert.ToInt32(Session["ID"]);
            com.subject_ID = id;
            db.AddToComments(com);
            db.SaveChanges();

            txtComment.Text = "";
            DATA();
        }

        protected void time1_Tick(object sender, EventArgs e)
        {
            DATA();
        }
    }
}
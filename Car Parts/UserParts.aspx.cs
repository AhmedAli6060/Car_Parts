using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Car_Parts
{
    public partial class UserParts : System.Web.UI.Page
    {
        Auto_PartsEntities db = new Auto_PartsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvData();
                if (Session["Name"] == null)
                {
                    lbLog.Visible = true;
                    lbLog.Text = "يجب ان تقوم بتسجيل الدخول آولا";
                }
                else
                {
                    //pAdd.Visible = true;
                    mod.Visible = true;
                    gvSubject.Visible = true;
                    lbLog.Visible = false;
                    
                }
            }
        }

        public void gvData()
        {
            gvSubject.DataSource = (from obj in db.Subjects
                                    join obj2 in db.Users
                                    on obj.User_ID equals obj2.User_ID
                                    select new 
                                    {
                                        Subject_ID = obj.Subject_ID,
                                        Nameofcar=obj.Nameofcar,
                                        Sub = obj.Sub,
                                        Image=obj.Image,
                                        Createdate=obj.Createdate,
                                        UserName=obj2.UserName
                                    }).ToList() ;
            gvSubject.DataBind();
        }

        
        //protected void lbAdd_Click1(object sender, EventArgs e)
        //{

            
        //}

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" && txtDesc.Text == "")
            {
                Label3.Visible = true;
            }
            else
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
                        Subject sub = new Subject();
                        sub.Nameofcar = txtName.Text;
                        sub.Sub = txtDesc.Text;
                        sub.Image = fuImage.FileName;
                        sub.Createdate = DateTime.Now.ToString();
                        sub.User_ID = Convert.ToInt32(Session["ID"]);

                        fuImage.SaveAs(Server.MapPath("~/images/" + fuImage.FileName));

                        db.AddToSubjects(sub);
                        db.SaveChanges();

                        Response.Write("<script language=javascript>alert('تمت الإضافة بنجاح');</script>");
                        txtName.Text = txtDesc.Text = "";
                        gvData();
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('يجب أن تختار صورة أولا');</script>");
                }
            }
        }


        protected void gvSubject_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            int Id = int.Parse((e.Item.FindControl("lblID") as Label).Text);
            LinkButton btn = e.Item.FindControl("lnPrivate") as LinkButton;
            btn.PostBackUrl = "Subject(comments).aspx?id=" + Id;
        }

    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source= localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //agar user already login h to redirect to admin dashboard
            if (Session["Adminuser"] != null)
            {
                Response.Redirect("Admin_Dashboard.aspx");
            }
            lblMessage.Visible = false;
        }
        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
           
            if (txtUsername.Text=="admin" && txtPassword.Text=="123")
            {
                Response.Redirect("Admin_Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Admin Login')</script>");
            }
        }
    }
}
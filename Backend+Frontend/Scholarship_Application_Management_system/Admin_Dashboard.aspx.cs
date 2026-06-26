using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        protected void btnViewApplications_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_ViewApplications.aspx");
        }

        protected void btnManageScholarship_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_ManageApplications.aspx");
        }

        protected void  btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }
}
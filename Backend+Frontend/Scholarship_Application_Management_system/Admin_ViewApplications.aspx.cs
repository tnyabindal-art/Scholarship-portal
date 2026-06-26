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
    public partial class Admin_ViewApplications : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source= localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadApplications();
            }
        }

        void LoadApplications()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT*FROM Application", con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Approve")
            {
                UpdateStatus(id, "Approved");
            }

            if (e.CommandName == "Reject")
            {
                UpdateStatus(id, "Rejected");
            }

            LoadApplications();
        }

        void UpdateStatus(int id, string status)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Application SET Status=@status WHERE ApplicationID=@id",con);

            cmd.Parameters.AddWithValue("@Status", status);
            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }


    } 
}
    

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
    public partial class Apply_Scholarship : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source= localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadScholarships();
                txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }
        void LoadScholarships()
        {
            SqlDataAdapter da = new SqlDataAdapter("select ScholarshipName from Scholarship",con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            ddlScholarship.DataSource = dt;
            ddlScholarship.DataTextField = "ScholarshipName";
            ddlScholarship.DataBind();
        }

        protected void btn_ApplyClick(object sender, EventArgs e)
        {
            string query = "INSERT INTO Application(StudentEmail,ScholarshipName,Course,ApplicationDate,Status) VALUES(@Email,@Scholarship,@Course,@Date,'pending')";

            SqlCommand cmd = new SqlCommand(query,con);

            cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
            cmd.Parameters.AddWithValue("@Scholarship", ddlScholarship.Text);
            cmd.Parameters.AddWithValue("@Course", txtCourse.Text);
            cmd.Parameters.AddWithValue("@Date", txtDate.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblmessage.Text = "Scholarship Applied Successfully!!";
        }
    }

}
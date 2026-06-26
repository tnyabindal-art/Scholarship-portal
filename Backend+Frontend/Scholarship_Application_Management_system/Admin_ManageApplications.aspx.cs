using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class Admin_ManageApplications : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source= localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadScholarship();
            }

        }
        protected void btn_AddScholarship_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO Scholarship(ScholarshipName,Amount,LastDate,Eligibility) VALUES(@ScholarshipName,@Amount,@LastDate,@Eligibility)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@ScholarshipName", txtScholarshipName.Text);
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
            cmd.Parameters.AddWithValue("@LastDate",Convert.ToDateTime(txtLastdate.Text));
            cmd.Parameters.AddWithValue("@Eligibility", txtEligibility.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMessage.Text = "Scholarship Added Successfully";

            LoadScholarship();
        }

        void LoadScholarship()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT*FROM Scholarship", con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
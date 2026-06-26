using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class Student_Dashboard : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentEmail"] == null)
            {
                Response.Redirect("StudentLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadScholarships();
                GridView1.Visible = true;
            }
        }

        //  Scholarship list show (default)
        void LoadScholarships()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Scholarship", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //  Button click → show status
        protected void btnViewStatus_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            LoadScholarshipStatus();
        }

        //  Load student application status
        void LoadScholarshipStatus()
        {
            if (Session["StudentEmail"] != null)
            {
                string email = Session["StudentEmail"].ToString();

                SqlDataAdapter da = new SqlDataAdapter(
                    @"SELECT ScholarshipName, Course, ApplicationDate, Status
                  FROM Application
                  WHERE StudentEmail = @email", con);

                da.SelectCommand.Parameters.AddWithValue("@email", email);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("StudentLogin.aspx");
            }
        }

        //  Status color 
        protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == System.Web.UI.WebControls.DataControlRowType.DataRow)
            {
                string status = e.Row.Cells[e.Row.Cells.Count - 1].Text;

                if (status == "Approved")
                    e.Row.Cells[e.Row.Cells.Count - 1].ForeColor = System.Drawing.Color.Green;

                else if (status == "Rejected")
                    e.Row.Cells[e.Row.Cells.Count - 1].ForeColor = System.Drawing.Color.Red;

                else if (status == "Pending")
                    e.Row.Cells[e.Row.Cells.Count - 1].ForeColor = System.Drawing.Color.Orange;
            }
        }
    }
}

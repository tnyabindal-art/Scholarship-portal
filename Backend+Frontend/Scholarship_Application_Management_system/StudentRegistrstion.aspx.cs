using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class StudentRegistrstion : System.Web.UI.Page
    {
        protected void btn_Register_Click(object sender, EventArgs e)
        {
          
            string conn = "Data Source= localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True";

            SqlConnection con = new SqlConnection(conn);

            string query = "INSERT INTO Student(Name,Email,Phone,Course,Password) VALUES(@Name,@Email,@Phone,@Course,@Password)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtMail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtName.Text);
            cmd.Parameters.AddWithValue("@Course", txtcourse.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            LabelRegister.Text = "Student Registered Successfully!";
        }

    }
}
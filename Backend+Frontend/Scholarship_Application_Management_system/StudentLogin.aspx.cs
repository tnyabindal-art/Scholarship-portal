using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Scholarship_Application_Management_system
{
    

public partial class StudentLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string conStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=ScholarshipDB;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(conStr))
            {
                string query = "SELECT COUNT(*) FROM Student WHERE EMAIL=@Email AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Email", txtMail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());

                connection.Open();

                int result = (int)cmd.ExecuteScalar();

                if (result > 0)
                {
                    //  SESSION SET
                    Session["StudentEmail"] = txtMail.Text.Trim();

                   
                    Session.Timeout = 30;

                    //  DEBUG (TEMP - check karne ke liye)
                    // Response.Write(Session["StudentEmail"]);

                    // REDIRECT
                    Response.Redirect("Student_Dashboard.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    lblMessage.Text = "Invalid Email or Password";
                }
            }
        }
    }
}
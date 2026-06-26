using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scholarship_Application_Management_system
{
    public partial class Default : System.Web.UI.Page
    {
        protected void BtnTest_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
          ConfigurationManager.ConnectionStrings["ScholarshipDB"].ConnectionString);
            try
            {
                con.Open();
                Lbl_message.Text = "Database Connected Successfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Lbl_message.Text = "Connection Failed" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
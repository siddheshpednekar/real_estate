using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace clgproj
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        string emailId = OTPEmail.to;
        public ChangePassword()
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == TextBox2.Text)
            {
                SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
                SqlCommand cmd = new SqlCommand("update Customer set passWd='" + TextBox2.Text + "' where emailID='" + emailId + "'", sc);
                sc.Open();
                cmd.ExecuteNonQuery();
                sc.Close();
                MessageBox.Show("Password Reset Successful");
                Response.Redirect("Login.aspx");

            }
            else
            {
                MessageBox.Show("New password does not match.... Try Again..");
            }
        }
    }
}
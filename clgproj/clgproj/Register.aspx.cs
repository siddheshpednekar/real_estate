using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace clgproj
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
                if (sc.State == System.Data.ConnectionState.Closed)
                    sc.Open();
                SqlCommand cmd = new SqlCommand("rg", sc);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@em", TextBox2.Text);
                cmd.Parameters.AddWithValue("@mn", TextBox3.Text);
                cmd.Parameters.AddWithValue("@pd", TextBox4.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/login.aspx");
                sc.Close();
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("username", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@un", TextBox1.Text);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();

            if (sr.Read())
            {
                args.IsValid = false;
            }

            sc.Close();
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("emailid", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@em", TextBox2.Text);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();

            if (sr.Read())
            {
                args.IsValid = false;
            }

            sc.Close();
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("mobilenumber", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mn", TextBox3.Text);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();

            if (sr.Read())
            {
                args.IsValid = false;
            }

            sc.Close();
        }
    }
}
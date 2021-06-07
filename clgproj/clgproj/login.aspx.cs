using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace clgproj
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();


            if (CheckBox1.Checked == false)
            {
                SqlCommand cmd = new SqlCommand("lg1u", sc);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd.ExecuteNonQuery();
                SqlDataReader sr = cmd.ExecuteReader();

                SqlCommand cmd1 = new SqlCommand("lg2u", sc);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@em", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd1.ExecuteNonQuery();
                SqlDataReader sr1 = cmd1.ExecuteReader();


                SqlCommand cmd2 = new SqlCommand("lg3u", sc);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@mn", (TextBox1.Text));
                cmd2.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd2.ExecuteNonQuery();
                SqlDataReader sr2 = cmd2.ExecuteReader();



                if (sr.Read())
                {
                    SqlCommand cmd3 = new SqlCommand("username", sc);
                    cmd3.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd3.Parameters.AddWithValue("@un", TextBox1.Text);
                    cmd3.ExecuteNonQuery();
                    SqlDataReader sr3 = cmd3.ExecuteReader();
                    sr3.Read();
                    string username = sr3[0].ToString();
                    Session["id"] = username;

                }
                else if (sr1.Read())
                {
                    SqlCommand cmd4 = new SqlCommand("uemailid", sc);
                    cmd4.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd4.Parameters.AddWithValue("@em", TextBox1.Text);
                    cmd4.ExecuteNonQuery();
                    SqlDataReader sr4 = cmd4.ExecuteReader();
                    sr4.Read();
                    string username = sr4[0].ToString();
                    Session["id"] = username;

                }
                else if (sr2.Read())
                {
                    SqlCommand cmd5 = new SqlCommand("umobilenumber", sc);
                    cmd5.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd5.Parameters.AddWithValue("@mn", TextBox1.Text);
                    cmd5.ExecuteNonQuery();
                    SqlDataReader sr5 = cmd5.ExecuteReader();
                    sr5.Read();
                    string username = sr5[0].ToString();
                    Session["id"] = username;

                }
                else
                {
                    args.IsValid = false;
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("lg1", sc);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd.ExecuteNonQuery();
                SqlDataReader sr = cmd.ExecuteReader();

                SqlCommand cmd1 = new SqlCommand("lg2", sc);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@em", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd1.ExecuteNonQuery();
                SqlDataReader sr1 = cmd1.ExecuteReader();


                SqlCommand cmd2 = new SqlCommand("lg3", sc);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@mn", (TextBox1.Text));
                cmd2.Parameters.AddWithValue("@pd", TextBox2.Text);
                cmd2.ExecuteNonQuery();
                SqlDataReader sr2 = cmd2.ExecuteReader();



                if (sr.Read())
                {
                    SqlCommand cmd3 = new SqlCommand("username", sc);
                    cmd3.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd3.Parameters.AddWithValue("@un", TextBox1.Text);
                    cmd3.ExecuteNonQuery();
                    SqlDataReader sr3 = cmd3.ExecuteReader();
                    sr3.Read();
                    string username = sr3[0].ToString();
                    Session["id"] = username;

                }
                else if (sr1.Read())
                {
                    SqlCommand cmd4 = new SqlCommand("uemailid", sc);
                    cmd4.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd4.Parameters.AddWithValue("@em", TextBox1.Text);
                    cmd4.ExecuteNonQuery();
                    SqlDataReader sr4 = cmd4.ExecuteReader();
                    sr4.Read();
                    string username = sr4[0].ToString();
                    Session["id"] = username;

                }
                else if (sr2.Read())
                {
                    SqlCommand cmd5 = new SqlCommand("umobilenumber", sc);
                    cmd5.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd5.Parameters.AddWithValue("@mn", TextBox1.Text);
                    cmd5.ExecuteNonQuery();
                    SqlDataReader sr5 = cmd5.ExecuteReader();
                    sr5.Read();
                    string username = sr5[0].ToString();
                    Session["id"] = username;

                }
                else
                {
                    args.IsValid = false;
                }
            }



            sc.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckBox1.Checked == false)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Redirect("Admin.aspx");
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class Payment1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sc1 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc1.State == System.Data.ConnectionState.Closed)
                sc1.Open();
            SqlCommand cmd1 = new SqlCommand("pay_installments", sc1);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@oi", Int32.Parse(Request.QueryString["id"]));   
            cmd1.ExecuteNonQuery();
            SqlDataReader sr1 = cmd1.ExecuteReader();
            sr1.Read();
            Label14.Text = sr1[0].ToString();
            Label1.Text = sr1[1].ToString();
            Label3.Text = sr1[3].ToString();
            Label5.Text = sr1[5].ToString();
            Label7.Text = sr1[7].ToString();
            Label9.Text = sr1[9].ToString();
            Label2.Text = sr1[2].ToString();
            Label4.Text = sr1[4].ToString();
            Label6.Text = sr1[6].ToString();
            Label8.Text = sr1[8].ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("validate_cc", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cn", cname.Text);
            cmd.Parameters.AddWithValue("@cno", ccnum.Text);
            cmd.Parameters.AddWithValue("@em", Int32.Parse(expmonth.Text));
            cmd.Parameters.AddWithValue("@ey", Int32.Parse(expyear.Text));
            cmd.Parameters.AddWithValue("@cv", cvv.Text);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            if (sr.Read())
            {
                if(Label9.Text != "0") {
                    
                    Label9.Text = (Int32.Parse(Label9.Text) - 1).ToString();
                    Label7.Text = (Int32.Parse(Label7.Text) + Int32.Parse(Label14.Text)).ToString();
                    Label8.Text = (Int32.Parse(Label9.Text) * Int32.Parse(Label14.Text)).ToString();
                    string query = "update orders set installments_to_pay = " + Int32.Parse(Label9.Text)
                    + ",amount_paid=" + Int32.Parse(Label7.Text)
                    + ",remaining_amount="+Int32.Parse(Label8.Text)
                    + " where order_id=" + Int32.Parse(Request.QueryString["id"]);
                    SqlCommand cmd2 = new SqlCommand(query, sc);
                    cmd2.ExecuteNonQuery();
                    Response.Redirect("SuccessfulBooking.aspx");
                }
                else
                {
                    Label13.Text = "all installments are paid successfully";
                }
            }
            else
            {
                Label13.Text = "please enter correct details";
            }
            }
    }
}
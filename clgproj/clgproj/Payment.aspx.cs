using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int proj_id = Int32.Parse(Request.QueryString["ID"]);
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("select header, price_per_sq_ft, floor_rise_price, parking_price from project_description where project_id=" + proj_id, sc);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            sr.Read();
            Label14.Text = Request.QueryString["bprice"];
            Label1.Text = Session["id"].ToString();
            Label3.Text = Request.QueryString["bhks"];
            Label11.Text = sr[1].ToString();
            Label6.Text = Request.QueryString["floorno"];
            Label8.Text = Request.QueryString["parking"];
            Label2.Text = sr[0].ToString();
            Label4.Text = Request.QueryString["barea"];
            Label5.Text = Request.QueryString["baseprice"];
            Label12.Text = sr[2].ToString();
            Label7.Text = Request.QueryString["tflrp"];
            Label9.Text = sr[3].ToString();
            Label10.Text = Request.QueryString["total"];
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int emi = Int32.Parse(Request.QueryString["emi"]);
            int inst = Int32.Parse(Request.QueryString["installments"]);
            int ar = emi * inst;
            int ap = Int32.Parse(Request.QueryString["bprice"]);
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
                Label13.Text = "booking successful";
                SqlConnection sc1 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
                if (sc1.State == System.Data.ConnectionState.Closed)
                    sc1.Open();
                SqlCommand cmd1 = new SqlCommand("insert_orders", sc1);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@un", Session["id"].ToString());
                cmd1.Parameters.AddWithValue("@pid", Int32.Parse(Request.QueryString["ID"]));
                cmd1.Parameters.AddWithValue("@rooms", Int32.Parse(Request.QueryString["bhks"]));
                cmd1.Parameters.AddWithValue("@fn", Int32.Parse(Request.QueryString["floorno"]));
                cmd1.Parameters.AddWithValue("@parking", Request.QueryString["parking"]);
                cmd1.Parameters.AddWithValue("@total", Int32.Parse(Request.QueryString["total"]));
                cmd1.Parameters.AddWithValue("@installments", inst);
                cmd1.Parameters.AddWithValue("@emi", emi);
                cmd1.Parameters.AddWithValue("@ap", ap);
                cmd1.Parameters.AddWithValue("@ar", ar);
                cmd1.ExecuteNonQuery();
                sc1.Close();
                sc.Close();
                Response.Redirect("SuccessfulBooking.aspx");
                
            }
        
            else
            {
                Label13.Text = "please enter correct details";
            }
            
        }
    }
}
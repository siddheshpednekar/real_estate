using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int proj_id = Int32.Parse(Request.QueryString["ID"]);
            string floorno = Request.QueryString["floorno"];
            string rooms = Request.QueryString["bhks"];
            string area = Request.QueryString["area"];
            string parking = Request.QueryString["parking"];
            string installments = Request.QueryString["installments"];

            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("select header, price_per_sq_ft, floor_rise_price, parking_price from project_description where project_id="+proj_id, sc);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            sr.Read();
            Label1.Text = Session["id"].ToString();
            Label2.Text = sr[0].ToString();
            Label3.Text = rooms;
            Label11.Text = sr[1].ToString();
            Label4.Text = area;
            Label5.Text = (Int32.Parse(sr[1].ToString())*Int32.Parse(area)).ToString();
            Label6.Text = floorno;
            Label12.Text = (Int32.Parse(sr[2].ToString())).ToString();
            Label7.Text = (Int32.Parse(sr[2].ToString())*Int32.Parse(area)*Int32.Parse(floorno)).ToString();
            Label8.Text = parking;
            if(parking == "yes")
            {
                Label9.Text = sr[3].ToString();
                Label10.Text = (Int32.Parse(Label5.Text) + Int32.Parse(Label7.Text) + Int32.Parse(sr[3].ToString())).ToString();
            }
            else
            {
                Label9.Text = "0";
                Label10.Text = (Int32.Parse(Label5.Text) + Int32.Parse(Label7.Text)).ToString();

            }
            SqlConnection sc1 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc1.State == System.Data.ConnectionState.Closed)
                sc1.Open();
            SqlCommand cmd1 = new SqlCommand("insert_orders", sc1);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@un", Label1.Text);
            cmd1.Parameters.AddWithValue("@pid", proj_id);
            cmd1.Parameters.AddWithValue("@rooms", Int32.Parse(rooms));
            cmd1.Parameters.AddWithValue("@fn", Int32.Parse(floorno));
            cmd1.Parameters.AddWithValue("@parking", parking);
            cmd1.Parameters.AddWithValue("@total", Int32.Parse(Label10.Text));
            cmd1.Parameters.AddWithValue("@installments", Int32.Parse(installments));
            cmd1.ExecuteNonQuery();
            sc.Close();
        }

      
    }
}
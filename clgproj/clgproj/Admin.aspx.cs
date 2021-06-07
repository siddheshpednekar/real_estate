using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Label3.Text = Session["id"].ToString();
            }

            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            SqlCommand cmd = new SqlCommand("select * from Customer");
            SqlDataAdapter ap = new SqlDataAdapter(cmd.CommandText, sc);
            DataSet ds = new DataSet();

            sc.Open();
            ap.Fill(ds);
            Label1.Text = ds.Tables[0].Rows.Count.ToString();
            sc.Close();

            SqlConnection sc1 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            SqlCommand cmd1 = new SqlCommand("select * from project_description");
            SqlDataAdapter ap1 = new SqlDataAdapter(cmd1.CommandText, sc1);
            DataSet ds1 = new DataSet();

            sc1.Open();
            ap1.Fill(ds1);
            Label2.Text = ds1.Tables[0].Rows.Count.ToString();
            sc1.Close();

            SqlConnection sc2 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            SqlCommand cmd2 = new SqlCommand("select * from orders");
            SqlDataAdapter ap2 = new SqlDataAdapter(cmd2.CommandText, sc2);
            DataSet ds2 = new DataSet();

            sc2.Open();
            ap2.Fill(ds2);
            Label4.Text = ds2.Tables[0].Rows.Count.ToString();
            sc2.Close();

            SqlConnection sc3 = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            sc3.Open();
            SqlCommand cmd3 = new SqlCommand("SELECT SUM (amount_paid) FROM orders");
            cmd3.Connection = sc3;
            int total = (int)cmd3.ExecuteScalar();
            if (total > 999 && total < 1000000)
            {
                Label5.Text = System.Convert.ToDecimal((total / 1000)).ToString() + 'K'; // convert to K for number from > 1000 < 1 million 
            }
            else if (total > 1000000)
            {
                Label5.Text = System.Convert.ToDecimal((total / 1000000)).ToString() + 'M'; // convert to M for number from > 1 million 
            }
            else if (total < 900)
            {
                Label5.Text = total.ToString(); // if value < 1000, nothing to do
            }

            sc3.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProjectData.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerData.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Session.RemoveAll();
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                Response.Redirect("~/Admin.aspx");
            }
        }
    }
}
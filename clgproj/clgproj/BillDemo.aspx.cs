using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class BillDemo : System.Web.UI.Page
    { 

        double floorrise = 0;
        double pricesqft = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            int proj_id = Int32.Parse(Request.QueryString["ID"]);
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("select no_of_floors, floor_rise_price, price_per_sq_ft from project_description where project_id="+proj_id.ToString(), sc);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            sr.Read();
            int fl = Int32.Parse(sr[0].ToString());
           
            floorrise = Int32.Parse(sr[1].ToString());
            pricesqft = Int32.Parse(sr[2].ToString());
            if (!Page.IsPostBack)
            {
                DropDownList2.DataSource = Enumerable.Range(1, fl);
                DropDownList2.DataBind();

                DropDownList1.DataSource = Enumerable.Range(1, 3);
                DropDownList1.DataBind();

                DropDownList5.DataSource = Enumerable.Range(1, 10);
                DropDownList5.DataBind();

            }
            sc.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Label12.Text != "")
            {
                int proj_id = Int32.Parse(Request.QueryString["ID"]);
                double floorcost = Convert.ToDouble(DropDownList2.SelectedValue);
                double bhk = Convert.ToDouble(DropDownList1.SelectedValue);


                SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
                if (sc.State == System.Data.ConnectionState.Closed)
                    sc.Open();
                SqlCommand cmd = new SqlCommand("select area_" + bhk.ToString() + "bhk, parking_price from project_description where project_id=" + proj_id.ToString(), sc);
                cmd.ExecuteNonQuery();
                SqlDataReader sr = cmd.ExecuteReader();
                sr.Read();
                int area_bhk = Int32.Parse(sr[0].ToString());
                int cost = (int)(area_bhk * pricesqft);
                if (DropDownList4.SelectedValue == "no")
                {

                    int total = (int)(floorcost * floorrise * area_bhk + cost);
                    Label1.Text = total.ToString();

                }
                else
                {

                    double parking = Int32.Parse(sr[1].ToString());
                    int total = (int)(floorcost * floorrise * area_bhk + cost + parking);
                    Label1.Text = total.ToString();

                }
                Response.Redirect("~/Payment.aspx?ID=" + proj_id
                    + "&floorno=" + floorcost + "&bhks=" + bhk
                    + "&area=" + area_bhk + "&parking=" + DropDownList4.SelectedValue
                    + "&installments=" + Label11.Text + "&total=" + Label9.Text
                    + "&bprice=" + Label10.Text + "&barea=" + Label2.Text
                    + "&baseprice=" + Label4.Text + "&tflrp=" + Label6.Text
                    + "&emi=" + Label12.Text);
                sc.Close();
            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Please View Details First then Book')</script>");
            }

        }

    

    protected void Button2_Click(object sender, EventArgs e)
        {
            int proj_id = Int32.Parse(Request.QueryString["ID"]);
            double floorcost = Convert.ToDouble(DropDownList2.SelectedValue);
            double bhk = Convert.ToDouble(DropDownList1.SelectedValue);


            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("select area_" + bhk.ToString() + "bhk, parking_price, bhk" + bhk.ToString()
                + "_img from project_description where project_id=" + proj_id.ToString(), sc);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            sr.Read();
            int area_bhk = Int32.Parse(sr[0].ToString());
            int cost = (int)(area_bhk * pricesqft);
            double parking = 0;
            int total = 0;
            if (DropDownList4.SelectedValue == "no")
            {

                total = (int)(floorcost * floorrise * area_bhk + cost);
                Label1.Text = total.ToString();

            }
            else
            {

                parking = Int32.Parse(sr[1].ToString());
                total = (int)(floorcost * floorrise * area_bhk + cost + parking);
                Label1.Text = total.ToString();

            }
            byte[] bytes4 = (byte[])sr[2];
            string fplan = Convert.ToBase64String(bytes4);
            Image1.ImageUrl = "data:image/png;base64," + fplan;
            Label2.Text = area_bhk.ToString();
            Label3.Text = pricesqft.ToString();
            Label4.Text = cost.ToString();
            Label5.Text = floorrise.ToString();
            Label6.Text = (floorrise * area_bhk * Convert.ToDouble(DropDownList2.SelectedValue)).ToString();
            Label7.Text = DropDownList4.SelectedValue;
            Label8.Text = parking.ToString();
            Label9.Text = total.ToString();
            Label10.Text = (Math.Round((total*0.5/100))).ToString();
            Label11.Text = (Int32.Parse(DropDownList5.SelectedValue)*12).ToString();
            Label12.Text = ((total - Int32.Parse(Label10.Text))/ (Int32.Parse(Label11.Text))).ToString();
            
        }
    }
}
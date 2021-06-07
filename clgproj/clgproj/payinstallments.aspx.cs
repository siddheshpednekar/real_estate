using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class payinstallments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int userid = 1;
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("select installments_to_pay from orders where user_id=" + userid, sc);
            cmd.ExecuteNonQuery();
            SqlDataReader sr = cmd.ExecuteReader();
            sr.Read();
            Label1.Text = sr[0].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(Label1.Text)>0){
                SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
                if (sc.State == System.Data.ConnectionState.Closed)
                    sc.Open();
                SqlCommand cmd = new SqlCommand("Update orders Set installments_to_pay=" + (Int32.Parse(Label1.Text) - 1), sc);
                cmd.ExecuteNonQuery();
                SqlDataReader sr = cmd.ExecuteReader();
                sr.Read();

                SqlCommand cmd1 = new SqlCommand("select installments_to_pay from orders where user_id=" + 1, sc);
                cmd1.ExecuteNonQuery();
                SqlDataReader sr1 = cmd1.ExecuteReader();
                sr1.Read();
                Label1.Text = sr1[0].ToString();
            }
            else
            {
                Label2.Text = "all installments are paid";
            }
            
        }
    }
}
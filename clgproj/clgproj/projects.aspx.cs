using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace clgproj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            string proj_type = Request.QueryString["proj"];
            
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == ConnectionState.Closed)
            {
                sc.Open();
            }
            
            SqlCommand cmd = new SqlCommand("get_projects", sc);
            cmd.Parameters.Add(new SqlParameter("@status", proj_type));
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet dataSet = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dataSet);
            Repeater1.DataSource = dataSet;
            Repeater1.DataBind();
        }
        /*private DataSet GetData()
        {
            SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-5UCEC7CO\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
            if (sc.State == ConnectionState.Closed)
                sc.Open();
            string query = "select project_id, main_image from project_description";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, sc);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            return dataSet;
        }*/
        protected void Button_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (sender as LinkButton);
            string commandargument = linkButton.CommandArgument;
            RepeaterItem item = linkButton.NamingContainer as RepeaterItem;
            int index = item.ItemIndex;

            
            Response.Redirect("~/project_description.aspx?ID=" + commandargument);
        }
    }
}
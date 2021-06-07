using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-CMJDGHA7\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile1 = FileUpload1.PostedFile;
            Stream stream1 = postedFile1.InputStream;
            BinaryReader binaryReader1 = new BinaryReader(stream1);
            byte[] mainimg = binaryReader1.ReadBytes((int)stream1.Length);

            HttpPostedFile postedFile2 = FileUpload2.PostedFile;
            Stream stream2 = postedFile2.InputStream;
            BinaryReader binaryReader2 = new BinaryReader(stream2);
            byte[] ovimg = binaryReader2.ReadBytes((int)stream2.Length);

            HttpPostedFile postedFile3 = FileUpload3.PostedFile;
            Stream stream3 = postedFile3.InputStream;
            BinaryReader binaryReader3 = new BinaryReader(stream3);
            byte[] ovimg2 = binaryReader3.ReadBytes((int)stream3.Length);

            HttpPostedFile postedFile4 = FileUpload4.PostedFile;
            Stream stream4 = postedFile4.InputStream;
            BinaryReader binaryReader4 = new BinaryReader(stream4);
            byte[] cplanimg = binaryReader4.ReadBytes((int)stream4.Length);

            HttpPostedFile postedFile5 = FileUpload5.PostedFile;
            Stream stream5 = postedFile5.InputStream;
            BinaryReader binaryReader5 = new BinaryReader(stream5);
            byte[] fplanimg = binaryReader5.ReadBytes((int)stream5.Length);

            HttpPostedFile postedFile6 = FileUpload6.PostedFile;
            Stream stream6 = postedFile6.InputStream;
            BinaryReader binaryReader6 = new BinaryReader(stream6);
            byte[] am1img = binaryReader6.ReadBytes((int)stream6.Length);

            HttpPostedFile postedFile7 = FileUpload7.PostedFile;
            Stream stream7 = postedFile7.InputStream;
            BinaryReader binaryReader7 = new BinaryReader(stream7);
            byte[] am2img = binaryReader7.ReadBytes((int)stream7.Length);

            HttpPostedFile postedFile8 = FileUpload8.PostedFile;
            Stream stream8 = postedFile8.InputStream;
            BinaryReader binaryReader8 = new BinaryReader(stream8);
            byte[] am3img = binaryReader8.ReadBytes((int)stream8.Length);

            HttpPostedFile postedFile9 = FileUpload9.PostedFile;
            Stream stream9 = postedFile9.InputStream;
            BinaryReader binaryReader9 = new BinaryReader(stream9);
            byte[] locimg = binaryReader9.ReadBytes((int)stream9.Length);

            HttpPostedFile postedFile10 = FileUpload10.PostedFile;
            Stream stream10 = postedFile10.InputStream;
            BinaryReader binaryReader10 = new BinaryReader(stream10);
            byte[] bhk1img = binaryReader10.ReadBytes((int)stream10.Length);

            HttpPostedFile postedFile11 = FileUpload11.PostedFile;
            Stream stream11 = postedFile11.InputStream;
            BinaryReader binaryReader11 = new BinaryReader(stream11);
            byte[] bhk2img = binaryReader11.ReadBytes((int)stream11.Length);

            HttpPostedFile postedFile12 = FileUpload12.PostedFile;
            Stream stream12 = postedFile12.InputStream;
            BinaryReader binaryReader12 = new BinaryReader(stream12);
            byte[] bhk3img = binaryReader12.ReadBytes((int)stream12.Length);

            string stat = "";
            bool isChecked = RadioButton1.Checked;
            if (isChecked)
                stat = RadioButton1.Text;
            else
                stat = RadioButton2.Text;

            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("page_info", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@main_img", mainimg);
            cmd.Parameters.AddWithValue("@header", TextBox12.Text);
            cmd.Parameters.AddWithValue("@header_des", TextBox1.Text);
            cmd.Parameters.AddWithValue("@auth_desc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@overview_img", ovimg);
            cmd.Parameters.AddWithValue("@overview_img2", ovimg2);
            cmd.Parameters.AddWithValue("@overview_desc", TextBox3.Text);
            cmd.Parameters.AddWithValue("@plan_heading", TextBox4.Text);
            cmd.Parameters.AddWithValue("@plan_desc", TextBox5.Text);
            cmd.Parameters.AddWithValue("@complex_plan_img", cplanimg);
            cmd.Parameters.AddWithValue("@floor_plan_img", fplanimg);
            cmd.Parameters.AddWithValue("@amenity_heading", TextBox6.Text);
            cmd.Parameters.AddWithValue("@amenity_desc", TextBox7.Text);
            cmd.Parameters.AddWithValue("@amenity1_img", am1img);
            cmd.Parameters.AddWithValue("@amenity1_desc", TextBox8.Text);
            cmd.Parameters.AddWithValue("@amenity2_img", am2img);
            cmd.Parameters.AddWithValue("@amenity2_desc", TextBox9.Text);
            cmd.Parameters.AddWithValue("@amenity3_img", am3img);
            cmd.Parameters.AddWithValue("@amenity3_desc", TextBox10.Text);
            cmd.Parameters.AddWithValue("@location_header", TextBox11.Text);
            cmd.Parameters.AddWithValue("@location_img", locimg);
            cmd.Parameters.AddWithValue("@status", stat);
            cmd.Parameters.AddWithValue("@price", Int32.Parse(TextBox13.Text));
            cmd.Parameters.AddWithValue("@a1bhk", Int32.Parse(TextBox14.Text));
            cmd.Parameters.AddWithValue("@a2bhk", Int32.Parse(TextBox15.Text));
            cmd.Parameters.AddWithValue("@a3bhk", Int32.Parse(TextBox16.Text));
            cmd.Parameters.AddWithValue("@floors", Int32.Parse(TextBox17.Text));
            cmd.Parameters.AddWithValue("@floor_rise_price", Int32.Parse(TextBox18.Text));
            cmd.Parameters.AddWithValue("@parking_price", Int32.Parse(TextBox19.Text));
            cmd.Parameters.AddWithValue("@bhk1_img", bhk1img);
            cmd.Parameters.AddWithValue("@bhk2_img", bhk2img);
            cmd.Parameters.AddWithValue("@bhk3_img", bhk3img);
            cmd.ExecuteNonQuery();
            sc.Close();


        }
    }
}

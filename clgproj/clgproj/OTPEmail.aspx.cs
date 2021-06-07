using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Windows.Forms;

namespace clgproj
{
    public partial class OTPEmail : System.Web.UI.Page
    {
        string OTPCode;
        public static string to;
        public OTPEmail()
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string from, pass, messageBody;
            Random random = new Random();
            OTPCode = (random.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = (TextBox1.Text).ToString();
            from = "sidsvpdx@gmail.com";
            pass = "$VPdx@187";
            messageBody = "Your Reset OTP Code is" + OTPCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Reset Your Password";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);

            try
            {
                smtp.Send(message);
                MessageBox.Show("Code Sent Successfully");

            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            Session["otp"] = OTPCode;
            Response.Redirect("fetchotp.aspx");

        }
    }
}
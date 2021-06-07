using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class fetchotp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["otp"] != null)
            {
                if (TextBox1.Text == Session["otp"].ToString())
                {
                    Response.Redirect("ChangePassword.aspx");
                    Session.Clear();
                }
            }
        }
    }
}
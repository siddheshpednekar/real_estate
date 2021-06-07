using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clgproj
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void allproj_click(object sender, EventArgs e)
        {
            Response.Redirect("~/projects.aspx?proj=All");
        }

        protected void linkbutton1_click(object sender, EventArgs e)
        {
            Response.Redirect("~/project_description.aspx?ID=4");
        }

        protected void linkbutton2_click(object sender, EventArgs e)
        {
            Response.Redirect("~/project_description.aspx?ID=4");
        }
    }
}
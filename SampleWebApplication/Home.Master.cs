using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    if (Session["LoginId"] == null)
            //        Response.Redirect("Login.aspx");
            //    else
            //    {
            //        Response.ClearHeaders();
            //        Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            //        Response.AddHeader("Pragma", "no-cache");
            //    }
            //}
        }

        protected void ContactButtonClick(object sender, EventArgs e)
        {

        }

        protected void LoginButtonClick(object sender, EventArgs e)
        {

        }

        protected void AboutButtonClick(object sender, EventArgs e)
        {

        }
    }
}
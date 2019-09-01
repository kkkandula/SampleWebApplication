using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRole.Text ="Welcome  "+ Session["Role"].ToString();
            
            if(Session["Role"].ToString()=="User")
            {
                HyperLink5.Visible = false;
            }
          
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

          
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("Login.aspx");

          
    
         }
    }
}
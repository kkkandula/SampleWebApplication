using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SampleWebApplication
{
    public partial class BGAdd : System.Web.UI.Page
    {
        DataTable dt;
        DataColumn dc;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            dt = Recruit();
            Session["BGvalue"] = dt;
            Response.Redirect("Admin.aspx");
        }

        public DataTable Recruit()
        {
            dt = new DataTable();
            dc = new DataColumn("Name");
            dt.Columns.Add(dc);
            dc = new DataColumn("BGStatus");
            dt.Columns.Add(dc);
            dc = new DataColumn("role");
            dt.Columns.Add(dc);
            dc = new DataColumn("email");
            dt.Columns.Add(dc);
            dc = new DataColumn("EmpStatus");
            dt.Columns.Add(dc);
            
            dt.Rows.Add(txtName.Text,"Initiated",txtRole.Text,txtemail.Text,txtstatus.SelectedValue);
            return dt;
        }
    }
}
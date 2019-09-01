using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SampleWebApplication
{
    public partial class Organization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateDetails();
        }

        protected void UpdateDetails()
        {
            DataSet ds=new DataSet();
            DataTable dt=new DataTable();
            
            DataColumn dc1, dc2;
            dc1 = new DataColumn("name");
            dt.Columns.Add(dc1);
            dc2 = new DataColumn("content");
            dt.Columns.Add(dc2);
            dt.Rows.Add("Organization", "Software");
            dt.Rows.Add("Business Domain ", "Technology");
            dt.Rows.Add("Technology", "www.example.com");
            dt.Rows.Add("Total Employees", "1000-5000");
            dt.Rows.Add("Started On", "01/01/2001");
            dt.Rows.Add("Primary Phone", "547-854-7412");
            dt.Rows.Add("Fax Number", "548-784-4515");
            dt.Rows.Add("Country", "United States");
            dt.Rows.Add("State", "Florida");
            dt.Rows.Add("City", "Orlando");

            ds.Tables.Add(dt);
            GridViewOrg.DataSource = ds.Tables[0];
            GridViewOrg.DataBind();
        }
    }
}
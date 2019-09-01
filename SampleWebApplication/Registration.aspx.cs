using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class Registration : System.Web.UI.Page
    {
        DataTable dt;
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!IsPostBack)
            {
                
                fillGrid();
            } 
        }


        private void fillGrid()
        {
            dt = new DataTable();
            dt = (DataTable)Session["Data"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            AddNewRecordRowToGrid();
            txtfname.Text = string.Empty;
            txtlname.Text = string.Empty;
            txtmail.Text = string.Empty;
            rdbtn.SelectedItem.Value = "Male";
            city.SelectedValue = "Hyderabad";

            Response.Redirect("EmployeeList.aspx");

        }

        private void AddNewRecordRowToGrid()
        {
            DataColumn dc;
            dt = new DataTable();
            dc = new DataColumn("FirstName");
            dt.Columns.Add(dc);
            dc = new DataColumn("LastName");
            dt.Columns.Add(dc);
            dc = new DataColumn("Gender1");
            dt.Columns.Add(dc);
            dc = new DataColumn("Email1");
            dt.Columns.Add(dc);
            dc = new DataColumn("City1");
            dt.Columns.Add(dc);
           
           
            dt.Rows.Add(txtfname.Text,txtlname.Text,rdbtn.SelectedItem,txtmail.Text,city.SelectedValue);
            Session["Data"] = dt;
            fillGrid();
        }




        

    }
}
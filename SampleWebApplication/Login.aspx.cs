using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;

namespace SampleWebApplication
{
    public partial class Login : System.Web.UI.Page
    {


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (((txtUsername.Text != "EC01")||(txtUsername.Text!="EC02")||(txtUsername.Text!="EC03")) && (txtPassword.Text != "sample"))
                {
              //  System.Windows.Forms.MessageBox.Show(" Please enter correct values");
                    MsgLabel.Text = "Please enter correct values";
                    txtUsername.Text = "";
                   
            }
            else if(((txtUsername.Text=="EC01")||(txtUsername.Text=="EC02"))&&(txtPassword.Text=="sample"))
            {
                Session["Role"] = "User";
                Response.Redirect("Organization.aspx");
            }
            else if((txtUsername.Text=="EC03")&&(txtPassword.Text=="sample"))
            {
                Session["Role"] = "Admin";
                Response.Redirect("Organization.aspx");
            }
			Session.Clear();
			Session.RemoveAll();
			Session.Abandon();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataGrid_Load();


        }




        protected void DataGrid_Load()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            DataColumn dc1,dc2;
            dc1 = new DataColumn("Username");
            dt.Columns.Add(dc1);
            dc2 = new DataColumn("Password");
            dt.Columns.Add(dc2);
            dc1 = new DataColumn("Role");
            dt.Columns.Add(dc1);
            dt.Rows.Add("EC01", "sample","User");
            dt.Rows.Add("EC02", "sample", "User");
            dt.Rows.Add("EC03", "sample","Admin");
            //dt.Rows.Add("EC04", "sample");
            //dt.Rows.Add("EC05", "sample");
            //dt.Rows.Add("EC06", "sample");
            //dt.Rows.Add("EC07", "sample");
            //dt.Rows.Add("EC08", "sample");
            //dt.Rows.Add("EC09", "sample");

            ds.Tables.Add(dt);
            gridView1.DataSource = ds.Tables[0];

            gridView1.DataBind();
            

        }
        }
    }


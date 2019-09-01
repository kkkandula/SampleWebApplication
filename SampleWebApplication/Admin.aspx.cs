using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SampleWebApplication
{
    public partial class Admin : System.Web.UI.Page
    {
        

        DataTable dt, dt1;
        DataTable dt2 = new DataTable();
        DataSet ds = new DataSet();
        DataColumn dc;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["BG"] != null)
                {
                    DefaultRecord();

                }

                else
                {

                    if (Session["BGvalue"] != null)
                    {
                        try
                        {
                            dt2 = (DataTable)Session["dataTableBG"];
                            dt1 = new DataTable();
                            dt1 = (DataTable)Session["BGvalue"];

                            dt2.Rows.Add(dt1.Rows[0][0], dt1.Rows[0][1], dt1.Rows[0][2], dt1.Rows[0][3], dt1.Rows[0][4]);

                            BGGrid.DataSource = dt2;
                            BGGrid.DataBind();

                            Session.Remove("BGvalue");
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else
                    {
                        dt2 = (DataTable)Session["dataTableBG"];
                            BGGrid.DataSource = dt2;
                            BGGrid.DataBind();


                    }
                }
            }


        }

        protected void DefaultRecord()
        {

            dt = new DataTable();
            DataColumn dc;
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



            dt.Rows.Add("Sharon", "Complete", "Software Engineer", "Sharon@example.com", "Active");
            dt.Rows.Add("Jennifer", "Complete", "Team Lead", "jennifer@example.com", "Active");
            dt.Rows.Add("Adams", "Complete", "Software Engineer", "adams@example.com", "Active");
            dt.Rows.Add("Anderson", "Complete", "Manager", "anderson@example.com", "Active");
            ds.Tables.Add(dt);

            Session["dataTableBG"] = dt;
            Session["BG"] = null;
            BGGrid.DataSource = dt;
            BGGrid.DataBind();

            FillDataSet();
        }

        private void FillDataSet()
        {

            dt2 = (DataTable)BGGrid.DataSource;
            BGGrid.DataSource = dt2;
            BGGrid.DataBind();


        }


    }
}
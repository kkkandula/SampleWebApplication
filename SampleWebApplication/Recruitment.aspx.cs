using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SampleWebApplication
{
    public partial class Recruitment : System.Web.UI.Page
    {
        DataTable dt, dt1;
        DataTable dt2 = new DataTable();
        DataSet ds = new DataSet();
        DataColumn dc;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Edp"] != null)
                {
                    DefaultRecord();

                }

                else
                {

                    if (Session["value"] != null)
                    {
                        try
                        {
                            dt2 = (DataTable)Session["dataTable"];
                            dt1 = new DataTable();
                            dt1 = (DataTable)Session["value"];

                            dt2.Rows.Add(dt1.Rows[0][0], dt1.Rows[0][1], dt1.Rows[0][2], dt1.Rows[0][3], dt1.Rows[0][4], dt1.Rows[0][5]);

                            Recru1.DataSource = dt2;
                            Recru1.DataBind();
                            Session.Remove("value");
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else
                    {
                        dt2 = (DataTable)Session["dataTable"];
                        Recru1.DataSource = dt2;
                        Recru1.DataBind();
                    }
                }
            }


        }

        protected void DefaultRecord()
        {

            dt = new DataTable();
            DataColumn dc;
            dc = new DataColumn("ReCode");
            dt.Columns.Add(dc);
            dc = new DataColumn("JTitle");
            dt.Columns.Add(dc);

            dc = new DataColumn("ReStatus");
            dt.Columns.Add(dc);

            dc = new DataColumn("Raise");
            dt.Columns.Add(dc);

            dc = new DataColumn("Pos");
            dt.Columns.Add(dc);

            dc = new DataColumn("FillPos");
            dt.Columns.Add(dc);

            dt.Rows.Add("REQ12345", "C# Developer", "Initiated", "Kishore", "6", "4");
            dt.Rows.Add("REQ12545", "Sql Developer", "Approval Pending", "Sonali", "4", "0");
            dt.Rows.Add("REQ22345", "Manual Tester", "Initiated", "Pradeep", "1", "0");
            dt.Rows.Add("REQ42345", "Automation Tester", "Submitted", "Jaswanth", "2", "0");
            dt.Rows.Add("REQ12395", "SAP", "Approval Pending", "Suresh", "2", "1");
            dt.Rows.Add("REQ19645", "BPO", "Completed", "Ramesh", "4", "4");

            ds.Tables.Add(dt);

            Session["dataTable"] = dt;
            Session["Edp"] = null;
            Recru1.DataSource = dt;
            Recru1.DataBind();

            FillDataSet();
        }

        private void FillDataSet()
        {

            dt2 = (DataTable)Recru1.DataSource;
            Recru1.DataSource = dt2;
            Recru1.DataBind();


        }

        protected void OnDelete(object sender, EventArgs e)
        {
            GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
            DataTable dt2 = Session["dataTable"] as DataTable;
            dt2.Rows.RemoveAt(row.RowIndex);
            Session["dataTable"] = dt2;
            Recru1.DataSource = dt2;

            Recru1.DataBind();
        }


    }
}
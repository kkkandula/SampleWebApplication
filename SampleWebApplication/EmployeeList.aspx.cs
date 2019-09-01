using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SampleWebApplication
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataTable dt, dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                if (Session["elist"] != null)
                {
                    UpdateList();
                    if (Session["Data"] == null)
                    {
                        dt = (DataTable)Session["EmpList"];
                        GridViewList.DataSource = dt;

                        GridViewList.DataBind();
                    }
                    else
                    {
                        dt = (DataTable)Session["EmpList"];

                        dt1 = (DataTable)Session["Data"];
                        dt.Rows.Add(dt1.Rows[0][0], dt1.Rows[0][1], dt1.Rows[0][2], dt1.Rows[0][3], dt1.Rows[0][4]);
                        GridViewList.DataSource = dt;

                        GridViewList.DataBind();
                        Session.Remove("Data");
                    }
                }
                else
                {

                    if (Session["Data"] == null)
                    {
                        dt = (DataTable)Session["EmpList"];
                        GridViewList.DataSource = dt;

                        GridViewList.DataBind();
                    }
                    else
                    {
                        dt = (DataTable)Session["EmpList"];

                        dt1 = (DataTable)Session["Data"];
                        dt.Rows.Add(dt1.Rows[0][0], dt1.Rows[0][1], dt1.Rows[0][2], dt1.Rows[0][3], dt1.Rows[0][4]);
                        GridViewList.DataSource = dt;

                        GridViewList.DataBind();
                        Session.Remove("Data");
                    }
                }
            }
        }

        protected void UpdateList()
        {

            DataColumn dc;
            dt = new DataTable();
            dc = new DataColumn("firstName");
            dt.Columns.Add(dc);
            dc = new DataColumn("lastName");
            dt.Columns.Add(dc);
            dc = new DataColumn("gender");
            dt.Columns.Add(dc);
            dc = new DataColumn("email");
            dt.Columns.Add(dc);
            dc = new DataColumn("city");
            dt.Columns.Add(dc);

            dt.Rows.Add("Selva", "Kumar", "Male", "Selva@gmail.com", "Hyderabad");
            dt.Rows.Add("Mithilesh", "Kumar", "Male", "Mithilesh@gmail.com", "Bangalore");
            dt.Rows.Add("Aqib", "Shehzad", "Male", "Shehzad@gmail.com", "Chennai");
            dt.Rows.Add("Sonu", "Chowdary", "Female", "Chowdary@gmail.com", "Hyderabad");
            dt.Rows.Add("Vignesh", "Mani", "Male", "Vignesh@gmail.com", "Chennai");

            ds.Tables.Add(dt);
            GridViewList.DataSource = ds.Tables[0];

            GridViewList.DataBind();
            Session["EmpList"] = dt;
            Session["elist"] = null;
        }

        protected void OnDelete(object sender, EventArgs e)
        {
            GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
            DataTable dt = Session["EmpList"] as DataTable;
            dt.Rows.RemoveAt(row.RowIndex);
            Session["EmpList"] = dt;
            GridViewList.DataSource = dt;

            GridViewList.DataBind();
        }

    }
}
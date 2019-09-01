using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class RecruitAdd : System.Web.UI.Page
    {
        DataTable dt;
        DataColumn dc;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            dt = Recruit();
            Session["value"] = dt;
            Response.Redirect("Recruitment.aspx");
        }

        public DataTable Recruit()
        {
            dt = new DataTable();
            dc = new DataColumn("Re");
            dt.Columns.Add(dc);
            dc = new DataColumn("txtRole");
            dt.Columns.Add(dc);
            dc = new DataColumn("Resta");
            dt.Columns.Add(dc);
            dc = new DataColumn("txtapp");
            dt.Columns.Add(dc);
            dc = new DataColumn("txtpos");
            dt.Columns.Add(dc);
            dc = new DataColumn("Fillpos");
            dt.Columns.Add(dc);

            dt.Rows.Add(txtReqcode.Text, txtRole.Text, "Initiated", txtapp.Text, txtpos.Text, "0");
            return dt;
        }

        protected void txtpos_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtpos.Text, "[^0-9]"))
            {
                Label4.Text = "Please enter only numbers.";
                txtpos.Text = txtpos.Text.Remove(txtpos.Text.Length - 1);
            }
        }
    }
}
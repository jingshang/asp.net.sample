using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomSDatabaseVersion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionStr);

            con.Open();
            try
            {
                DataTable table1 = new System.Data.DataTable();
                table1.Columns.Add(new DataColumn("F_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("F_VERSION", typeof(string)));
                table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));

                SqlCommand com1 = new SqlCommand("SELECT * FROM S_DATABASE_VERSION", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["F_VERSION"] = sdr1["F_VERSION"].ToString();
                    row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                    table1.Rows.Add(row);
                }
                this.S_DATABASE_VERSION.DataSource = table1;
                this.S_DATABASE_VERSION.DataKeyNames = new string[3] { "F_ID", "F_VERSION", "F_CREATE_DATE" };
                this.S_DATABASE_VERSION.DataBind();
                sdr1.Close();
            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }

    protected void SELECT_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var f_id = S_DATABASE_VERSION.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_version = S_DATABASE_VERSION.DataKeys[row.RowIndex].Values["F_VERSION"].ToString();
        var f_create_date = S_DATABASE_VERSION.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();

        ID.Text = f_id;
        VERSION.Text = f_version;
        CREATE_DATE.Text = f_create_date;
    }
}
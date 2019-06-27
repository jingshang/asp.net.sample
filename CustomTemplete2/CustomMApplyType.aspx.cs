using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomMApplyType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            DataTable table1 = new DataTable();
            table1.Columns.Add(new DataColumn("F_ID", typeof(int)));
            table1.Columns.Add(new DataColumn("F_NAME", typeof(string)));

            SqlCommand com1 = new SqlCommand("SELECT * FROM M_APPLY_TYPE", con);
            SqlDataReader sdr1 = com1.ExecuteReader();
            while (sdr1.Read())
            {
                DataRow row = table1.NewRow();
                row["F_ID"] = sdr1["F_ID"].ToString();
                row["F_NAME"] = sdr1["F_NAME"].ToString();
                table1.Rows.Add(row);
            }
            this.M_APPLY_TYPE.DataSource = table1;
            this.M_APPLY_TYPE.DataBind();
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


    protected void M_APPLY_TYPE_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}
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
            table1.Columns.Add(new DataColumn("BIND_F_ID", typeof(int)));
            table1.Columns.Add(new DataColumn("BIND_F_NAME", typeof(string)));

            SqlCommand com1 = new SqlCommand("SELECT * FROM M_APPLY_TYPE", con);
            SqlDataReader sdr1 = com1.ExecuteReader();
            while (sdr1.Read())
            {
                DataRow row = table1.NewRow();
                row["BIND_F_ID"] = sdr1["F_ID"].ToString();
                row["BIND_F_NAME"] = sdr1["F_NAME"].ToString();
                table1.Rows.Add(row);
            }
            this.M_APPLY_TYPE.DataSource = table1;
            this.M_APPLY_TYPE.DataKeyNames = new string[1] { "BIND_F_ID" };
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
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var f_id = M_APPLY_TYPE.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_name = M_APPLY_TYPE.DataKeys[row.RowIndex].Values["F_NAME"].ToString();

        ID.Text = f_id;
        NAME.Text = f_name;
    }
}

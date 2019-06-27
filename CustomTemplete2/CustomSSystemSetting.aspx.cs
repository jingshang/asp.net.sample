using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomSSystemSetting : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("SETTING1", typeof(string)));
                table1.Columns.Add(new DataColumn("SETTING2", typeof(string)));

                SqlCommand com1 = new SqlCommand("SELECT * FROM S_SYSTEM_SETTING", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["SETTING1"] = sdr1["SETTING1"].ToString();
                    row["SETTING2"] = sdr1["SETTING2"].ToString();
                    table1.Rows.Add(row);
                }
                this.S_SYSTEM_SETTING.DataSource = table1;
                this.S_SYSTEM_SETTING.DataKeyNames = new string[3] { "F_ID", "SETTING1", "SETTING2" };
                this.S_SYSTEM_SETTING.DataBind();
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

        var f_id = S_SYSTEM_SETTING.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_setting1 = S_SYSTEM_SETTING.DataKeys[row.RowIndex].Values["SETTING1"].ToString();
        var f_setting2 = S_SYSTEM_SETTING.DataKeys[row.RowIndex].Values["SETTING2"].ToString();

        ID.Text = f_id;
        SETTING1.Text = f_setting1;
        SETTING2.Text = f_setting2;
    }
}
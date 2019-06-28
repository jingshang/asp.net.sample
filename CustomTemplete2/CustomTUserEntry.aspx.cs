using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomTUserEntry : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_LAST_NAME", typeof(string)));
                table1.Columns.Add(new DataColumn("F_FIRST_NAME", typeof(string)));
                table1.Columns.Add(new DataColumn("F_LAST_NAME_KANA", typeof(string)));
                table1.Columns.Add(new DataColumn("F_FIRST_NAME_KANA", typeof(string)));
                table1.Columns.Add(new DataColumn("F_EMAIL", typeof(string)));
                table1.Columns.Add(new DataColumn("F_PASS", typeof(string)));
                table1.Columns.Add(new DataColumn("F_CREATE_USER_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("F_UPDATE_USER_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("F_UPDATE_DATE", typeof(DateTime)));
                table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));
                SqlCommand com1 = new SqlCommand(@"
SELECT 
*
FROM T_USER_ENTRY ", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["F_LAST_NAME"] = sdr1["F_LAST_NAME"].ToString();
                    row["F_FIRST_NAME"] = sdr1["F_FIRST_NAME"].ToString();
                    row["F_LAST_NAME_KANA"] = sdr1["F_LAST_NAME_KANA"].ToString();
                    row["F_FIRST_NAME_KANA"] = sdr1["F_FIRST_NAME_KANA"].ToString();
                    row["F_EMAIL"] = sdr1["F_EMAIL"].ToString();
                    row["F_PASS"] = sdr1["F_PASS"].ToString();
                    row["F_CREATE_USER_ID"] = sdr1["F_CREATE_USER_ID"].ToString();
                    row["F_UPDATE_USER_ID"] = sdr1["F_UPDATE_USER_ID"].ToString();
                    row["F_UPDATE_DATE"] = sdr1["F_UPDATE_DATE"].ToString();
                    row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                    table1.Rows.Add(row);
                }
                this.T_USER_ENTRY.DataSource = table1;
                this.T_USER_ENTRY.DataKeyNames = new string[11] { "F_ID", "F_LAST_NAME", "F_LAST_NAME_KANA", "F_CREATE_USER_ID", "F_CREATE_DATE", "F_FIRST_NAME", "F_FIRST_NAME_KANA", "F_EMAIL", "F_PASS", "F_UPDATE_DATE", "F_UPDATE_USER_ID" };
                this.T_USER_ENTRY.DataBind();
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

        var f_id = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_last_name = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_LAST_NAME"].ToString();
        var f_first_name = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_FIRST_NAME"].ToString();
        var f_last_name_kana = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_LAST_NAME_KANA"].ToString();
        var f_first_name_kana = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_FIRST_NAME_KANA"].ToString();
        var f_email = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_EMAIL"].ToString();
        var f_pass = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_PASS"].ToString();
        var f_create_user_id = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var f_update_user_id = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_UPDATE_USER_ID"].ToString();
        var f_update_date = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_UPDATE_DATE"].ToString();
        var f_create_date = T_USER_ENTRY.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();


        ID.Text = f_id;
        LAST_NAME.Text = f_last_name;
        FIRST_NAME.Text = f_first_name;
        LAST_NAME_KANA.Text = f_last_name_kana;
        FIRST_NAME_KANA.Text = f_first_name_kana;
        EMAIL.Text = f_email;
        PASS.Text = f_pass;
        UPDATE_USER_ID.Text = f_update_user_id;
        CREATE_USER_ID.Text = f_create_user_id;
        UPDATE_DATE.Text = f_update_date;
        CREATE_DATE.Text = f_create_date;

    }
}
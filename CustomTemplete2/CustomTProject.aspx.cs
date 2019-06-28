using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomTProject : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_PROJECT_NUMBER", typeof(string)));
                table1.Columns.Add(new DataColumn("BORAD_TYPE", typeof(string)));
                table1.Columns.Add(new DataColumn("F_CREATE_USER_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));

                SqlCommand com1 = new SqlCommand(@"
SELECT 
A.F_ID AS 'PROJECT_ID',
F_PROJECT_NUMBER,
B.F_NAME as 'BORAD_TYPE',
F_CREATE_USER_ID,
F_CREATE_DATE
FROM T_PROJECT A
inner join M_BORAD_TYPE B on A.F_BORAD_TYPE=B.F_ID", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["PROJECT_ID"].ToString();
                    row["F_PROJECT_NUMBER"] = sdr1["F_PROJECT_NUMBER"].ToString();
                    row["BORAD_TYPE"] = sdr1["BORAD_TYPE"].ToString();
                    row["F_CREATE_USER_ID"] = sdr1["F_CREATE_USER_ID"].ToString();
                    row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                    table1.Rows.Add(row);
                }
                this.T_PROJECT.DataSource = table1;
                this.T_PROJECT.DataKeyNames = new string[5] { "F_ID", "BORAD_TYPE", "F_PROJECT_NUMBER", "F_CREATE_USER_ID", "F_CREATE_DATE" };
                this.T_PROJECT.DataBind();
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

        var f_id = T_PROJECT.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_project_number = T_PROJECT.DataKeys[row.RowIndex].Values["F_PROJECT_NUMBER"].ToString();
        var borad_type = T_PROJECT.DataKeys[row.RowIndex].Values["BORAD_TYPE"].ToString();
        var f_create_user_id = T_PROJECT.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var f_create_date = T_PROJECT.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();


        ID.Text = f_id;
        PROJECT_NUMBER.Text = f_project_number;
        BORAD_TYPE.Text = borad_type;
        CREATE_USER_ID.Text = f_create_user_id;
        CREATE_DATE.Text = f_create_date;

    }
}
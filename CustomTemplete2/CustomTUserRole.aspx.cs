using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomTUserRole : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_USER_ID", typeof(string)));
                table1.Columns.Add(new DataColumn("USER_NAME", typeof(string)));
                table1.Columns.Add(new DataColumn("ROLE_NAME", typeof(string)));
                SqlCommand com1 = new SqlCommand(@"
SELECT 
F_USER_ID,
B.F_LAST_NAME + B.F_FIRST_NAME as 'USER_NAME',
C.F_ROLE_NAME as 'ROLE_NAME' 
FROM T_USER_ROLE A
inner join T_USER B on A.F_USER_ID=B.F_ID
inner join M_ROLE C on A.F_ROLE_ID=C.F_ID
", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_USER_ID"] = sdr1["F_USER_ID"].ToString();
                    row["USER_NAME"] = sdr1["USER_NAME"].ToString();
                    row["ROLE_NAME"] = sdr1["ROLE_NAME"].ToString();
                    
                    table1.Rows.Add(row);
                }
                this.T_USER_ROLE.DataSource = table1;
                this.T_USER_ROLE.DataKeyNames = new string[3] {"F_USER_ID", "ROLE_NAME","USER_NAME" };
                this.T_USER_ROLE.DataBind();
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

        var user_id = T_USER_ROLE.DataKeys[row.RowIndex].Values["F_USER_ID"].ToString();
        var user_name = T_USER_ROLE.DataKeys[row.RowIndex].Values["USER_NAME"].ToString();
        var role_name = T_USER_ROLE.DataKeys[row.RowIndex].Values["ROLE_NAME"].ToString();

        USER_ID.Text = user_id;
        USER_NAME.Text = user_name;
        ROLE_NAME.Text = role_name;
       

    }
}
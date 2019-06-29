using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_WebUserControlT_USER_ROLE : System.Web.UI.UserControl
{
    private EventHandler original_event;

    public event EventHandler OriginalEvent
    {
        add
        {
            original_event += value;
        }
        remove
        {
            original_event -= value;
        }
    }
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
                this.T_USER_ROLE.DataKeyNames = new string[3] { "F_USER_ID", "ROLE_NAME", "USER_NAME" };
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

    protected void T_USER_ROLE_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "SELECT":
                if (original_event != null)
                {
                    original_event(sender, e);
                }
                break;
        }
    }
}
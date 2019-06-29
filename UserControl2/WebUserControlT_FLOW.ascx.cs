using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_WebUserControlT_FLOW : System.Web.UI.UserControl
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
                    table1.Columns.Add(new DataColumn("F_NUMBER", typeof(string)));
                    table1.Columns.Add(new DataColumn("FLOW_TYPE", typeof(string)));
                    table1.Columns.Add(new DataColumn("CREATE_USER_ID", typeof(int)));
                    table1.Columns.Add(new DataColumn("CREATE_DATE", typeof(DateTime)));

                    SqlCommand com1 = new SqlCommand(@"
SELECT 
C.F_ID as 'F_ID',
F_NUMBER,
C.F_NAME as 'FLOW_TYPE',
A.F_CREATE_USER_ID as 'FLOW_CREATE_USER_ID',
A.F_CREATE_DATE as'FLOW_CREATE_DATE'
FROM T_FLOW A
inner join T_ROOT B on A.F_ID=B.F_ID
inner join M_FLOW_TYPE C on A.F_FLOW_TYPE=C.F_ID", con);
                    SqlDataReader sdr1 = com1.ExecuteReader();
                    while (sdr1.Read())
                    {
                        DataRow row = table1.NewRow();
                        row["F_ID"] = sdr1["F_ID"].ToString();
                        row["F_NUMBER"] = sdr1["F_NUMBER"].ToString();
                        row["FLOW_TYPE"] = sdr1["FLOW_TYPE"].ToString();
                        row["CREATE_USER_ID"] = sdr1["FLOW_CREATE_USER_ID"].ToString();
                        row["CREATE_DATE"] = sdr1["FLOW_CREATE_DATE"].ToString();
                        table1.Rows.Add(row);
                    }
                    this.T_FLOW.DataSource = table1;
                    this.T_FLOW.DataKeyNames = new string[5] { "F_ID", "F_NUMBER", "FLOW_TYPE", "CREATE_DATE", "CREATE_USER_ID" };
                    this.T_FLOW.DataBind();
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

        
    }

    protected void T_FLOW_RowCommand(object sender, GridViewCommandEventArgs e)
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

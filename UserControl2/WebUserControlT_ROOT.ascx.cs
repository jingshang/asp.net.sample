using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_WebUserControlT_ROOT : System.Web.UI.UserControl
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
                table1.Columns.Add(new DataColumn("F_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("PROJECT_NUMBER", typeof(string)));
                table1.Columns.Add(new DataColumn("APPLY_TYPE", typeof(string)));
                table1.Columns.Add(new DataColumn("F_CREATE_USER_ID", typeof(int)));
                table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));

                SqlCommand com1 = new SqlCommand(@"
SELECT 
A.F_ID AS 'ROOT_ID',
C.F_PROJECT_NUMBER as 'PROJECT_NUMBER',
B.F_NAME as 'APPLY_TYPE',
A.F_CREATE_USER_ID as 'F_CREATE_USER_ID',
A.F_CREATE_DATE as 'F_CREATE_DATE'
FROM T_ROOT A
inner join M_APPLY_TYPE B on A.F_APPLY_TYPE = B.F_ID
inner join T_PROJECT C on A.F_PROJECT_ID=C.F_ID", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["ROOT_ID"].ToString();
                    row["PROJECT_NUMBER"] = sdr1["PROJECT_NUMBER"].ToString();
                    row["APPLY_TYPE"] = sdr1["APPLY_TYPE"].ToString();
                    row["F_CREATE_USER_ID"] = sdr1["F_CREATE_USER_ID"].ToString();
                    row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                    table1.Rows.Add(row);
                }
                this.T_ROOT.DataSource = table1;
                this.T_ROOT.DataKeyNames = new string[5] { "F_ID", "APPLY_TYPE", "PROJECT_NUMBER", "F_CREATE_USER_ID", "F_CREATE_DATE" };
                this.T_ROOT.DataBind();
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

    protected void T_ROOT_RowCommand(object sender, GridViewCommandEventArgs e)
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
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_WebUserControlT_APPLY_MODIFY : System.Web.UI.UserControl
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
                    table1.Columns.Add(new DataColumn("F_VERSION", typeof(string)));
                    table1.Columns.Add(new DataColumn("MODIFY_TYPE", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_TITLE", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_BEGIN_DATE", typeof(DateTime)));
                    table1.Columns.Add(new DataColumn("F_END_DATE", typeof(DateTime)));
                    table1.Columns.Add(new DataColumn("F_COMMENT", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_IS_INVASION", typeof(bool)));
                    table1.Columns.Add(new DataColumn("INVASION_NAME", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_INVASION_SEVERE_TEXT", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_IS_MONEY_TRANSFER", typeof(bool)));
                    table1.Columns.Add(new DataColumn("MONEY_TRANSFER_TYPE", typeof(string)));
                    table1.Columns.Add(new DataColumn("F_CREATE_USER_ID", typeof(int)));
                    table1.Columns.Add(new DataColumn("F_UPDATE_USER_ID", typeof(int)));
                    table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));
                    table1.Columns.Add(new DataColumn("F_UPDATE_DATE", typeof(DateTime)));

                    SqlCommand com1 = new SqlCommand(@"
SELECT A.F_ID as 'APPLY_MODIFY_ID',
F_VERSION,
D.F_NAME as 'MODIFY_TYPE',
F_TITLE,
F_BEGIN_DATE,
F_END_DATE,
F_COMMENT,
F_IS_INVASION,
B.F_NAME as 'INVASION_NAME',
F_INVASION_SEVERE_TEXT,
F_IS_MONEY_TRANSFER,
C.F_NAME as 'MONEY_TRANSFER_TYPE',
F_CREATE_USER_ID,
F_UPDATE_USER_ID,
F_CREATE_DATE,
F_UPDATE_DATE
from T_APPLY_MODIFY A left outer join M_INVASION_TYPE B on A.F_INVASION_TYPE = B.F_ID
left outer join M_MONEY_TRANSFER_TYPE C on A.F_MONEY_TRANSFER_TYPE = C.F_ID
left outer join M_MODIFY_TYPE D on A.F_MODIFY_TYPE = D.F_ID", con);
                    SqlDataReader sdr1 = com1.ExecuteReader();
                    while (sdr1.Read())
                    {
                        DataRow row = table1.NewRow();
                        row["F_ID"] = sdr1["APPLY_MODIFY_ID"].ToString();
                        row["F_VERSION"] = sdr1["F_VERSION"].ToString();
                        row["MODIFY_TYPE"] = sdr1["MODIFY_TYPE"].ToString();
                        row["F_TITLE"] = sdr1["F_TITLE"].ToString();
                        row["F_BEGIN_DATE"] = sdr1["F_BEGIN_DATE"].ToString();
                        row["F_END_DATE"] = sdr1["F_END_DATE"].ToString();
                        row["F_COMMENT"] = sdr1["F_COMMENT"].ToString();
                        row["F_IS_INVASION"] = sdr1["F_IS_INVASION"].ToString();
                        row["INVASION_NAME"] = sdr1["INVASION_NAME"].ToString();
                        row["F_INVASION_SEVERE_TEXT"] = sdr1["F_INVASION_SEVERE_TEXT"].ToString();
                        row["F_IS_MONEY_TRANSFER"] = sdr1["F_IS_MONEY_TRANSFER"].ToString();
                        row["MONEY_TRANSFER_TYPE"] = sdr1["MONEY_TRANSFER_TYPE"].ToString();
                        row["F_CREATE_USER_ID"] = sdr1["F_CREATE_USER_ID"].ToString();
                        row["F_UPDATE_USER_ID"] = sdr1["F_UPDATE_USER_ID"].ToString();
                        row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                        row["F_UPDATE_DATE"] = sdr1["F_UPDATE_DATE"].ToString();
                        table1.Rows.Add(row);
                    }
                    this.T_APPLY_MODIFY.DataSource = table1;
                    this.T_APPLY_MODIFY.DataKeyNames = new string[16] { "MODIFY_TYPE", "F_UPDATE_DATE", "F_CREATE_DATE", "F_UPDATE_USER_ID", "F_CREATE_USER_ID", "MONEY_TRANSFER_TYPE", "F_IS_MONEY_TRANSFER", "F_ID", "F_VERSION", "F_TITLE", "F_BEGIN_DATE", "F_END_DATE", "F_COMMENT", "F_IS_INVASION", "INVASION_NAME", "F_INVASION_SEVERE_TEXT" };
                    this.T_APPLY_MODIFY.DataBind();
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

    protected void T_APPLY_MODIFY_RowCommand(object sender, GridViewCommandEventArgs e)
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
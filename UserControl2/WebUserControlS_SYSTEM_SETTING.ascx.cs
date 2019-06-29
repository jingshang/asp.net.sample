﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_WebUserControlS_SYSTEM_SETTING : System.Web.UI.UserControl
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

    protected void S_SYSTEM_SETTING_RowCommand(object sender, GridViewCommandEventArgs e)
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
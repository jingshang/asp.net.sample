﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomMRole : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_ROLE_NAME", typeof(string)));

                SqlCommand com1 = new SqlCommand("SELECT * FROM M_ROLE", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["F_ROLE_NAME"] = sdr1["F_ROLE_NAME"].ToString();
                    table1.Rows.Add(row);
                }
                this.M_ROLE.DataSource = table1;
                this.M_ROLE.DataKeyNames = new string[2] { "F_ID", "F_ROLE_NAME" };
                this.M_ROLE.DataBind();
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

        var f_id = M_ROLE.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_name = M_ROLE.DataKeys[row.RowIndex].Values["F_ROLE_NAME"].ToString();

        ID.Text = f_id;
        ROLE_NAME.Text = f_name;
    }
}
﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete2_CustomTLoginHistory : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_INPUT_MAIL", typeof(string)));
                table1.Columns.Add(new DataColumn("F_LOGIN_RESULT", typeof(string)));
                table1.Columns.Add(new DataColumn("F_IP", typeof(int)));
                table1.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(DateTime)));

                SqlCommand com1 = new SqlCommand(@"
SELECT 
*
FROM T_LOGIN_HISTORY ", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["F_INPUT_MAIL"] = sdr1["F_INPUT_MAIL"].ToString();
                    row["F_LOGIN_RESULT"] = sdr1["F_LOGIN_RESULT"].ToString();
                    row["F_IP"] = sdr1["F_IP"].ToString();
                    row["F_CREATE_DATE"] = sdr1["F_CREATE_DATE"].ToString();
                    table1.Rows.Add(row);
                }
                this.T_LOGIN_HISTORY.DataSource = table1;
                this.T_LOGIN_HISTORY.DataKeyNames = new string[5] { "F_ID", "F_INPUT_MAIL", "F_LOGIN_RESULT", "F_IP", "F_CREATE_DATE" };
                this.T_LOGIN_HISTORY.DataBind();
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

        var f_id = T_LOGIN_HISTORY.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_input_mail = T_LOGIN_HISTORY.DataKeys[row.RowIndex].Values["F_INPUT_MAIL"].ToString();
        var f_login_result = T_LOGIN_HISTORY.DataKeys[row.RowIndex].Values["F_LOGIN_RESULT"].ToString();
        var f_ip = T_LOGIN_HISTORY.DataKeys[row.RowIndex].Values["F_IP"].ToString();
        var f_create_date = T_LOGIN_HISTORY.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();


        ID.Text = f_id;
        INPUT_MAIL.Text = f_input_mail;
        LOGIN_RESULT.Text = f_login_result;
        IP.Text = f_ip;
        CREATE_DATE.Text = f_create_date;

    }
}
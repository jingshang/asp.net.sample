using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete3_T_APPLY_ENTRY : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_VERSION", typeof(string)));
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
SELECT A.F_ID as 'APPLY_ENTRY_ID',
F_VERSION,
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
from T_APPLY_ENTRY A left outer join M_INVASION_TYPE B on A.F_INVASION_TYPE = B.F_ID
left outer join M_MONEY_TRANSFER_TYPE C on A.F_MONEY_TRANSFER_TYPE = C.F_ID ", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["APPLY_ENTRY_ID"].ToString();
                    row["F_VERSION"] = sdr1["F_VERSION"].ToString();
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
                this.T_APPLY_ENTRY.DataSource = table1;
                this.T_APPLY_ENTRY.DataKeyNames = new string[15] { "F_UPDATE_DATE", "F_CREATE_DATE", "F_UPDATE_USER_ID", "F_CREATE_USER_ID", "MONEY_TRANSFER_TYPE", "F_IS_MONEY_TRANSFER", "F_ID", "F_VERSION", "F_TITLE", "F_BEGIN_DATE", "F_END_DATE", "F_COMMENT", "F_IS_INVASION", "INVASION_NAME", "F_INVASION_SEVERE_TEXT" };
                this.T_APPLY_ENTRY.DataBind();
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

        var f_id = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_version = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_VERSION"].ToString();
        var f_title = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_TITLE"].ToString();
        var f_begin_date = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_BEGIN_DATE"].ToString();
        var f_end_date = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_END_DATE"].ToString();
        var f_comment = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_COMMENT"].ToString();
        var f_is_invasion = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_IS_INVASION"].ToString();
        var invasion_type = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["INVASION_NAME"].ToString();
        var f_invasion_severe_text = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_INVASION_SEVERE_TEXT"].ToString();
        var f_is_money_transfer = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_IS_MONEY_TRANSFER"].ToString();
        var money_transfer_type = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["MONEY_TRANSFER_TYPE"].ToString();
        var f_create_user_id = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var f_update_user_id = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_UPDATE_USER_ID"].ToString();
        var f_create_date = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();
        var f_update_date = T_APPLY_ENTRY.DataKeys[row.RowIndex].Values["F_UPDATE_DATE"].ToString();

        ID.Text = f_id;
        VERSION.Text = f_version;
        TITLE.Text = f_title;
        BEGIN_DATE.Text = f_begin_date;
        END_DATE.Text = f_end_date;
        COMMENT.Text = f_comment;
        IS_INVASION.Text = f_is_invasion;
        INVASION_TYPE.Text = invasion_type;
        INVASION_SEVERE_TEXT.Text = f_invasion_severe_text;
        IS_MONEY_TRANSFER.Text = f_is_money_transfer;
        MONEY_TRANSFER_TYPE.Text = money_transfer_type;
        CREATE_USER_ID.Text = f_create_user_id;
        UPDATE_USER_ID.Text = f_update_user_id;
        CREATE_DATE.Text = f_create_date;
        UPDATE_DATE.Text = f_update_date;
    }

    protected void UPDATE_Click(object sender, EventArgs e)
    {
        var connectionString = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;

        var connection = new SqlConnection(connectionString);

        try
        {
            // データベースの接続開始
            connection.Open();

            var transaction = connection.BeginTransaction();
            var command = new SqlCommand() { Connection = connection, Transaction = transaction };

            try
            {
                command.CommandText = @"update T_APPLY_ENTRY set  F_VERSION=@version,F_TITLE=@title,F_BEGIN_DATE=@b_Date, F_END_DATE=@e_Date,F_COMMENT=@comment,F_IS_INVASION=@is_Invarsion,F_INVASION_TYPE=@invarsion_type,F_INVASION_SEVERE_TEXT=@invasion_severe_txt,F_IS_MONEY_TRANSFER=@is_MONEY_T,F_MONEY_TRANSFER_TYPE=@money_Type,F_CREATE_USER_ID=@create_Id,F_UPDATE_USER_ID=@update_ID,F_CREATE_DATE=@create_Date,F_UPDATE_DATE=@update_Date where F_ID=@id";
                command.Parameters.Add(new SqlParameter("@id", ID.Text));
                command.Parameters.Add(new SqlParameter("@version", VERSION.Text));
                command.Parameters.Add(new SqlParameter("@title", TITLE.Text));
                command.Parameters.Add(new SqlParameter("@b_Date", BEGIN_DATE.Text));
                command.Parameters.Add(new SqlParameter("@e_Date", END_DATE.Text.ToString()));
                command.Parameters.Add(new SqlParameter("@comment", COMMENT.Text));
                command.Parameters.Add(new SqlParameter("@is_Invarsion", IS_INVASION.SelectedItem.Text == "有"));
                command.Parameters.Add(new SqlParameter("@invarsion_type", INVASION_TYPE.SelectedValue));
                command.Parameters.Add(new SqlParameter("@invasion_severe_txt", INVASION_SEVERE_TEXT.Text));
                command.Parameters.Add(new SqlParameter("@is_Money_T", IS_MONEY_TRANSFER.SelectedItem.Text == "有"));
                command.Parameters.Add(new SqlParameter("@money_Type", MONEY_TRANSFER_TYPE.SelectedValue));
                command.Parameters.Add(new SqlParameter("@update_Id", UPDATE_USER_ID.Text));
                command.Parameters.Add(new SqlParameter("@create_Id", CREATE_USER_ID.Text));
                command.Parameters.Add(new SqlParameter("@update_Date", CREATE_DATE.Text));
                command.Parameters.Add(new SqlParameter("@create_Date", UPDATE_DATE.Text));

                // 親テーブルを挿入するSQLの実行
                command.ExecuteNonQuery();

                // コミット
                transaction.Commit();
            }
            catch
            {
                // ロールバック
                transaction.Rollback();
                throw;
            }
            finally
            {
                transaction.Dispose();
                command.Dispose();
            }
        }
        catch (Exception exception)
        {
            Console.WriteLine(exception.Message);
            throw;
        }
        finally
        {
            // データベースの接続終了
            connection.Close();
            connection.Dispose();

        }
        Response.Redirect("~/kurihara/CustomTemplete3/T_APPLY_ENTRY.aspx");
    }
}
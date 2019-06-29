using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete3_M_MODIFY_TYPE : System.Web.UI.Page
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
                table1.Columns.Add(new DataColumn("F_NAME", typeof(string)));

                SqlCommand com1 = new SqlCommand("SELECT * FROM M_MODIFY_TYPE", con);
                SqlDataReader sdr1 = com1.ExecuteReader();
                while (sdr1.Read())
                {
                    DataRow row = table1.NewRow();
                    row["F_ID"] = sdr1["F_ID"].ToString();
                    row["F_NAME"] = sdr1["F_NAME"].ToString();
                    table1.Rows.Add(row);
                }
                this.M_MODIFY_TYPE.DataSource = table1;
                this.M_MODIFY_TYPE.DataKeyNames = new string[2] { "F_ID", "F_NAME" };
                this.M_MODIFY_TYPE.DataBind();
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

        var f_id = M_MODIFY_TYPE.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_name = M_MODIFY_TYPE.DataKeys[row.RowIndex].Values["F_NAME"].ToString();

        ID.Text = f_id;
        NAME.Text = f_name;
    }

    protected void UPDATE_Click(object sender, EventArgs e)

    {
        // 接続文字列の取得
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
                command.CommandText = @"update M_MODIFY_TYPE set  F_NAME=@F_NAME where F_ID=@id";
                command.Parameters.Add(new SqlParameter("@id", ID.Text));
                command.Parameters.Add(new SqlParameter("@F_NAME", NAME.Text));

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
        Response.Redirect("~/kurihara/CustomTemplete3/M_MODIFY_TYPE.aspx");
    }
}
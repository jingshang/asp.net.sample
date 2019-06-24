using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_DatabaseConnectionUpdate : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			Label_Title.InnerText = "DB接続について（更新処理） " + Request.QueryString["table"];

			// 選択したテーブル名を画面に隠しておく
			Hidden_TableName.Value = Request.QueryString["table"];
		}
	}
	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}
	protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		switch (e.CommandName)
		{
			case "Edit":

				var row_index = int.Parse(e.CommandArgument.ToString());
				Label_F_ID.Text = GridView1.DataKeys[row_index].Values["F_ID"].ToString();
				TextBox_F_NAME.Text = GridView1.DataKeys[row_index].Values["F_NAME"].ToString();

				break;
			case "Delete":
				// 処理しない
				break;
		}
	}

	protected void ButtonUpdate_Click(object sender, EventArgs e)
	{
		// Web.config の name="MyConnectionStr" の設定を読みだす
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection connection = new SqlConnection(ConnectionStr);
		try
		{
			// データベースの接続開始
			connection.Open();
			var transaction = connection.BeginTransaction();
			var command = new SqlCommand() { Connection = connection, Transaction = transaction };
			try
			{
				// SQLの準備
				command.CommandText = "UPDATE "+Hidden_TableName.Value+ " SET F_NAME = @name WHERE F_ID = @id";
				command.Parameters.Add(new SqlParameter("@id", int.Parse(Label_F_ID.Text)));
				command.Parameters.Add(new SqlParameter("@name", TextBox_F_NAME.Text));

				// SQLの実行
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
				command.Dispose();
				transaction.Dispose();

			}
		}
		catch
		{
			throw;
		}
		finally
		{
			// データベースの接続終了
			connection.Close();
			connection.Dispose();
		}
		GridView1.DataBind();
	}

	protected void Button_Insert_Click(object sender, EventArgs e)
	{
		// Web.config の name="MyConnectionStr" の設定を読みだす
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection connection = new SqlConnection(ConnectionStr);
		try
		{
			// データベースの接続開始
			connection.Open();
			var transaction = connection.BeginTransaction();
			var command = new SqlCommand() { Connection = connection, Transaction = transaction };
			try
			{
				// SQLの準備
				command.CommandText = "INSERT INTO " + Hidden_TableName.Value + " (F_NAME) VALUES(@name)";
				command.Parameters.Add(new SqlParameter("@name", TextBox_Insert_F_NAME.Text));

				// SQLの実行
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
				command.Dispose();
				transaction.Dispose();

			}
		}
		catch
		{
			throw;
		}
		finally
		{
			// データベースの接続終了
			connection.Close();
			connection.Dispose();
		}
		GridView1.DataBind();
	}
}
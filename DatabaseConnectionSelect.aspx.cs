using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YourName_DatabaseConnectionSelect : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			Label_Title.InnerText = "DB接続について（Select）";
		}
	}

	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/YourName");
	}

	protected void Button_Select1_Click(object sender, EventArgs e)
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			// dbデータ取得
			SqlCommand com = new SqlCommand("SELECT * FROM T_USER", con);
			SqlDataReader sdr = com.ExecuteReader();

			int count = 0;
			while (sdr.Read())
			{
				// 本来はここで行ごとのデータを取得します。
				count++;
			}
			com.Dispose();
			Label_Select1.Text = count.ToString();

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

	protected void Button_Select2_Click(object sender, EventArgs e)
	{
		// 接続文字列（ログイン情報）を取得
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;


		// ▼GridView_Select2_1
		SqlConnection con = new SqlConnection(ConnectionStr);
		con.Open();
		try
		{
			SqlCommand com = new SqlCommand("SELECT * FROM M_BORAD_TYPE", con);
			SqlDataReader reder = com.ExecuteReader();

			// gridview の中身を定義
			DataTable table = new DataTable();
			table.Columns.Add(new DataColumn("F_ID", typeof(int)));
			table.Columns.Add(new DataColumn("F_NAME", typeof(string)));

			while (reder.Read())
			{
				DataRow row = table.NewRow();
				row["F_ID"] = int.Parse(reder["F_ID"].ToString());
				row["F_NAME"] = reder["F_NAME"].ToString();
				table.Rows.Add(row);
			}
			// GridViewに行データを設定する
			this.GridView_Select2_1.DataSource = table;

			// GridViewのDataSourceを画面に反映する
			this.GridView_Select2_1.DataBind();

			com.Dispose();

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

		// ▼GridView_Select2_2
		// コネクション作り直す
		con = new SqlConnection(ConnectionStr);
		con.Open();
		try
		{

			SqlCommand com = new SqlCommand("SELECT * FROM M_APPLY_TYPE", con);
			SqlDataReader reder = com.ExecuteReader();

			// gridview の中身を定義
			DataTable table = new DataTable();
			table.Columns.Add(new DataColumn("F_ID", typeof(int)));
			table.Columns.Add(new DataColumn("F_NAME", typeof(string)));

			while (reder.Read())
			{
				DataRow row = table.NewRow();
				row["F_ID"] = int.Parse(reder["F_ID"].ToString());
				row["F_NAME"] = reder["F_NAME"].ToString();
				table.Rows.Add(row);
			}
			// GridViewに行データを設定する
			this.GridView_Select2_2.DataSource = table;

			// GridViewのDataSourceを画面に反映する
			this.GridView_Select2_2.DataBind();

			com.Dispose();

			// ▼GridView_Select2_3
			//{
			//	// @をつけると１つの文章として扱えることができ、改行時に文字列結合しなくてもよくなります。
			//	SqlCommand com = new SqlCommand(@"
			//		SELECT 
			//			A.F_ID AS F_PROJECT_ID ,
			//			D.F_NAME AS F_BORAD_TYPE_NAME,
			//			E.F_NAME AS F_APPLY_TYPE_NAME,
			//			C.F_TITLE AS F_TITLE

			//		FROM T_PROJECT A
			//		INNER JOIN T_ROOT B ON A.F_ID = B.F_PROJECT_ID
			//		INNER JOIN T_APPLY_ENTRY C ON B.F_ID = C.F_ID 
			//		INNER JOIN M_BORAD_TYPE D ON A.F_BORAD_TYPE = D.F_ID
			//		INNER JOIN M_APPLY_TYPE E ON B.F_APPLY_TYPE = E.F_ID", con);

			//	SqlDataReader reder = com.ExecuteReader();

			//	// gridview の中身を定義
			//	DataTable table = new DataTable();
			//	table.Columns.Add(new DataColumn("F_PROJECT_ID", typeof(int)));
			//	table.Columns.Add(new DataColumn("F_BORAD_TYPE_NAME", typeof(string)));
			//	table.Columns.Add(new DataColumn("F_APPLY_TYPE_NAME", typeof(string)));
			//	table.Columns.Add(new DataColumn("F_TITLE", typeof(string)));

			//	while (reder.Read())
			//	{
			//		DataRow row = table.NewRow();
			//		row["F_PROJECT_ID"] = int.Parse(reder["F_PROJECT_ID"].ToString());
			//		row["F_BORAD_TYPE_NAME"] = reder["F_BORAD_TYPE_NAME"].ToString();
			//		row["F_APPLY_TYPE_NAME"] = reder["F_APPLY_TYPE_NAME"].ToString();
			//		row["F_TITLE"] = reder["F_TITLE"].ToString();
			//		table.Rows.Add(row);
			//	}
			//	// GridViewに行データを設定する
			//	this.GridView_Select2_3.DataSource = table;

			//	// GridViewのDataSourceを画面に反映する
			//	this.GridView_Select2_3.DataBind();

			//	com.Dispose();
			//}

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

		// ▼GridView_Select2_3
		// コネクション作り直す
		con = new SqlConnection(ConnectionStr);
		con.Open();
		try
		{

			// @をつけると１つの文章として扱えることができ、改行時に文字列結合しなくてもよくなります。
			SqlCommand com = new SqlCommand(@"
					SELECT 
						A.F_ID AS F_PROJECT_ID ,
						D.F_NAME AS F_BORAD_TYPE_NAME,
						E.F_NAME AS F_APPLY_TYPE_NAME,
						C.F_TITLE AS F_TITLE

					FROM T_PROJECT A
					INNER JOIN T_ROOT B ON A.F_ID = B.F_PROJECT_ID
					INNER JOIN T_APPLY_ENTRY C ON B.F_ID = C.F_ID 
					INNER JOIN M_BORAD_TYPE D ON A.F_BORAD_TYPE = D.F_ID
					INNER JOIN M_APPLY_TYPE E ON B.F_APPLY_TYPE = E.F_ID", con);

			SqlDataReader reder = com.ExecuteReader();

			// gridview の中身を定義
			DataTable table = new DataTable();
			table.Columns.Add(new DataColumn("F_PROJECT_ID", typeof(int)));
			table.Columns.Add(new DataColumn("F_BORAD_TYPE_NAME", typeof(string)));
			table.Columns.Add(new DataColumn("F_APPLY_TYPE_NAME", typeof(string)));
			table.Columns.Add(new DataColumn("F_TITLE", typeof(string)));

			while (reder.Read())
			{
				DataRow row = table.NewRow();
				row["F_PROJECT_ID"] = int.Parse(reder["F_PROJECT_ID"].ToString());
				row["F_BORAD_TYPE_NAME"] = reder["F_BORAD_TYPE_NAME"].ToString();
				row["F_APPLY_TYPE_NAME"] = reder["F_APPLY_TYPE_NAME"].ToString();
				row["F_TITLE"] = reder["F_TITLE"].ToString();
				table.Rows.Add(row);
			}
			// GridViewに行データを設定する
			this.GridView_Select2_3.DataSource = table;

			// GridViewのDataSourceを画面に反映する
			this.GridView_Select2_3.DataBind();

			com.Dispose();

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
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_Apply_root : System.Web.UI.Page
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
				// クエリ作成
				SqlCommand com = new SqlCommand(@"
SELECT A.F_ID AS 'ROOT_ID'
	,B.F_PROJECT_NUMBER AS 'F_PROJECT_NUMBER'
	,C.F_NAME AS 'F_BORAD_NAME'
	,D.F_LAST_NAME +' '+ D.F_FIRST_NAME AS 'F_CREATE_USER_NAME'
	,A.F_CREATE_DATE AS 'F_CREATE_DATE'
	, E.F_ID AS 'F_APPLY_TYPE_ID'
	, E.F_NAME AS 'F_APPLY_TYPE'
FROM T_ROOT A
INNER JOIN T_PROJECT B ON A.F_PROJECT_ID = B.F_ID
INNER JOIN M_BORAD_TYPE C ON B.F_BORAD_TYPE = C.F_ID
INNER JOIN T_USER D ON A.F_CREATE_USER_ID = D.F_ID
INNER JOIN M_APPLY_TYPE E ON A.F_APPLY_TYPE = E.F_ID
WHERE A.F_ID = @id", con);

				// 隠しフィールドのValueに格納することで画面に埋め込む事が出来る
				HiddenProjectId.Value = Request.QueryString["PROJECT_ID"];
				HiddenRootId.Value = Request.QueryString["ROOT_ID"];

				// パラメータセット
				com.Parameters.Add(new SqlParameter("@id", HiddenRootId.Value));

				// SQL実行
				SqlDataReader sdr = com.ExecuteReader();

				// データ取り出し
				if (sdr.Read())
				{

					Label_F_PROJECT_NUMBER.Text = sdr["F_PROJECT_NUMBER"].ToString();
					Label_F_BORAD_TYPE.Text = sdr["F_BORAD_NAME"].ToString();
					Label_F_APPLY_TYPE.Text = sdr["F_APPLY_TYPE"].ToString();
					Label_F_CREATE_USER.Text = sdr["F_CREATE_USER_NAME"].ToString();
					Label_F_CREATE_DATE.Text = sdr["F_CREATE_DATE"].ToString();

					var applyed = bool.Parse("FALSE");
					Label_F_APPLYED.Text = applyed? "提出済み" : "未提出";
					Button_Edit.Visible = !applyed;
					// 隠しフィールドのValueに申請タイプを埋め込み、Update_DropDownListで利用する
					HiddenApplyTypeId.Value = sdr["F_APPLY_TYPE_ID"].ToString();
				}
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

			// バージョンを選択するドロップダウンを作成
			Update_DropDownList(int.Parse(HiddenRootId.Value), int.Parse(HiddenApplyTypeId.Value));

			// 初期表示では一番上の選択肢を選択状態にする
			DropDownList_ApplyVersion.SelectedIndex = 0;

			// 選択されたバージョンに応じて申請情報部分を更新
			Update_ShowApplyInfo(null, null);

		}
	}


	private void Update_DropDownList(int root_id, int apply_type)
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			var join_table_name = apply_type == 2 ? "T_APPLY_ENTRY" : "T_APPLY_MODIFY";

			// クエリ作成
			SqlCommand com = new SqlCommand(@"SELECT * FROM T_ROOT A LEFT JOIN "+join_table_name+ " B ON A.F_ID = B.F_ID WHERE A.F_ID = @id", con);

			// パラメータセット
			com.Parameters.Add(new SqlParameter("@id", HiddenRootId.Value));

			// SQL実行
			SqlDataReader sdr = com.ExecuteReader();

			// データ取り出し
			while(sdr.Read())
			{
				var update = DateTime.Parse(sdr["F_CREATE_DATE"].ToString()).ToString("yyyy年MM月dd日 hh:mm");
				var version = sdr["F_VERSION"].ToString();
				DropDownList_ApplyVersion.Items.Add(new ListItem("バージョン"+version+"（"+update+"）", version));
			}
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
	/// <summary>選択されたバージョンの申請情報（APPLY_ENTRY or APPLY_MODIFY）を表示　　※引数は使いません</summary>
	protected void Update_ShowApplyInfo(object sender, EventArgs e)
	{

		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			if (string.IsNullOrWhiteSpace(HiddenApplyTypeId.Value))
				throw new Exception();

			var join_table_name = HiddenApplyTypeId.Value == "2" ? "T_APPLY_ENTRY" : "T_APPLY_MODIFY";
			// クエリ作成
			SqlCommand com = new SqlCommand(@"SELECT * FROM " + join_table_name + " WHERE F_ID = @id AND F_VERSION = @version", con);

			// パラメータセット
			com.Parameters.Add(new SqlParameter("@id", HiddenRootId.Value));
			com.Parameters.Add(new SqlParameter("@version", DropDownList_ApplyVersion.SelectedValue));

			// SQL実行
			SqlDataReader sdr = com.ExecuteReader();

			// データ取り出し
			if (sdr.Read())
			{
				ApplyId.Text = sdr["F_ID"].ToString();
				ApplyVersion.Text = sdr["F_VERSION"].ToString();
				if(HiddenApplyTypeId.Value == "3")
				{ 
					sdr["F_MODIFY_TYPE"].ToString();
				}
				ApplyTitle.Text = sdr["F_TITLE"].ToString();
				ApplyBeginDate.Text = DateTime.Parse(sdr["F_BEGIN_DATE"].ToString()).ToString("yyyy年MM月dd日");
				ApplyEndDate.Text = DateTime.Parse(sdr["F_END_DATE"].ToString()).ToString("yyyy年MM月dd日");

				// コントロールを用意する
				sdr["F_COMMENT"].ToString();
				sdr["F_IS_INVASION"].ToString();
				sdr["F_INVASION_TYPE"].ToString();
				sdr["F_INVASION_SEVERE_TEXT"].ToString();
				sdr["F_IS_MONEY_TRANSFER"].ToString();
				sdr["F_MONEY_TRANSFER_TYPE"].ToString();
				sdr["F_CREATE_USER_ID"].ToString();
				sdr["F_UPDATE_USER_ID"].ToString();
				sdr["F_CREATE_DATE"].ToString();
				sdr["F_UPDATE_DATE"].ToString();
			}
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
		// 選択されているバージョンの申請書のフロー情報を更新
		UpdateGridView_Flow();
	}

	private void UpdateGridView_Flow()
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);
		
		con.Open();
		try
		{
			// クエリ作成
			SqlCommand com = new SqlCommand(@"
SELECT A.F_CREATE_DATE AS 'FLOW_CREATE_DATE', B.F_NAME AS 'FLOW_NAME', C.F_LAST_NAME + ' ' + C.F_FIRST_NAME AS 'USER_NAME', A.F_NUMBER, B.F_NAME AS 'F_FLOW_TYPE'
FROM T_FLOW A
INNER JOIN M_FLOW_TYPE B ON A.F_FLOW_TYPE = B.F_ID
INNER JOIN T_USER C ON A.F_CREATE_USER_ID = C.F_ID
WHERE A.F_ID = @id
AND B.F_ID <> 1"
, con);

			// パラメータセット
			com.Parameters.Add(new SqlParameter("@id", HiddenRootId.Value));

			// SQL実行
			SqlDataReader sdr = com.ExecuteReader();

			// gridview の中身を定義
			DataTable table = new DataTable();
			table.Columns.Add(new DataColumn("F_NUMBER", typeof(string)));
			table.Columns.Add(new DataColumn("F_FLOW_TYPE", typeof(string)));
			table.Columns.Add(new DataColumn("F_CREATE_USER", typeof(string)));
			table.Columns.Add(new DataColumn("F_CREATE_DATE", typeof(string)));

			// 行を用意
			while (sdr.Read())
			{
				DataRow row = table.NewRow();
				row["F_NUMBER"] = sdr["F_NUMBER"].ToString();
				row["F_FLOW_TYPE"] = sdr["F_FLOW_TYPE"].ToString();
				row["F_CREATE_USER"] = sdr["USER_NAME"].ToString();
				row["F_CREATE_DATE"] = sdr["FLOW_CREATE_DATE"].ToString();
				table.Rows.Add(row);
			}

			// GridViewに行データを設定する
			GridView_Flow.DataSource = table;

			// GridViewのDataSourceを画面に反映する
			GridView_Flow.DataBind(); // DataSourceに設定した値を反映させる

			// 最後の行以外のボタンを非表示にする
			for(var i = 0; i < table.Rows.Count; i++)
			{
				var b = (Button)GridView_Flow.Rows[i].FindControl("Button_Delete");
				b.Visible = i == table.Rows.Count-1;
			}
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
	protected void Button_Delete_Click(object sender, EventArgs e)
	{

	}

	protected void Button_Edit_Click(object sender, EventArgs e)
	{
		var url = "~/kurihara/Apply/apply.aspx"
			+ "?PROJECT_ID=" + Server.UrlEncode(HiddenProjectId.Value) 
			+ "&ROOT_ID=" + Server.UrlEncode(HiddenRootId.Value)
			+ "&APPLY_TYPE=" + Server.UrlEncode(HiddenApplyTypeId.Value)
			+ "&VERSION=1";
		Response.Redirect(url);
	}
}
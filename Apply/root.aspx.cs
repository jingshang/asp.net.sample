using System;
using System.Collections.Generic;
using System.Configuration;
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


	protected void GridView_ApplyList_RowCommand(object sender, GridViewCommandEventArgs e)
	{

	}

	private void Update_DropDownList(int root_id, int apply_type)
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			var join_table_name = apply_type == 1 ? "T_APPLY_ENTRY" : "T_APPLY_MODIFY";

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

	}
}
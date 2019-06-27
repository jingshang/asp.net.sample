using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_Apply_apply : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if(!IsPostBack)
		{
			// 隠しフィールドのValueに格納することで画面に埋め込む事が出来る
			HiddenProjectId.Value = Request.QueryString["PROJECT_ID"];
			HiddenRootId.Value = Request.QueryString["ROOT_ID"];
			HiddenApplyTypeId.Value = Request.QueryString["APPLY_TYPE"];
		}

	}
	private void UpdateGridView_Flow()
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			var join_table_name = apply_type == 2 ? "T_APPLY_ENTRY" : "T_APPLY_MODIFY";

			// クエリ作成
			SqlCommand com = new SqlCommand(@"SELECT * FROM T_ROOT A LEFT JOIN " + join_table_name + " B ON A.F_ID = B.F_ID WHERE A.F_ID = @id", con);

			// パラメータセット
			com.Parameters.Add(new SqlParameter("@id", HiddenRootId.Value));

			// SQL実行
			SqlDataReader sdr = com.ExecuteReader();

			// データ取り出し
			while (sdr.Read())
			{
				var update = DateTime.Parse(sdr["F_CREATE_DATE"].ToString()).ToString("yyyy年MM月dd日 hh:mm");
				var version = sdr["F_VERSION"].ToString();
				DropDownList_ApplyVersion.Items.Add(new ListItem("バージョン" + version + "（" + update + "）", version));
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

}
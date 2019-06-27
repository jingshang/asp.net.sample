using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_Apply_project : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			// クエリ作成
			SqlCommand com = new SqlCommand(@"
SELECT A.F_ID AS 'PROJECT_ID'
	,A.F_PROJECT_NUMBER AS 'F_PROJECT_NUMBER'
	,B.F_NAME AS 'F_BORAD_NAME'
	,C.F_LAST_NAME +' '+ C.F_FIRST_NAME AS 'F_CREATE_USER_NAME'
	,A.F_CREATE_DATE AS 'F_CREATE_DATE'
FROM T_PROJECT A
INNER JOIN M_BORAD_TYPE B ON A.F_BORAD_TYPE = B.F_ID
INNER JOIN T_USER C ON A.F_CREATE_USER_ID = C.F_ID
WHERE A.F_ID = @id", con);

			// 隠しフィールドのValueに格納することで画面に埋め込む事が出来る
			HiddenProjectId.Value = Request.QueryString["PROJECT_ID"];

			// パラメータセット
			com.Parameters.Add(new SqlParameter("@id", HiddenProjectId.Value));

			// SQL実行
			SqlDataReader sdr = com.ExecuteReader();

			// データ取り出し
			if (sdr.Read())
			{

				Label_F_ID.Text = sdr["PROJECT_ID"].ToString();
				Label_F_PROJECT_NUMBER.Text = sdr["F_PROJECT_NUMBER"].ToString();
				Label_F_BORAD_TYPE.Text = sdr["F_BORAD_NAME"].ToString();
				Label_F_CREATE_USER.Text = sdr["F_CREATE_USER_NAME"].ToString();
				Label_F_CREATE_DATE.Text = sdr["F_CREATE_DATE"].ToString();
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

	protected void Button_NewApply_Click(object sender, EventArgs e)
	{

	}

	protected void GridView_RootList_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		switch (e.CommandName)
		{
			case "Detail":

				var index = int.Parse(e.CommandArgument.ToString());
				var root_id= GridView_RootList.DataKeys[index].Values["F_ID"].ToString();
				var url = "~/kurihara/Apply/root.aspx?PROJECT_ID=" + Server.UrlEncode(HiddenProjectId.Value)+"&ROOT_ID="+ Server.UrlEncode(root_id);
				Response.Redirect(url);
				break;
		}
	}
}
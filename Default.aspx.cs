using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
	/// <summary>ページが呼び出された時の実行されるメソッド</summary>
    protected void Page_Load(object sender, EventArgs e)
    {
		// 「asp.net ispostbackとは」でググるといいかもですね。
		if (!IsPostBack)
		{
			// 走ってほしくないときに、Page_Load走るから、最初の一回だけ処理する内容をIF文の中に記載する
			Label_Title.InnerText = "ASP.NET　WebForoms研修";
		}
    }

	/// <summary>一般的なコントロール</summary>
	protected void Button_NomalControl_Click(object sender, EventArgs e)
	{
		// クエリストリングに
		//string url = "~/kurihara/NomalControl.aspx?id=" + Server.UrlEncode(T_APPLY_ENTRY.DataKeys[index].Values["F_ID"].ToString());
		Response.Redirect("~/kurihara/NomalControl.aspx");
	}

	/// <summary>GridViewについて</summary>
	protected void Button_GridView_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/GridView.aspx");
	}

	/// <summary>UpdatePanelについて</summary>
	protected void Button_UpdatePanel_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/UpdatePanel.aspx");
	}

	/// <summary>SESSIONについて</summary>
	protected void Button_Session_Click(object sender, EventArgs e)
	{
		Session["SessionSample"] = TextBox_SessionText.Text;
		var url = "~/kurihara/Session.aspx?QueryStringSample=" + Server.UrlEncode(TextBox_QueryStringText.Text);
		Response.Redirect(url);
	}

	/// <summary>バリデーションについて</summary>
	protected void Button_Validation_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/Validation.aspx");
	}

	/// <summary>DB接続について</summary>
	protected void Button_DatabaseConnection_Click(object sender, EventArgs e)
	{
		// 接続テストの結果Labelを初期化
		Label_ConnectionTestResult.Text = "";

		// Web.config の name="MyConnectionStr" の設定を読みだす
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;

		try { 
			// 設定を使いDBへアクセス
			SqlConnection con = new SqlConnection(ConnectionStr);
			con.Open();
			try
			{
				Label_ConnectionTestResult.Text = "接続成功";
				Label_ConnectionTestResult.ForeColor = System.Drawing.Color.Blue;
			}
			catch
			{
				Label_ConnectionTestResult.Text = "接続失敗(Web.configの設定を見直してください。";
				Label_ConnectionTestResult.ForeColor = System.Drawing.Color.Red;
			}
			finally
			{
				con.Close();
				con.Dispose();
			}
		}
		catch
		{
			Label_ConnectionTestResult.Text = "接続失敗(Web.configの設定を見直してください。";
			Label_ConnectionTestResult.ForeColor = System.Drawing.Color.Red;
		}
	}
	protected void Button_DatabaseConnectionError_Click(object sender, EventArgs e)
	{

		// 接続テストの結果Labelを初期化
		Label_ConnectionTestResultError.Text = "";

		// Web.config の name="MyConnectionStrError" の設定を読みだす
		// 存在しないサーバーを指定している為エラーになります。
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStrError"].ConnectionString;

		try
		{
			// 設定を使いDBへアクセス
			SqlConnection con = new SqlConnection(ConnectionStr);
			con.Open();
			try
			{
				Label_ConnectionTestResultError.Text = "接続成功";
				Label_ConnectionTestResultError.ForeColor = System.Drawing.Color.Blue;
			}
			catch
			{
				Label_ConnectionTestResultError.Text = "接続失敗(Web.configの設定を見直してください。";
				Label_ConnectionTestResultError.ForeColor = System.Drawing.Color.Red;
			}
			finally
			{
				con.Close();
				con.Dispose();
			}
		}
		catch
		{
			Label_ConnectionTestResultError.Text = "接続失敗(Web.configの設定を見直してください。";
			Label_ConnectionTestResultError.ForeColor = System.Drawing.Color.Red;
		}
	}

	/// <summary>DB接続について（Select）</summary>
	protected void Button_DatabaseConnection_Select_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/DatabaseConnectionSelect.aspx");
	}

	/// <summary>DB接続について（Update）</summary>
	protected void Button_DatabaseConnection_Update_Click(object sender, EventArgs e)
	{
		var url = "~/kurihara/DatabaseConnectionUpdate.aspx?table=" + Server.UrlEncode(DropDownList1.SelectedValue.ToString());
		Response.Redirect(url);
	}
	/// <summary>CSSについて</summary>
	protected void Button_CSS_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/CSS.aspx");
	}

	/// <summary>部品化 (User Control) について</summary>
	protected void Button_UserControl_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/UserControl.aspx");
	}

	/// <summary>サンプルプロジェクトへ（ログイン画面）</summary>
	protected void Button_GotoSampleProject_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara/SampleProject/Login.aspx");
	}

}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridView : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			Label_Title.InnerText = "GridViewについて";

			UpdateGridView1();
			UpdateGridView3();
			UpdateGridView4();
		}
	}

	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}
	private void UpdateGridView1()
	{
		// gridview の中身を定義
		DataTable table = new DataTable();
		table.Columns.Add(new DataColumn("SAMPLE_CHECK", typeof(bool)));
		table.Columns.Add(new DataColumn("SAMPLE_URL", typeof(string)));
		table.Columns.Add(new DataColumn("SAMPLE_TEXT", typeof(string)));
		
		// 行を用意
		for (var i = 0; i < 2; i++)
		{
			DataRow row = table.NewRow();
			row["SAMPLE_CHECK"] = true;
			row["SAMPLE_URL"] = i==0? "~/kurihara/SampleProject/SampleProjectDoc/GridView2.jpg":null;
			row["SAMPLE_TEXT"] = "テキストです";
			table.Rows.Add(row);
		}
			
		// GridViewに行データを設定する
		this.GridView_Sample1.DataSource = table;

		// GridViewのDataSourceを画面に反映する
		this.GridView_Sample1.DataBind(); // DataSourceに設定した値を反映させる
	}

	private void UpdateGridView3()
	{
		// gridview の中身を定義
		DataTable table = new DataTable();
		table.Columns.Add(new DataColumn("BIND_IS_CHECK", typeof(bool)));
		table.Columns.Add(new DataColumn("BIND_TEXT_CHECKBOX", typeof(string)));
		table.Columns.Add(new DataColumn("BIND_TEXT_BUTTON", typeof(string)));
		table.Columns.Add(new DataColumn("BIND_TEXT_LABEL", typeof(string)));
		table.Columns.Add(new DataColumn("BIND_IS_RADIO1", typeof(bool)));
		table.Columns.Add(new DataColumn("BIND_IS_RADIO2", typeof(bool)));

		// 行を用意
		for (var i = 0; i < 5; i++)
		{
			DataRow row = table.NewRow();
			row["BIND_IS_CHECK"] = true;
			row["BIND_TEXT_CHECKBOX"] = "チェックボックス" + i;
			row["BIND_TEXT_BUTTON"] = "ボタン" + i;
			row["BIND_TEXT_LABEL"] = "ラベル" + i;
			row["BIND_IS_RADIO1"] = true;
			row["BIND_IS_RADIO2"] = false;
			table.Rows.Add(row);
		}

		// GridViewに行データを設定する
		this.GridView_Sample3.DataSource = table;
		// GridViewのDataSourceを画面に反映する
		this.GridView_Sample3.DataBind(); // DataSourceに設定した値を反映させる
	}

	private void UpdateGridView4()
	{
		// gridview の中身を定義
		DataTable table = new DataTable();
		table.Columns.Add(new DataColumn("F_ID", typeof(int)));
		table.Columns.Add(new DataColumn("F_NAME", typeof(string)));

		// 行を用意
		for (var i = 0; i < 5; i++)
		{
			DataRow row = table.NewRow();
			row["F_ID"] = i;
			row["F_NAME"] = "TEST"+i;
			table.Rows.Add(row);
		}

		// 検索キーを設定する
		this.GridView_Sample4.DataKeyNames = new string[] { "F_ID", "F_NAME" };
		// GridViewに行データを設定する
		this.GridView_Sample4.DataSource = table;
		// GridViewのDataSourceを画面に反映する
		this.GridView_Sample4.DataBind(); // DataSourceに設定した値を反映させる
	}


	protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		string f_id = "";
		string f_name = "";
		int row_index = 0;

		switch (e.CommandName)
		{
			case "CommandA":

				row_index = int.Parse(e.CommandArgument.ToString());
				f_id = GridView_Sample4.DataKeys[row_index].Values["F_ID"].ToString();
				f_name = GridView_Sample4.DataKeys[row_index].Values["F_NAME"].ToString();

				Label_GridView_Sample4_f_rowindex.Text = row_index.ToString();
				Label_GridView_Sample4_f_comment.Text = "CommandA";
				Label_GridView_Sample4_f_id.Text = f_id;
				Label_GridView_Sample4_f_name.Text = f_name;
				break;
			case "CommandB":
				row_index = int.Parse(e.CommandArgument.ToString());
				f_id = GridView_Sample4.DataKeys[row_index].Values["F_ID"].ToString();
				f_name = GridView_Sample4.DataKeys[row_index].Values["F_NAME"].ToString();

				Label_GridView_Sample4_f_rowindex.Text = row_index.ToString();
				Label_GridView_Sample4_f_comment.Text = "CommandB";
				Label_GridView_Sample4_f_id.Text = f_id;
				Label_GridView_Sample4_f_name.Text = f_name;
				break;
		}
	}

	protected void Button_GridView_Click(object sender, EventArgs e)
	{
        // クリックしたボタンが第2引数で取得できます。
        // 型がobjectなのでButtonにキャストしてます。
        var button = (Button)sender;

        // 次に1行を取得しています。
        // ボタンの親の親が1行です。
        // 1行は　GridViewRow　と言います。
        // 1行取得します
        // こいつは何行目なのか取得する為だけにキャストしました。
        var row = (GridViewRow)button.Parent.Parent;


        // クリックした1行からIDとNameを取得します。
        // まず id から
        // 取り方は決まってます。覚えちゃいましょう。

        // ①DataKeysで行番号を指定
        // ②Valuesで列名を指定

        // 注意点としてはValuesで指定する列名はデザインファイルのGridViewで以下の様に指定しないと取れません
        // DataKeyNames="F_ID,F_NAME"
        // 栗原さんのソースだとF_NAMEが抜けてるかな
        var f_id = GridView_Sample4.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_name = GridView_Sample4.DataKeys[row.RowIndex].Values["F_NAME"].ToString();

        // さて、あとは適当にラベルにデータを反映しているだけです。
        // 行とか列とか、F_ID とか F_NAME とか
        Label_GridView_Sample4_f_rowindex.Text = row.RowIndex.ToString();
        Label_GridView_Sample4_f_comment.Text = "Button.OnClick";
        Label_GridView_Sample4_f_id.Text = f_id;
        Label_GridView_Sample4_f_name.Text = f_name;
    }

}
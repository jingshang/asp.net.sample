using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kentaro_GridView : System.Web.UI.Page
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
		Response.Redirect("~/kentaro");
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
			row["SAMPLE_URL"] = i==0? "~/kentaro/SampleProject/SampleProjectDoc/GridView2.jpg":null;
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
		var button = (Button)sender;
		var row = (GridViewRow)button.Parent.Parent;

		var f_id = GridView_Sample4.DataKeys[row.RowIndex].Values["F_ID"].ToString();
		var f_name = GridView_Sample4.DataKeys[row.RowIndex].Values["F_NAME"].ToString();

		Label_GridView_Sample4_f_rowindex.Text = row.RowIndex.ToString();
		Label_GridView_Sample4_f_comment.Text = "Button.OnClick";
		Label_GridView_Sample4_f_id.Text = f_id;
		Label_GridView_Sample4_f_name.Text = f_name;
	}

}
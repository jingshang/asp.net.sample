using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_NomalControl : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{ 
			Label_Title.InnerText = "一般的なコントロール";
			UpdateLabel_Sample();
			UpdateRadioButton_Sample();
		}
	}

	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}
	/// <summary>ラベルに文字やその他設定を行います。</summary>
	private void UpdateLabel_Sample()
	{
		Label_Sample.Text = "これはラベルコントロールです";
		Label_Sample.ForeColor = System.Drawing.Color.Violet;
		Label_Sample.BackColor = System.Drawing.Color.PaleTurquoise;
		Label_Sample.Font.Bold = true;
		Label_Sample.Font.Italic = true;
		Label_Sample.Font.Underline = true;
	}

	private void UpdateRadioButton_Sample()
	{
		RadioButtonB_Sample1.Text = "B-1";
		RadioButtonB_Sample2.Text = "B-2";
		RadioButtonB_Sample3.Text = "B-3";

		RadioButtonB_Sample1.GroupName = "GroupB";
		RadioButtonB_Sample2.GroupName = "GroupB";
		RadioButtonB_Sample3.GroupName = "GroupB";
	}

	protected void RadioButtonC_Sample_CheckedChanged(object sender, EventArgs e)
	{
		Label_RadioButtonChangeTime.Text = DateTime.Now.ToString("hh:mm:ss");
	}
	protected void RadioButtonD_Sample_CheckedChanged(object sender, EventArgs e)
	{
		Label_RadioButtonChangeTime_Async.Text = DateTime.Now.ToString("hh:mm:ss");
	}


	private System.Drawing.Color CreateRundomColor()
	{
		Random rundom = new Random();
		System.Drawing.Color color = System.Drawing.Color.FromArgb(rundom.Next(0, 255), rundom.Next(0, 255), rundom.Next(0, 255));
		return color;
	}
	protected void Button_UpdateTest1_Click(object sender, EventArgs e)
	{
		Button_UpdateTest1.BackColor = this.CreateRundomColor();
	}
	protected void Button_UpdateTest2_Click(object sender, EventArgs e)
	{
		Button_UpdateTest2.BackColor = this.CreateRundomColor();
	}
}
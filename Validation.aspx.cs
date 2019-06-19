using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YourName_Validation : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			Label_Title.InnerText = "バリデーション";
		}
	}

	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/YourName");
	}
	protected void Button_UpdatePanel1_Click(object sender, EventArgs e)
	{

	}

	protected void ValidCustom5_ServerValidate(object source, ServerValidateEventArgs args)
	{
		if (RadioButton5_ON.Checked)
		{
			args.IsValid = true;
		}
		else if (RadioButton5_OFF.Checked)
		{
			args.IsValid = false;
		}
		else
		{
			args.IsValid = false;
		}

	}
}
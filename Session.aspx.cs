using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_Session : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

		if(!IsPostBack)
		{
			Label_Session.Text = Session["SessionSample"].ToString();
			Label_QueryString.Text = Request.QueryString["QueryStringSample"];

		}
	}
	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}

}
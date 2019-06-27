using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YourName_Apply_Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
	{

		switch (e.CommandName)
		{
			case "Detail":

				var index = int.Parse(e.CommandArgument.ToString());
				var id = GridView1.DataKeys[index].Values["F_ID"].ToString();

				var url = "~/kurihara/Apply/project.aspx?PROJECT_ID=" + Server.UrlEncode(id);
				Response.Redirect(url);
				break;
		}
	}
}
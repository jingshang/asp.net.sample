﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kentaro_SampleProject_MasterPage : System.Web.UI.MasterPage
{
	protected void Page_Init(object sender, EventArgs e)
	{
		var user_info = Session[SessionUserInfo.SESSION_KEY];
		if (user_info == null)
		{
			Response.Redirect("~/kentaro/SampleProject/Login.aspx");
		}
		Session[SessionUserInfo.SESSION_KEY] = user_info;
	}
	protected void Page_Load(object sender, EventArgs e)
	{
	}

	protected void Logout_Click(object sender, EventArgs e)
	{
		Session.Clear();
		Response.Redirect("~/kentaro/SampleProject/Login.aspx");
	}
}

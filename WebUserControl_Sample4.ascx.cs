﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kentaro_WebUserControl_Sample4 : System.Web.UI.UserControl
{
	private EventHandler original_event;

	public event EventHandler OriginalEvent
	{
		add
		{
			original_event += value;
		}
		remove
		{
			original_event -= value;
		}
	}
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		switch(e.CommandName)
		{
			case "Select":
				if (original_event != null)
				{
					original_event(this, e);
				}
				break;
		}
	}
}
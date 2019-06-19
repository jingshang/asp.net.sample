using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YourName_WebUserControl_Sample3 : System.Web.UI.UserControl
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

	protected void ButtonEvent_Click(object sender, EventArgs e)
	{
		if (original_event != null)
		{
			original_event(this, e);
		}
	}
}
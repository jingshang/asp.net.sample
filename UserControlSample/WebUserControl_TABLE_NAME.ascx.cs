using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControlSample_WebUserControl_TABLE_NAME : System.Web.UI.UserControl
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (original_event != null)
        {
            original_event(this, e);
        }
    }
}
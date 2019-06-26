using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControlSample_WebUserControlTProject : System.Web.UI.UserControl
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
        switch (e.CommandName)
        {
            case "SELECT":
                if (original_event != null)
                {
                    original_event(this, e);
                }
                break;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControlSample_WebUserControl_example1 : System.Web.UI.UserControl
{
    private EventHandler original_event1;

    public event EventHandler OriginalEvent1
    {
        add
        {
            original_event1 += value;
        }
        remove
        {
            original_event1 -= value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Example_Click(object sender, EventArgs e)
    {
        if (original_event1 != null)
        {
            original_event1(this, e);
        }
    }
}
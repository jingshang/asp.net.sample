using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_CustomTemplete3_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void M_APPLY_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/Custom3M_APPLY_TYPE.aspx");
    }
}
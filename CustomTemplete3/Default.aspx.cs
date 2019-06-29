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

    protected void M_BORAD_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/Custom3M_BORAD_TYPE.aspx");
    }

    protected void M_FLOW_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/Custom3M_FLOW_TYPE.aspx");
    }

    protected void M_INVASION_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/M_INVASION_TYPE.aspx");
    }

    protected void M_MODIFY_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/M_MODIFY_TYPE.aspx");
    }

    protected void M_MONEY_TRANSFER_TYPE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/M_MONEY_TRANSFER_TYPE.aspx");
    }

    protected void M_ROLE_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/M_ROLE.aspx");
    }

    protected void S_DATABASE_VERSION_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/S_DATABASE_VERSION.aspx");
    }

    protected void S_SYSTEM_SETTING_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/S_SYSTEM_SETTING.aspx");
    }

    protected void T_APPLY_ENTRY_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/kurihara/CustomTemplete3/T_APPLY_ENTRY.aspx");
    }
}
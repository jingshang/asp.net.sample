using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTUserRole : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_USER_ID"].ToString();
        var F_ROLE_ID = GridView1.DataKeys[row.RowIndex].Values["F_ROLE_ID"].ToString();

        USER_ID.Text = F_USER_ID;
        ROLE_ID.Text = F_ROLE_ID;
    }
}
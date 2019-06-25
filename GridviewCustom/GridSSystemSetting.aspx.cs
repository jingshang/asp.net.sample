using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridSSystemSetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var SETTING1 = GridView1.DataKeys[row.RowIndex].Values["SETTING1"].ToString();
        var SETTING2 = GridView1.DataKeys[row.RowIndex].Values["SETTING2"].ToString();

        ID_Label.Text = F_ID;
        SETTING1_Label.Text = SETTING1;
        SETTING_LABEL.Text = SETTING2;
    }
}
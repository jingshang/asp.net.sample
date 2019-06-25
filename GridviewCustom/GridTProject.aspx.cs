using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var F_PROJECT_NUMBER = GridView1.DataKeys[row.RowIndex].Values["F_PROJECT_NUMBER"].ToString();
        var F_BORAD_TYPE = GridView1.DataKeys[row.RowIndex].Values["F_BORAD_TYPE"].ToString();
        var F_CREATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var F_CREATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();

        ID.Text = F_ID;
        PROJECT_NUMBER.Text = F_PROJECT_NUMBER;
        BORAD_TYPE.Text = F_BORAD_TYPE;
        CREATE_USER_ID.Text = F_CREATE_USER_ID;
        CREATE_DATE.Text = F_CREATE_DATE;
    }
}
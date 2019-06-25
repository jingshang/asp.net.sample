using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTFlow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELEST_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var F_NUMBER = GridView1.DataKeys[row.RowIndex].Values["F_NUMBER"].ToString();
        var F_FLOW_TYPE = GridView1.DataKeys[row.RowIndex].Values["F_FLOW_TYPE"].ToString();
        var F_CREATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var F_CREATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();

        ID.Text = F_ID;
        NUMBER.Text = F_NUMBER;
        FLOW_TYPE.Text = F_FLOW_TYPE;
        CREATE_USER_ID.Text = F_CREATE_USER_ID;
        CREATE_DATE.Text = F_CREATE_DATE;
    }
}
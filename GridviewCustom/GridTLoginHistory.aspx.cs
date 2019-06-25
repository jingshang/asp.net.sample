using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTLoginHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var F_INPUT_MAIL = GridView1.DataKeys[row.RowIndex].Values["F_INPUT_MAIL"].ToString();
        var F_LOGIN_RESULT = GridView1.DataKeys[row.RowIndex].Values["F_LOGIN_RESULT"].ToString();
        var F_IP = GridView1.DataKeys[row.RowIndex].Values["F_IP"].ToString();
        var F_CREATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();

        ID.Text = F_ID;
        INPUT_MAIL.Text = F_INPUT_MAIL;
        LOGIN_RESULT.Text = F_LOGIN_RESULT;
        IP.Text = F_IP;
        CREATE_DATE.Text = F_CREATE_DATE;
    }
}
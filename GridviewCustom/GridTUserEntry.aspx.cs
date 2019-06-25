using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTUserEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)

    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var F_LAST_NAME = GridView1.DataKeys[row.RowIndex].Values["F_LAST_NAME"].ToString();
        var F_FIRST_NAME = GridView1.DataKeys[row.RowIndex].Values["F_FIRST_NAME"].ToString();
        var F_LAST_NAME_KANA = GridView1.DataKeys[row.RowIndex].Values["F_LAST_NAME_KANA"].ToString();
        var F_FIRST_NAME_KANA = GridView1.DataKeys[row.RowIndex].Values["F_FIRST_NAME_KANA"].ToString();
        var F_EMAIL = GridView1.DataKeys[row.RowIndex].Values["F_EMAIL"].ToString();
        var F_PASS = GridView1.DataKeys[row.RowIndex].Values["F_PASS"].ToString();
        var F_CREATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var F_UPDATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_UPDATE_USER_ID"].ToString();
        var F_UPDATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_UPDATE_DATE"].ToString();
        var F_CREATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();

        ID.Text = F_ID;
        LAST_NAME.Text = F_LAST_NAME;
        FIRST_NAME.Text = F_FIRST_NAME;
        LAST_NAME_KANA.Text = F_LAST_NAME_KANA;
        FIRST_NAME_KANA.Text = F_FIRST_NAME_KANA;
        EMAIL.Text = F_EMAIL;
        PASS.Text = F_PASS;
        CREATE_USER_ID.Text = F_CREATE_USER_ID;
        UPDATE_USER_ID.Text = F_UPDATE_USER_ID;
        UPDATE_DATE.Text = F_UPDATE_DATE;
        CREATE_DATE.Text = F_CREATE_DATE;

    }
}
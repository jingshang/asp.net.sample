using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridTApplyModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SELECT_Click(object sender, EventArgs e)

    {
        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var F_ID = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var F_VERSION = GridView1.DataKeys[row.RowIndex].Values["F_VERSION"].ToString();
        var F_MODIFY_TYPE = GridView1.DataKeys[row.RowIndex].Values["F_MODIFY_TYPE"].ToString();
        var F_TITLE = GridView1.DataKeys[row.RowIndex].Values["F_TITLE"].ToString();
        var F_BEGIN_DATE = GridView1.DataKeys[row.RowIndex].Values["F_BEGIN_DATE"].ToString();
        var F_END_DATE = GridView1.DataKeys[row.RowIndex].Values["F_END_DATE"].ToString();
        var F_COMMENT = GridView1.DataKeys[row.RowIndex].Values["F_COMMENT"].ToString();
        var F_IS_INVASION = GridView1.DataKeys[row.RowIndex].Values["F_IS_INVASION"].ToString();
        var F_INVASION_TYPE = GridView1.DataKeys[row.RowIndex].Values["F_INVASION_TYPE"].ToString();
        var F_INVASION_SEVERE_TEXT = GridView1.DataKeys[row.RowIndex].Values["F_INVASION_SEVERE_TEXT"].ToString();
        var F_IS_MONEY_TRANSFER = GridView1.DataKeys[row.RowIndex].Values["F_IS_MONEY_TRANSFER"].ToString();
        var F_MONEY_TRANSFER_TYPE = GridView1.DataKeys[row.RowIndex].Values["F_MONEY_TRANSFER_TYPE"].ToString();
        var F_CREATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_USER_ID"].ToString();
        var F_UPDATE_USER_ID = GridView1.DataKeys[row.RowIndex].Values["F_UPDATE_USER_ID"].ToString();
        var F_CREATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_CREATE_DATE"].ToString();
        var F_UPDATE_DATE = GridView1.DataKeys[row.RowIndex].Values["F_UPDATE_DATE"].ToString();

        ID.Text = F_ID;
        VERSION.Text = F_VERSION;
        MODIFY_TYPE.Text = F_MODIFY_TYPE;
        TITLE.Text = F_TITLE;
        BEGIN_DATE.Text = F_BEGIN_DATE;
        END_DATE.Text = F_END_DATE;
        COMMENT.Text = F_COMMENT;
        IS_INVASION.Text = F_IS_INVASION;
        INVASION_TYPE.Text = F_INVASION_TYPE;
        INVASION_SEVERE_TEXT.Text = F_INVASION_SEVERE_TEXT;
        IS_MONEY_TRANSFER.Text = F_IS_MONEY_TRANSFER;
        MONEY_TRANSFER_TYPE.Text = F_MONEY_TRANSFER_TYPE;
        CREATE_USER_ID.Text = F_CREATE_USER_ID;
        UPDATE_USER_ID.Text = F_UPDATE_USER_ID;
        CREATE_DATE.Text = F_CREATE_DATE;
        UPDATE_DATE.Text = F_UPDATE_DATE;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControlSample_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void WebUserControl_TABLE_NAME1_OriginalEvent(object sender, EventArgs e)
    {
        // 子から取得したidでSELECT

        // SELECTした結果をラベルに表示
        Label_FLOW_ID.Text = "";
        Label_FLOW_NAME.Text = "";
    }


    protected void WebUserControl_example11_OriginalEvent1(object sender, EventArgs e)
    {
        Label_FLOW_ID.Text ="";
        Label_FLOW_NAME.Text = "";
    }

    protected void WebUserControl_Button_Sample_OriginalEvent(object sender, EventArgs e)
    {
        Label_FLOW_ID.Text = "";
        Label_FLOW_NAME.Text = "";
    }
}
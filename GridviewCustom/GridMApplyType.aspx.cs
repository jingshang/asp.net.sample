using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_GridviewCustom_GridMApplyType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SELECT_M_APPLY_TYPE(object sender, EventArgs e)
    {
        var args = (GridViewCommandEventArgs)e;

		var index = int.Parse(args.CommandArgument.ToString());
		var gridview = (GridView)args.CommandSource;
		var id = int.Parse(gridview.DataKeys[index].Values["F_ID"].ToString());



		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			// dbデータ取得
			SqlCommand com = new SqlCommand("SELECT * FROM M_APPLY_TYPE WHERE F_ID = @id", con);
			com.Parameters.Add(new SqlParameter("@id", id));
			SqlDataReader sdr = com.ExecuteReader();

			if (sdr.Read())
			{

				F_ID1.Text = sdr["F_ID"].ToString();
				F_NAME1.Text = sdr["F_LAST_NAME"].ToString();
				
			}
			com.Dispose();
		}
		catch
		{
			throw;
		}
		finally
		{
			con.Close();
			con.Dispose();
		}
	}
    

    protected void M_APPLY_TYPE_Click(object sender, EventArgs e)
    {

        var button = (Button)sender;
        var row = (GridViewRow)button.Parent.Parent;

        var f_id = GridView1.DataKeys[row.RowIndex].Values["F_ID"].ToString();
        var f_name = GridView1.DataKeys[row.RowIndex].Values["F_NAME"].ToString();

        F_ID1.Text = f_id;
        F_NAME1.Text = f_name;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}
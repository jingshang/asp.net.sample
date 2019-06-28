using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl2_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void M_APPLY_TYPE_OriginalEvent(object sender, EventArgs e)
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

                ID.Text = sdr["F_ID"].ToString();
                NAME.Text = sdr["F_NAME"].ToString();
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

    protected void WebUserControlM_BORAD_TYPE_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_BORAD_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID1.Text = sdr1["F_ID"].ToString();
                NAME1.Text = sdr1["F_NAME"].ToString();

            }
            com1.Dispose();
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
}
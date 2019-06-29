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
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());


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
        // 親で子のGridViewとRowが手に入ればいいわけですね。
        // e にはボタンが入っていました。
        // そのボタンのparentをさかのぼってGridViewとRowを取得しました。
        // 取得時はちゃんとキャストしてあげないとだめです。
        // キャストいっぱいしていてわかりにくいかもですがバラすと意外と単純です。

        // まずは子の 第2引数をここで復活させます。
        var command_args = (GridViewCommandEventArgs)e;

        // クリックしたボタンを取得します。
        var button = (Button)command_args.CommandSource;

        // buttonからrowを取得（buttonの親の親）
        var gridview_row = (GridViewRow)button.Parent.Parent;

        // rowからgridviewを取得（rowの親の親）
        var gridview = (GridView)gridview_row.Parent.Parent;

        // ここまできてやっと、いつも通りの方法でid取得
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());


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

    protected void WebUserControlM_FLOW_TYPE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());
        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_FLOW_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID2.Text = sdr1["F_ID"].ToString();
                NAME2.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlM_INVASION_TYPE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_INVASION_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID3.Text = sdr1["F_ID"].ToString();
                NAME3.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlM_MODIFY_TYPE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_MODIFY_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID4.Text = sdr1["F_ID"].ToString();
                NAME4.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlM_MONEY_TRANSFER_TYPE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_MONEY_TRANSFER_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID5.Text = sdr1["F_ID"].ToString();
                NAME5.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlM_ROLE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_ROLE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID6.Text = sdr1["F_ID"].ToString();
                ROLE_NAME.Text = sdr1["F_ROLE_NAME"].ToString();

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

    protected void WebUserControlS_DATABASE_VERSION_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM S_DATABASE_VERSION WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID7.Text = sdr1["F_ID"].ToString();
                VERSION.Text = sdr1["F_VERSION"].ToString();
                CREATE_DATE.Text = sdr1["F_CREATE_DATE"].ToString();

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

    protected void WebUserControlS_SYSTEM_SETTING_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM S_SYSTEM_SETTING WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID8.Text = sdr1["F_ID"].ToString();
                SETTING1.Text = sdr1["SETTING1"].ToString();
                SETTING2.Text = sdr1["SETTING2"].ToString();

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

    protected void WebUserControlT_APPLY_ENTRY_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT A.F_ID as 'APPLY_ENTRY_ID',F_VERSION,F_TITLE,F_BEGIN_DATE,F_END_DATE,F_COMMENT,F_IS_INVASION,B.F_NAME as 'INVASION_NAME',F_INVASION_SEVERE_TEXT,F_IS_MONEY_TRANSFER,C.F_NAME as 'MONEY_TRANSFER_TYPE',F_CREATE_USER_ID,F_UPDATE_USER_ID,F_CREATE_DATE,F_UPDATE_DATE from T_APPLY_ENTRY A left outer join M_INVASION_TYPE B on A.F_INVASION_TYPE = B.F_ID left outer join M_MONEY_TRANSFER_TYPE C on A.F_MONEY_TRANSFER_TYPE = C.F_ID WHERE A.F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID9.Text = sdr1["APPLY_ENTRY_ID"].ToString();
                VERSION2.Text = sdr1["F_VERSION"].ToString();
                TITLE.Text = sdr1["F_TITLE"].ToString();
                BEGIN_DATE.Text = sdr1["F_BEGIN_DATE"].ToString();
                END_DATE.Text = sdr1["F_END_DATE"].ToString();
                COMMENT.Text = sdr1["F_COMMENT"].ToString();
                IS_INVASION.Text = sdr1["F_IS_INVASION"].ToString();
                INVASION_TYPE.Text = sdr1["INVASION_NAME"].ToString();
                INVASION_SEVERE_TEXT.Text = sdr1["F_INVASION_SEVERE_TEXT"].ToString();
                IS_MONEY_TRANSFER.Text = sdr1["F_IS_MONEY_TRANSFER"].ToString();
                MONEY_TRANSFER_TYPE.Text = sdr1["MONEY_TRANSFER_TYPE"].ToString();
                CREATE_USER_ID.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                CREATE_DATE2.Text = sdr1["F_CREATE_DATE"].ToString();
                UPDATE_DATE.Text = sdr1["F_UPDATE_DATE"].ToString();

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

    protected void WebUserControlT_APPLY_MODIFY_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT A.F_ID as 'APPLY_MODIFY_ID',F_VERSION,D.F_NAME as 'MODIFY_TYPE',F_TITLE,F_BEGIN_DATE,F_END_DATE,F_COMMENT,F_IS_INVASION,B.F_NAME as 'INVASION_NAME',F_INVASION_SEVERE_TEXT,F_IS_MONEY_TRANSFER,C.F_NAME as 'MONEY_TRANSFER_TYPE',F_CREATE_USER_ID,F_UPDATE_USER_ID,F_CREATE_DATE,F_UPDATE_DATE from T_APPLY_MODIFY A left outer join M_INVASION_TYPE B on A.F_INVASION_TYPE = B.F_ID left outer join M_MONEY_TRANSFER_TYPE C on A.F_MONEY_TRANSFER_TYPE = C.F_ID left outer join M_MODIFY_TYPE D on A.F_MODIFY_TYPE = D.F_ID WHERE A.F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID10.Text = sdr1["APPLY_MODIFY_ID"].ToString();
                VERSION3.Text = sdr1["F_VERSION"].ToString();
                MODIFY_TYPE.Text = sdr1["MODIFY_TYPE"].ToString();
                TITLE2.Text = sdr1["F_TITLE"].ToString();
                BEGIN_DATE2.Text = sdr1["F_BEGIN_DATE"].ToString();
                END_DATE2.Text = sdr1["F_END_DATE"].ToString();
                COMMENT2.Text = sdr1["F_COMMENT"].ToString();
                IS_INVASION2.Text = sdr1["F_IS_INVASION"].ToString();
                INVASION_TYPE2.Text = sdr1["INVASION_NAME"].ToString();
                INVASION_SEVERE_TEXT2.Text = sdr1["F_INVASION_SEVERE_TEXT"].ToString();
                IS_MONEY_TRANSFER2.Text = sdr1["F_IS_MONEY_TRANSFER"].ToString();
                MONEY_TRANSFER_TYPE2.Text = sdr1["MONEY_TRANSFER_TYPE"].ToString();
                CREATE_USER_ID2.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID2.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                CREATE_DATE3.Text = sdr1["F_CREATE_DATE"].ToString();
                UPDATE_DATE2.Text = sdr1["F_UPDATE_DATE"].ToString();

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

    protected void WebUserControlT_FLOW_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var number = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_NUMBER"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT C.F_ID as 'F_ID',F_NUMBER,C.F_NAME as 'FLOW_TYPE',A.F_CREATE_USER_ID as 'FLOW_CREATE_USER_ID',A.F_CREATE_DATE as'FLOW_CREATE_DATE' FROM T_FLOW A inner join T_ROOT B on A.F_ID = B.F_ID inner join M_FLOW_TYPE C on A.F_FLOW_TYPE = C.F_ID WHERE A.F_NUMBER = @number", con);
            com1.Parameters.Add(new SqlParameter("@number", number));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID11.Text = sdr1["F_ID"].ToString();
                NUMBER.Text = sdr1["F_NUMBER"].ToString();
                FLOW_TYPE.Text = sdr1["FLOW_TYPE"].ToString();
                CREATE_USER_ID3.Text = sdr1["FLOW_CREATE_USER_ID"].ToString();
                CREATE_DATE4.Text = sdr1["FLOW_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_LOGIN_HISTORY_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_LOGIN_HISTORY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID12.Text = sdr1["F_ID"].ToString();
                INPUT_MAIL.Text = sdr1["F_INPUT_MAIL"].ToString();
                LOGIN_RESULT.Text = sdr1["F_LOGIN_RESULT"].ToString();
                IP.Text = sdr1["F_IP"].ToString();
                CREATE_DATE5.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_PROJECT_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT A.F_ID AS 'PROJECT_ID',A.F_PROJECT_NUMBER,B.F_NAME as 'BORAD_TYPE',A.F_CREATE_USER_ID,A.F_CREATE_DATE FROM T_PROJECT A inner join M_BORAD_TYPE B on A.F_BORAD_TYPE = B.F_ID WHERE A.F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID13.Text = sdr1["PROJECT_ID"].ToString();
                PROJECT_NUMBER.Text = sdr1["F_PROJECT_NUMBER"].ToString();
                BORAD_TYPE.Text = sdr1["BORAD_TYPE"].ToString();
                CREATE_USER_ID4.Text = sdr1["F_CREATE_USER_ID"].ToString();
                CREATE_DATE6.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_ROOT_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT A.F_ID AS 'ROOT_ID',C.F_PROJECT_NUMBER as 'PROJECT_NUMBER',B.F_NAME as 'APPLY_TYPE',A.F_CREATE_USER_ID as 'F_CREATE_USER_ID',A.F_CREATE_DATE as 'F_CREATE_DATE'FROM T_ROOT A inner join M_APPLY_TYPE B on A.F_APPLY_TYPE = B.F_ID inner join T_PROJECT C on A.F_PROJECT_ID = C.F_ID WHERE A.F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID14.Text = sdr1["ROOT_ID"].ToString();
                PROJECT_NUMBER1.Text = sdr1["PROJECT_NUMBER"].ToString();
                APPLY_TYPE.Text = sdr1["APPLY_TYPE"].ToString();
                CREATE_USER_ID5.Text = sdr1["F_CREATE_USER_ID"].ToString();
                CREATE_DATE7.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_USER_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_USER WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID15.Text = sdr1["F_ID"].ToString();
                LAST_NAME.Text = sdr1["F_LAST_NAME"].ToString();
                FIRST_NAME.Text = sdr1["F_FIRST_NAME"].ToString();
                LAST_NAME_KANA.Text = sdr1["F_LAST_NAME_KANA"].ToString();
                FIRST_NAME_KANA.Text = sdr1["F_FIRST_NAME_KANA"].ToString();
                EMAIL.Text = sdr1["F_EMAIL"].ToString();
                PASS.Text = sdr1["F_PASS"].ToString();
                CREATE_USER_ID6.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID3.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                UPDATE_DATE3.Text = sdr1["F_UPDATE_DATE"].ToString();
                CREATE_DATE8.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_USER_ENTRY_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_USER_ENTRY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID16.Text = sdr1["F_ID"].ToString();
                LAST_NAME2.Text = sdr1["F_LAST_NAME"].ToString();
                FIRST_NAME2.Text = sdr1["F_FIRST_NAME"].ToString();
                LAST_NAME_KANA2.Text = sdr1["F_LAST_NAME_KANA"].ToString();
                FIRST_NAME_KANA2.Text = sdr1["F_FIRST_NAME_KANA"].ToString();
                EMAIL2.Text = sdr1["F_EMAIL"].ToString();
                PASS2.Text = sdr1["F_PASS"].ToString();
                CREATE_USER_ID7.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID4.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                UPDATE_DATE4.Text = sdr1["F_UPDATE_DATE"].ToString();
                CREATE_DATE9.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlT_USER_ROLE_OriginalEvent(object sender, EventArgs e)
    {
        var command_args = (GridViewCommandEventArgs)e;
        var button = (Button)command_args.CommandSource;
        var gridview_row = (GridViewRow)button.Parent.Parent;
        var gridview = (GridView)gridview_row.Parent.Parent;
        var id = int.Parse(gridview.DataKeys[gridview_row.RowIndex].Values["F_USER_ID"].ToString());

        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT F_USER_ID,B.F_LAST_NAME + B.F_FIRST_NAME as 'USER_NAME',C.F_ROLE_NAME as 'ROLE_NAME'FROM T_USER_ROLE A inner join T_USER B on A.F_USER_ID = B.F_ID inner join M_ROLE C on A.F_ROLE_ID = C.F_ID WHERE F_USER_ID = @user_id", con);
            com1.Parameters.Add(new SqlParameter("@user_id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {
                USER_ID.Text = sdr1["F_USER_ID"].ToString();
                USER_NAME.Text = sdr1["USER_NAME"].ToString();
                USER_ROLE.Text = sdr1["ROLE_NAME"].ToString();

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
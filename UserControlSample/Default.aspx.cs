﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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

    }

    protected void WebUserControlMApplyType1_OriginalEvent(object sender, EventArgs e)
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

                ID_Label.Text = sdr["F_ID"].ToString();
                NAME_Label.Text = sdr["F_NAME"].ToString();
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

    protected void WebUserControlMBoradType1_OriginalEvent(object sender, EventArgs e)
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

                ID_Label1.Text = sdr1["F_ID"].ToString();
                NAME_Label1.Text = sdr1["F_NAME"].ToString();
               
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

    protected void WebUserControlMFlowType1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_FLOW_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label2.Text = sdr1["F_ID"].ToString();
                NAME_Label2.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlMInvasionType1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_INVASION_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label3.Text = sdr1["F_ID"].ToString();
                NAME_Label3.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlMModifyType1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_MODIFY_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label4.Text = sdr1["F_ID"].ToString();
                NAME_Label4.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlMMoneyTransferType1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_MONEY_TRANSFER_TYPE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label5.Text = sdr1["F_ID"].ToString();
                NAME_Label5.Text = sdr1["F_NAME"].ToString();

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

    protected void WebUserControlMRole1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM M_ROLE WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label6.Text = sdr1["F_ID"].ToString();
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

    protected void WebUserControlSDatabaseVersion1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM S_DATABASE_VERSION WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label7.Text = sdr1["F_ID"].ToString();
                VERSION_Label.Text = sdr1["F_VERSION"].ToString();
                CREATE_DATE_Label1.Text = sdr1["F_CREATE_DATE"].ToString();

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

    protected void WebUserControlSSystemSetting1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM S_SYSTEM_SETTING WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label8.Text = sdr1["F_ID"].ToString();
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

    protected void WebUserControlTApplyEntry1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_APPLY_ENTRY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label9.Text = sdr1["F_ID"].ToString();
                VERSION_Label2.Text = sdr1["F_VERSION"].ToString();
                TITLE_Label.Text = sdr1["F_TITLE"].ToString();
                BEGIN_DATE_Label.Text = sdr1["F_BEGIN_DATE"].ToString();
                END_DATE_Label.Text = sdr1["F_END_DATE"].ToString();
                COMMENT_Label.Text = sdr1["F_COMMENT"].ToString();
                IS_INVASION_Label.Text = sdr1["F_IS_INVASION"].ToString();
                INVASION_TYPE_Label.Text = sdr1["F_INVASION_TYPE"].ToString();
                INVASION_SEVERE_TEXT_Label.Text = sdr1["F_INVASION_SEVERE_TEXT"].ToString();
                IS_MONEY_TRANSFER_Label.Text = sdr1["F_IS_MONEY_TRANSFER"].ToString();
                MONEY_TRANFER_TYPE_Label.Text = sdr1["F_MONEY_TRANSFER_TYPE"].ToString();
                CREATE_USER_ID_Label.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID_Label.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                CREATE_DATE_Label.Text = sdr1["F_CREATE_DATE"].ToString();
                UPDATE_DATE_Label.Text = sdr1["F_UPDATE_DATE"].ToString();

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

    protected void WebUserControlTApplyModify1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_APPLY_MODIFY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label10.Text = sdr1["F_ID"].ToString();
                VERSION_Label3.Text = sdr1["F_VERSION"].ToString();
                MODIFY_TYPE_Label.Text = sdr1["F_MODIFY_TYPE"].ToString();
                TITLE_Label2.Text = sdr1["F_TITLE"].ToString();
                BEGIN_DATE_Label2.Text = sdr1["F_BEGIN_DATE"].ToString();
                END_DATE_Label2.Text = sdr1["F_END_DATE"].ToString();
                COMMENT_Label2.Text = sdr1["F_COMMENT"].ToString();
                IS_INVASION_Label2.Text = sdr1["F_IS_INVASION"].ToString();
                INVASION_TYPE_Label2.Text = sdr1["F_INVASION_TYPE"].ToString();
                INVASION_SEVERE_TEXT_Label2.Text = sdr1["F_INVASION_SEVERE_TEXT"].ToString();
                IS_MONEY_TRANSFER_Label2.Text = sdr1["F_IS_MONEY_TRANSFER"].ToString();
                MONEY_TRANSFER_TYPE_Label2.Text = sdr1["F_MONEY_TRANSFER_TYPE"].ToString();
                CREATE_USER_ID_Label2.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID_Label2.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                CREATE_DATE_Label2.Text = sdr1["F_CREATE_DATE"].ToString();
                UPDATE_DATE_Label2.Text = sdr1["F_UPDATE_DATE"].ToString();

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

    protected void WebUserControlTFlow1_OriginalEvent(object sender, EventArgs e)
    {
        var args = (GridViewCommandEventArgs)e;

        var index = int.Parse(args.CommandArgument.ToString());
        var gridview = (GridView)args.CommandSource;
        var number = int.Parse(gridview.DataKeys[index].Values["F_NUMBER"].ToString());



        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_FLOW WHERE F_NUMBER = @number", con);
            com1.Parameters.Add(new SqlParameter("@number", number));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label11.Text = sdr1["F_ID"].ToString();
                NUMBER_Label.Text = sdr1["F_NUMBER"].ToString();
                FLOW_TYPE_Label.Text = sdr1["F_FLOW_TYPE"].ToString();
                CREATE_USER_ID_Label3.Text = sdr1["F_CREATE_USER_ID"].ToString();
                CREATE_DATE_Label3.Text = sdr1["F_CREATE_DATE"].ToString();
     

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

    protected void WebUserControlTLoginHistory1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_LOGIN_HISTORY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label12.Text = sdr1["F_ID"].ToString();
                INPUT_MAIL_Label.Text = sdr1["F_INPUT_MAIL"].ToString();
                LOGIN_RESULT_Label.Text = sdr1["F_LOGIN_RESULT"].ToString();
                IP_Label.Text = sdr1["F_IP"].ToString();
                CREATE_DATE_Label4.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlTProject1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_PROJECT WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label13.Text = sdr1["F_ID"].ToString();
                PROJECT_NUMBER_Label.Text = sdr1["F_PROJECT_NUMBER"].ToString();
                BORAD_TYPE_Label.Text = sdr1["F_BORAD_TYPE"].ToString();
                CREATE_USER_ID_Label4.Text = sdr1["F_CREATE_USER_ID"].ToString();
                CREATE_DATE_Label5.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlTRoot1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_ROOT WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label14.Text = sdr1["F_ID"].ToString();
                PROJECT_ID_Label.Text = sdr1["F_PROJECT_ID"].ToString();
                APPLY_TYPE_Label.Text = sdr1["F_APPLY_TYPE"].ToString();
                CREATE_USER_ID_Label5.Text = sdr1["F_CREATE_USER_ID"].ToString();
                CREATE_DATE_Label6.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlTUser1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_USER WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label15.Text = sdr1["F_ID"].ToString();
                LAST_NAME_Label.Text = sdr1["F_LAST_NAME"].ToString();
                FIRST_NAME_Label.Text = sdr1["F_FIRST_NAME"].ToString();
                LAST_NAME_K_Label.Text = sdr1["F_LAST_NAME_KANA"].ToString();
                FIRST_NAME_K_Label.Text = sdr1["F_FIRST_NAME_KANA"].ToString();
                EMAIL_Label.Text = sdr1["F_EMAIL"].ToString();
                PASS_Label.Text = sdr1["F_PASS"].ToString();
                CREATE_USER_ID_Label6.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID_Label3.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                UPDATE_DATE_Label3.Text = sdr1["F_UPDATE_DATE"].ToString();
                CREATE_DATE_Label7.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlTUserEntry1_OriginalEvent(object sender, EventArgs e)
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
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_USER_ENTRY WHERE F_ID = @id", con);
            com1.Parameters.Add(new SqlParameter("@id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                ID_Label16.Text = sdr1["F_ID"].ToString();
                LAST_NAME_Label2.Text = sdr1["F_LAST_NAME"].ToString();
                FIRST_NAME_Label2.Text = sdr1["F_FIRST_NAME"].ToString();
                LAST_NAME_K_Label2.Text = sdr1["F_LAST_NAME_KANA"].ToString();
                FIRST_NAME_K_Label2.Text = sdr1["F_FIRST_NAME_KANA"].ToString();
                EMAIL_Label2.Text = sdr1["F_EMAIL"].ToString();
                PASS_Label2.Text = sdr1["F_PASS"].ToString();
                CREATE_USER_ID_Label7.Text = sdr1["F_CREATE_USER_ID"].ToString();
                UPDATE_USER_ID_Label4.Text = sdr1["F_UPDATE_USER_ID"].ToString();
                UPDATE_DATE_Label4.Text = sdr1["F_UPDATE_DATE"].ToString();
                CREATE_DATE_Label8.Text = sdr1["F_CREATE_DATE"].ToString();


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

    protected void WebUserControlTUserRole1_OriginalEvent(object sender, EventArgs e)
    {
        var args = (GridViewCommandEventArgs)e;

        var index = int.Parse(args.CommandArgument.ToString());
        var gridview = (GridView)args.CommandSource;
        var id = int.Parse(gridview.DataKeys[index].Values["F_USER_ID"].ToString());



        string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionStr);

        con.Open();
        try
        {
            // dbデータ取得
            SqlCommand com1 = new SqlCommand("SELECT * FROM T_USER_ROLE WHERE F_USER_ID = @user_id", con);
            com1.Parameters.Add(new SqlParameter("@user_id", id));
            SqlDataReader sdr1 = com1.ExecuteReader();

            if (sdr1.Read())
            {

                USER_ID_Label.Text = sdr1["F_USER_ID"].ToString();
                ROLE_ID_Label.Text = sdr1["F_ROLE_ID"].ToString();
                
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
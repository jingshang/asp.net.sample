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
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_UserControl : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			Label_Title.InnerText = "Webユーザーコントロール";
		}
	}
	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}

	protected void Button_UserControlSample1_Click(object sender, EventArgs e)
	{
		WebUserControl_Sample21.Name = TextBox_UserControlSample1.Text;

		var age = 0;
		if(int.TryParse(RadioButtonList_UserControlSample2.SelectedValue, out age))
		{ 
			WebUserControl_Sample21.Age =  age;
		}
	}


	protected void Button_UserControlSample4_Click(object sender, EventArgs e)
	{
		WebUserControl_Sample4.UpdateView();
	}

	protected void WebUserControl_Sample5_OriginalEvent(object sender, EventArgs e)
	{
		Label_WebUserControlSample5.Text = DateTime.Now.ToString("hh:MM:ss");
	}

	protected void WebUserControl_Sample6_OriginalEvent(object sender, EventArgs e)
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
			SqlCommand com = new SqlCommand("SELECT * FROM T_USER WHERE F_ID = @id", con);
			com.Parameters.Add(new SqlParameter("@id", id));
			SqlDataReader sdr = com.ExecuteReader();

			if (sdr.Read())
			{

				Label1_F_ID.Text = sdr["F_ID"].ToString();
				Label2_F_LAST_NAME.Text = sdr["F_LAST_NAME"].ToString();
				Label3_F_FIRST_NAME.Text = sdr["F_FIRST_NAME"].ToString();
				Label4_F_LAST_NAME_KANA.Text = sdr["F_LAST_NAME_KANA"].ToString();
				Label5_F_FIRST_NAME_KANA.Text = sdr["F_FIRST_NAME_KANA"].ToString();
				Label6_F_EMAIL.Text = sdr["F_EMAIL"].ToString();
				Label7_F_PASS.Text = sdr["F_PASS"].ToString();
				Label8_F_CREATE_USER_ID.Text = sdr["F_CREATE_USER_ID"].ToString();
				Label9_F_UPDATE_USER_ID.Text = sdr["F_UPDATE_USER_ID"].ToString();
				Label10_F_UPDATE_DATE.Text = sdr["F_UPDATE_DATE"].ToString();
				Label11_F_CREATE_DATE.Text = sdr["F_CREATE_DATE"].ToString();
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
}
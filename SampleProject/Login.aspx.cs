using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kurihara_SampleProject_Login : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void ButtonBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/kurihara");
	}
	protected void Button_Login_Click(object sender, EventArgs e)
	{
		if(Page.IsValid)
		{
			// 本サンプルではSession["LoginId"]に値が存在することをLogin済みとします。
			// 実際は用意された認証の仕組みを使用しますが、通常の現場では導入済みであることが多いので
			// 今回はセッションを利用する感覚を覚えるという事で割り切ってください
			Session[SessionUserInfo.SESSION_KEY] = SessionUserInfo.GetSessionUserInfo(GetLoginId().Value);

			// Role取得
			Response.Redirect("~/kurihara/SampleProject/Default.aspx");
		}
	}

	protected void Validation_Login_ServerValidate(object source, ServerValidateEventArgs args)
	{
		args.IsValid = GetLoginId().HasValue;
	}
	private int? GetLoginId()
	{
		if(string.IsNullOrWhiteSpace(TextBox_Mail.Text)
			|| string.IsNullOrWhiteSpace(TextBox_Pass.Value))
		{
			return null;
		}
		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			// dbデータ取得
			SqlCommand com = new SqlCommand("SELECT * FROM T_USER WHERE F_EMAIL = @F_EMAIL AND F_PASS = @F_PASS", con);
			try
			{
				com.Parameters.Add(new SqlParameter("@F_EMAIL", TextBox_Mail.Text));
				com.Parameters.Add(new SqlParameter("@F_PASS", TextBox_Pass.Value));
				SqlDataReader sdr = com.ExecuteReader();
				if(!sdr.Read())
				{
					return null;
				}
				return int.Parse(sdr["F_ID"].ToString());
			}
			catch
			{
				throw;
			}
			finally
			{
				com.Dispose();
			}

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
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// App_Codeにコピーしてください
/// </summary>
public class  SessionUserInfo
{
	public static readonly string SESSION_KEY = "KSIdHGUg786oDJIJ";
	public int UserId { get; set; }
	public List<int> RoleId { get; set; }
	public string UserName { get; set; }
	public SessionUserInfo()
	{
	}
	/// <summary>※nullを返す可能性があります</summary>
	public static SessionUserInfo GetSessionUserInfo(int user_id)
	{
		var user_info = new SessionUserInfo();

		string ConnectionStr = ConfigurationManager.ConnectionStrings["MyConnectionStr"].ConnectionString;
		SqlConnection con = new SqlConnection(ConnectionStr);

		con.Open();
		try
		{
			// dbデータ取得
			SqlCommand com = new SqlCommand("SELECT * FROM T_USER WHERE F_ID = @F_ID", con);
			try
			{
				com.Parameters.Add(new SqlParameter("@F_ID", user_id));
				SqlDataReader sdr = com.ExecuteReader();
				if (!sdr.Read())
				{
					return null;
				}
				user_info.UserId = int.Parse(sdr["F_ID"].ToString());
				user_info.UserName = sdr["F_LAST_NAME"].ToString()+" " + sdr["F_FIRST_NAME"].ToString();
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

		// role
		con = new SqlConnection(ConnectionStr);
		con.Open();
		try
		{
			// dbデータ取得
			SqlCommand com = new SqlCommand("SELECT * FROM T_USER_ROLE WHERE F_USER_ID = @F_USER_ID", con);
			try
			{
				com.Parameters.Add(new SqlParameter("@F_USER_ID", user_id));
				SqlDataReader sdr = com.ExecuteReader();
				user_info.RoleId = new List<int>();
				if (sdr.Read())
				{
					user_info.RoleId.Add(int.Parse(sdr["F_ROLE_ID"].ToString()));
				}
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
		return user_info;
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kentaro_WebUserControl_Sample2 : System.Web.UI.UserControl
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	public String Name
	{
		get { return Label_Name.Text; }
		set { Label_Name.Text = value; }
	}
	public int Age
	{
		get
		{

			var age = 0;
			if (int.TryParse(Label_Age.Text, out age))
			{
				return age;
			}
			return 0;
		}
		set
		{
			Label_Age.Text = value.ToString();
		}
	}

	public void UpdateView()
	{
		var r = new Random();
		this.Name = "山田花子"+ r.Next(10, 10000)+"号";
		this.Age = r.Next(10, 10000);
	}
}
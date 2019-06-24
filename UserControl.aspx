<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserControl.aspx.cs" Inherits="kurihara_UserControl" %>

<%@ Register Src="WebUserControl_Sample1.ascx" TagName="WebUserControl_Sample1" TagPrefix="uc1" %>

<%@ Register src="WebUserControl_Sample2.ascx" tagname="WebUserControl_Sample2" tagprefix="uc2" %>

<%@ Register src="WebUserControl_Sample3.ascx" tagname="WebUserControl_Sample3" tagprefix="uc3" %>

<%@ Register src="WebUserControl_Sample4.ascx" tagname="WebUserControl_Sample4" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

	<style>
		html {
			letter-spacing: 0.5px;
		}

		.group_div {
			border-bottom: 1px solid;
			padding: 10px;
		}

			.group_div div {
				padding: 10px;
			}

		h3 {
			font-weight: bold;
			font: 2em;
		}

		img {
			border: 1px solid;
			margin: 20px;
		}
	</style>

	<asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="戻る" Style="margin: 20px 0;" />
	<h1 id="Label_Title" runat="server"></h1>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<div class="group_div">
				<uc1:WebUserControl_Sample1 ID="WebUserControl_Sample11" runat="server" />
			</div>
			<div class="group_div">
				<p>WebユーザーコントロールのプロパティにCSファイル側で値を設定することも出来ます。</p>
				<asp:TextBox ID="TextBox_UserControlSample1" runat="server" ></asp:TextBox>
				<asp:RadioButtonList ID="RadioButtonList_UserControlSample2" runat="server">
					<asp:ListItem Text="10" Value="10"></asp:ListItem>
					<asp:ListItem Text="20" Value="20"></asp:ListItem>
					<asp:ListItem Text="30" Value="30"></asp:ListItem>
				</asp:RadioButtonList>
				
				<br />
				<asp:Button ID="Button_UserControlSample1" runat="server" OnClick="Button_UserControlSample1_Click" Text="Webユーザーコントロールに値を渡す" />

				<br /><br />

				[WebUserControl_Sample2.ascx]
				<div style="border:1px solid; width:50%;">
					<uc2:WebUserControl_Sample2 ID="WebUserControl_Sample21" runat="server" />
				</div>

			</div>
			<div class="group_div">
				<p>Webユーザーコントロールのプロパティに、デザインファイルの属性で値を設定する事も出来ます。<br />デザインファイルを見てみて下さい。</p>

				<br />
				[WebUserControl_Sample2.ascx]
				<div style="border:1px solid; width:50%;">
					<uc2:WebUserControl_Sample2 ID="WebUserControl_Sample3" runat="server" Age="123456789" Name="山田花子" />
				</div>
			</div>
			<div class="group_div">
				<p>WebユーザーコントロールのpublicメソッドもCSファイル側で呼べます。</p>
				<asp:Button ID="Button_UserControlSample4" runat="server" OnClick="Button_UserControlSample4_Click" Text="メソッドを呼ぶ" />

				<br /><br />

				[WebUserControl_Sample2.ascx]
				<div style="border:1px solid; width:50%;">
					<uc2:WebUserControl_Sample2 ID="WebUserControl_Sample4" runat="server"/>
				</div>
			</div>
			<div class="group_div">

				[WebUserControl_Sample3.ascx]
				<div style="border:1px solid; width:50%;">
					<uc3:WebUserControl_Sample3 ID="WebUserControl_Sample5" runat="server" OnOriginalEvent="WebUserControl_Sample5_OriginalEvent" />
				</div>
				<br />
				
				<p>上のWebユーザーコントロールのボタンイベントを、外のaspxで受け取ります。</p>
				イベント発生時刻：<asp:Label ID="Label_WebUserControlSample5" runat="server"></asp:Label>
				
			</div>
			<div class="group_div">

				[WebUserControl_Sample4.ascx]
				<div style="border:1px solid; width:50%;">
					
					<uc4:WebUserControl_Sample4 ID="WebUserControl_Sample6" runat="server" OnOriginalEvent="WebUserControl_Sample6_OriginalEvent" />
					
				</div>
				<br />
				<table>
					<tr>
						<th>F_ID</th>
						<td><asp:Label ID="Label1_F_ID" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_LAST_NAME</th>
						<td><asp:Label ID="Label2_F_LAST_NAME" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_FIRST_NAME</th>
						<td><asp:Label ID="Label3_F_FIRST_NAME" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_LAST_NAME_KANA</th>
						<td><asp:Label ID="Label4_F_LAST_NAME_KANA" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_FIRST_NAME_KANA</th>
						<td><asp:Label ID="Label5_F_FIRST_NAME_KANA" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_EMAIL</th>
						<td><asp:Label ID="Label6_F_EMAIL" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_PASS</th>
						<td><asp:Label ID="Label7_F_PASS" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_CREATE_USER_ID</th>
						<td><asp:Label ID="Label8_F_CREATE_USER_ID" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_UPDATE_USER_ID</th>
						<td><asp:Label ID="Label9_F_UPDATE_USER_ID" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_UPDATE_DATE</th>
						<td><asp:Label ID="Label10_F_UPDATE_DATE" runat="server"></asp:Label></td>
					</tr>
					<tr>
						<th>F_CREATE_DATE</th>
						<td><asp:Label ID="Label11_F_CREATE_DATE" runat="server"></asp:Label></td>
					</tr>
				</table>
				
				
				
			</div>
		</ContentTemplate>
	</asp:UpdatePanel>




</asp:Content>


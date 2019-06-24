<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="kurihara_SampleProject_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="戻る" Style="margin: 20px 0;" ValidationGroup="None" />
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			
			<table>
				<tr>
					<th>メールアドレス</th>
					<td><asp:TextBox ID="TextBox_Mail" runat="server"></asp:TextBox></td>
					<td>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="TextBox_Mail" ErrorMessage="メールアドレスではありません。" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="TextBox_Mail" ErrorMessage="メールアドレスを入力してください" ForeColor="Red"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<th>パスワード</th>
					<td><input runat="server" id="TextBox_Pass" type="password" /></td>
					<td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="TextBox_Pass" ErrorMessage="パスワードを入力してください" ForeColor="Red"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td colspan="3"><asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="ログイン" /></td>
				</tr>
				<tr>
					<td colspan="3">
						<asp:CustomValidator ID="Validation_Login" runat="server" Display="Dynamic" OnServerValidate="Validation_Login_ServerValidate" ForeColor="Red" ></asp:CustomValidator>
						<asp:ValidationSummary ID="sum" runat="server" Display="Dynamic" ForeColor="Red" />
					</td>
				</tr>
			</table>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>


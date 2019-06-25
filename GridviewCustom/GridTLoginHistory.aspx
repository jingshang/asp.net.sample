<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTLoginHistory.aspx.cs" Inherits="kurihara_GridviewCustom_GridTLoginHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_INPUT_MAIL,F_LOGIN_RESULT,F_IP,F_CREATE_DATE" DataSourceID="T_LOGIN_HISTORY">
		<Columns>
			<asp:TemplateField>
				<HeaderTemplate>
					ボタン
				</HeaderTemplate>
				<ItemTemplate>
					<div>
						<asp:Button ID="SELECT" runat="server" Text="詳細" OnClick="SELECT_Click" />
					</div>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_INPUT_MAIL" HeaderText="F_INPUT_MAIL" SortExpression="F_INPUT_MAIL" />
			<asp:BoundField DataField="F_LOGIN_RESULT" HeaderText="F_LOGIN_RESULT" SortExpression="F_LOGIN_RESULT" />
			<asp:BoundField DataField="F_IP" HeaderText="F_IP" SortExpression="F_IP" />
			<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="T_LOGIN_HISTORY" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_LOGIN_HISTORY]"></asp:SqlDataSource>
	<br />
	<hr />
	F_ID:
	<asp:Label ID="ID" runat="server" Text=""></asp:Label>
	<hr />
	F_INPUT_MAIL:
	<asp:Label ID="INPUT_MAIL" runat="server" Text=""></asp:Label>
	<hr />
	F_LOGIN_RESULT:
	<asp:Label ID="LOGIN_RESULT" runat="server" Text=""></asp:Label>
	<hr />
	F_IP:
	<asp:Label ID="IP" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTUserEntry.aspx.cs" Inherits="kurihara_GridviewCustom_GridTUserEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_LAST_NAME,F_FIRST_NAME,F_LAST_NAME_KANA,F_FIRST_NAME_KANA,F_EMAIL,F_PASS,F_CREATE_USER_ID,F_UPDATE_USER_ID,F_CREATE_DATE,F_UPDATE_DATE" DataSourceID="T_USER_ENTRY">
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
			<asp:BoundField DataField="F_LAST_NAME" HeaderText="F_LAST_NAME" SortExpression="F_LAST_NAME" />
			<asp:BoundField DataField="F_FIRST_NAME" HeaderText="F_FIRST_NAME" SortExpression="F_FIRST_NAME" />
			<asp:BoundField DataField="F_LAST_NAME_KANA" HeaderText="F_LAST_NAME_KANA" SortExpression="F_LAST_NAME_KANA" />
			<asp:BoundField DataField="F_FIRST_NAME_KANA" HeaderText="F_FIRST_NAME_KANA" SortExpression="F_FIRST_NAME_KANA" />
			<asp:BoundField DataField="F_EMAIl" HeaderText="F_EMAIl" SortExpression="F_EMAIl" />
			<asp:BoundField DataField="F_PASS" HeaderText="F_PASS" SortExpression="F_PASS" />
			<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
			<asp:BoundField DataField="F_UPDATE_USER_ID" HeaderText="F_UPDATE_USER_ID" SortExpression="F_UPDATE_USER_ID" />
			<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
			<asp:BoundField DataField="F_UPDATE_DATE" HeaderText="F_UPDATE_DATE" SortExpression="F_UPDATE_DATE" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="T_USER_ENTRY" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_USER_ENTRY]"></asp:SqlDataSource>
	<br />
	<hr />
	F_ID:
	<asp:Label ID="ID" runat="server" Text=""></asp:Label>
	<hr />
	F_LAST_NAME:
	<asp:Label ID="LAST_NAME" runat="server" Text=""></asp:Label>
	<hr />
	F_FIRST_NAME:
	<asp:Label ID="FIRST_NAME" runat="server" Text=""></asp:Label>
	<hr />
	F_LAST_NAME_KANA:
	<asp:Label ID="LAST_NAME_KANA" runat="server" Text=""></asp:Label>
	<hr />
	F_FIRST_NAME_KANA:
	<asp:Label ID="FIRST_NAME_KANA" runat="server" Text=""></asp:Label>
	<hr />
	F_EMAIL:
	<asp:Label ID="EMAIL" runat="server" Text=""></asp:Label>
	<hr />
	F_PASS:
	<asp:Label ID="PASS" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_USER_ID:
	<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_UPDATE_USER_ID:
	<asp:Label ID="UPDATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_UPDATE_DATE:
	<asp:Label ID="UPDATE_DATE" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


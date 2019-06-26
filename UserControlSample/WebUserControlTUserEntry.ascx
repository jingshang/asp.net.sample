<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTUserEntry.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTUserEntry" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="T_USER_ENTRY" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
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


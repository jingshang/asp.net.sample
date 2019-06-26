<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTLoginHistory.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTLoginHistory" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="T_LOGIN_HISTORY" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_INPUT_MAIL" HeaderText="F_INPUT_MAIL" SortExpression="F_INPUT_MAIL" />
		<asp:BoundField DataField="F_LOGIN_RESULT" HeaderText="F_LOGIN_RESULT" SortExpression="F_LOGIN_RESULT" />
		<asp:BoundField DataField="F_IP" HeaderText="F_IP" SortExpression="F_IP" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_LOGIN_HISTORY" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_LOGIN_HISTORY]"></asp:SqlDataSource>


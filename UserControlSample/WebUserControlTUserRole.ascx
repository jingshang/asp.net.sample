<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTUserRole.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTUserRole" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_USER_ID,F_ROLE_ID" DataSourceID="T_USER_ROLE" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_USER_ID" HeaderText="F_USER_ID" ReadOnly="True" SortExpression="F_USER_ID" />
		<asp:BoundField DataField="F_ROLE_ID" HeaderText="F_ROLE_ID" ReadOnly="True" SortExpression="F_ROLE_ID" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_USER_ROLE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_USER_ROLE]"></asp:SqlDataSource>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlSSystemSetting.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlSSystemSetting" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="S_SYSTEM_SETTING" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="SETTING1" HeaderText="SETTING1" SortExpression="SETTING1" />
		<asp:BoundField DataField="SETTING2" HeaderText="SETTING2" SortExpression="SETTING2" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="S_SYSTEM_SETTING" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [S_SYSTEM_SETTING]"></asp:SqlDataSource>


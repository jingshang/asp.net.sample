<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlSDatabaseVersion.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlSDatabaseVersion" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="S_DATABASE_VERSION" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_VERSION" HeaderText="F_VERSION" SortExpression="F_VERSION" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="S_DATABASE_VERSION" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [S_DATABASE_VERSION]"></asp:SqlDataSource>


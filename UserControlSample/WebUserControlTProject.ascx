<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTProject.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTProject" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="T_PROJECT" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_PROJECT_NUMBER" HeaderText="F_PROJECT_NUMBER" SortExpression="F_PROJECT_NUMBER" />
		<asp:BoundField DataField="F_BORAD_TYPE" HeaderText="F_BORAD_TYPE" SortExpression="F_BORAD_TYPE" />
		<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_PROJECT" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_PROJECT]"></asp:SqlDataSource>


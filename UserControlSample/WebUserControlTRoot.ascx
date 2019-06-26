<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTRoot.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTRoot" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="T_ROOT" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_PROJECT_ID" HeaderText="F_PROJECT_ID" SortExpression="F_PROJECT_ID" />
		<asp:BoundField DataField="F_APPLY_TYPE" HeaderText="F_APPLY_TYPE" SortExpression="F_APPLY_TYPE" />
		<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_ROOT" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_ROOT]"></asp:SqlDataSource>


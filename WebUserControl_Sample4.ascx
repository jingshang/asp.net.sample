<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl_Sample4.ascx.cs" Inherits="kurihara_WebUserControl_Sample4" %>
<p>
	Webユーザーコントロール内で選択したUserIdを外に渡す。
	外ではUserIdを受け取りSelect検索して詳細情報を表示する
</p>
<div>


	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
		<Columns>
			<asp:ButtonField ButtonType="Button" Text="選択" CommandName="Select" />
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_LAST_NAME" HeaderText="F_LAST_NAME" SortExpression="F_LAST_NAME" />
			<asp:BoundField DataField="F_FIRST_NAME" HeaderText="F_FIRST_NAME" SortExpression="F_FIRST_NAME" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT [F_ID], [F_LAST_NAME], [F_FIRST_NAME] FROM [T_USER]"></asp:SqlDataSource>
</div>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTApplyEntry.ascx.cs" Inherits="kurihara_WebUserControlTApplyEntry" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="T_APPLY_ENTRY" OnRowCommand="GridView1_RowCommand" DataKeyNames="F_ID,F_VERSION" >
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" SortExpression="F_ID" ReadOnly="True" />
		<asp:BoundField DataField="F_VERSION" HeaderText="F_VERSION" ReadOnly="True" SortExpression="F_VERSION" />
		<asp:BoundField DataField="F_TITLE" HeaderText="F_TITLE" SortExpression="F_TITLE" />
		<asp:BoundField DataField="F_BEGIN_DATE" HeaderText="F_BEGIN_DATE" SortExpression="F_BEGIN_DATE" />
		<asp:BoundField DataField="F_END_DATE" HeaderText="F_END_DATE" SortExpression="F_END_DATE" />
		<asp:BoundField DataField="F_COMMENT" HeaderText="F_COMMENT" SortExpression="F_COMMENT" />
		<asp:CheckBoxField DataField="F_IS_INVASION" HeaderText="F_IS_INVASION" SortExpression="F_IS_INVASION" />
		<asp:BoundField DataField="F_INVASION_TYPE" HeaderText="F_INVASION_TYPE" SortExpression="F_INVASION_TYPE" />
		<asp:BoundField DataField="F_INVASION_SEVERE_TEXT" HeaderText="F_INVASION_SEVERE_TEXT" SortExpression="F_INVASION_SEVERE_TEXT" />
		<asp:CheckBoxField DataField="F_IS_MONEY_TRANSFER" HeaderText="F_IS_MONEY_TRANSFER" SortExpression="F_IS_MONEY_TRANSFER" />
		<asp:BoundField DataField="F_MONEY_TRANSFER_TYPE" HeaderText="F_MONEY_TRANSFER_TYPE" SortExpression="F_MONEY_TRANSFER_TYPE" />
		<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
		<asp:BoundField DataField="F_UPDATE_USER_ID" HeaderText="F_UPDATE_USER_ID" SortExpression="F_UPDATE_USER_ID" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
		<asp:BoundField DataField="F_UPDATE_DATE" HeaderText="F_UPDATE_DATE" SortExpression="F_UPDATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_APPLY_ENTRY" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_APPLY_ENTRY]"></asp:SqlDataSource>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTApplyModify.aspx.cs" Inherits="kurihara_GridviewCustom_GridTApplyModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_VERSION,F_MODIFY_TYPE,F_TITLE,F_BEGIN_DATE,F_END_DATE,F_COMMENT,F_IS_INVASION,F_INVASION_TYPE,F_INVASION_SEVERE_TEXT,F_IS_MONEY_TRANSFER,F_MONEY_TRANSFER_TYPE,F_CREATE_USER_ID,F_UPDATE_USER_ID,F_CREATE_DATE,F_UPDATE_DATE" DataSourceID="T_APPLY_MODIFY">
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
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_VERSION" HeaderText="F_VERSION" ReadOnly="True" SortExpression="F_VERSION" />
			<asp:BoundField DataField="F_MODIFY_TYPE" HeaderText="F_MODIFY_TYPE" SortExpression="F_MODIFY_TYPE" />
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
	<asp:SqlDataSource ID="T_APPLY_MODIFY" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_APPLY_MODIFY]"></asp:SqlDataSource>
	<br />
	F_ID:
	<asp:Label ID="ID" runat="server" Text=""></asp:Label>
	<hr />
	F_VERSION:
	<asp:Label ID="VERSION" runat="server" Text=""></asp:Label>
	<hr />
	F_MODIFY_TYPE:
	<asp:Label ID="MODIFY_TYPE" runat="server" Text=""></asp:Label>
	<hr />
	F_TITLE:
	<asp:Label ID="TITLE" runat="server" Text=""></asp:Label>
	<hr />
	F_BEGIN_DATE:
	<asp:Label ID="BEGIN_DATE" runat="server" Text=""></asp:Label>
	<hr />
	F_END_DATE:
	<asp:Label ID="END_DATE" runat="server" Text=""></asp:Label>
	<hr />
	F_COMMENT:
	<asp:Label ID="COMMENT" runat="server" Text=""></asp:Label>
	<hr />
	F_IS_INVASION:
	<asp:Label ID="IS_INVASION" runat="server" Text=""></asp:Label>
	<hr />
	F_INVASION_TYPE:
	<asp:Label ID="INVASION_TYPE" runat="server" Text=""></asp:Label>
	<hr />
	F_ONVASION_SEVERE_TEXT:
	<asp:Label ID="INVASION_SEVERE_TEXT" runat="server" Text=""></asp:Label>
	<hr />
	F_IS_MONEY_TRANSFER:
	<asp:Label ID="IS_MONEY_TRANSFER" runat="server" Text=""></asp:Label>
	<hr />
	F_MONEY_TRANSFER_TYPE:
	<asp:Label ID="MONEY_TRANSFER_TYPE" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_USER_ID:
	<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_UPDATE_USER_ID:
	<asp:Label ID="UPDATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label>
	<hr />
	F_UPDATE_DATE:
	<asp:Label ID="UPDATE_DATE" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


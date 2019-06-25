<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTRoot.aspx.cs" Inherits="kurihara_GridviewCustom_GridTRoot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_PROJECT_ID,F_APPLY_TYPE,F_CREATE_USER_ID,F_CREATE_DATE" DataSourceID="T_ROOT">
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
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_PROJECT_ID" HeaderText="F_PROJECT_ID" SortExpression="F_PROJECT_ID" />
			<asp:BoundField DataField="F_APPLY_TYPE" HeaderText="F_APPLY_TYPE" SortExpression="F_APPLY_TYPE" />
			<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
			<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="T_ROOT" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_ROOT]"></asp:SqlDataSource>
	<br />
	<hr />
	F_ID:
	<asp:Label ID="ID" runat="server" Text=""></asp:Label>
	<hr />
	F_PROJECT_ID:
	<asp:Label ID="PROJECT_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_APPLY_TYPE:
	<asp:Label ID="APPLY_TYPE" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_USER_ID:
	<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


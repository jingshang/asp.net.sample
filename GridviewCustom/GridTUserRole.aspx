<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTUserRole.aspx.cs" Inherits="kurihara_GridviewCustom_GridTUserRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_USER_ID,F_ROLE_ID" DataSourceID="T_USER_ROLE">
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
			<asp:BoundField DataField="F_USER_ID" HeaderText="F_USER_ID" ReadOnly="True" SortExpression="F_USER_ID" />
			<asp:BoundField DataField="F_ROLE_ID" HeaderText="F_ROLE_ID" ReadOnly="True" SortExpression="F_ROLE_ID" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="T_USER_ROLE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_USER_ROLE]"></asp:SqlDataSource>
	<br />
	<hr />
	F_USER_ID:
	<asp:Label ID="USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_ROLE_ID:
	<asp:Label ID="ROLE_ID" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


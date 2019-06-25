<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridSDatabaseVersion.aspx.cs" Inherits="kurihara_GridviewCustom_GridSDatabaseVersion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_VERSION,F_CREATE_DATE" DataSourceID="S_DATABASE_VERSION">
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
			<asp:BoundField DataField="F_VERSION" HeaderText="F_VERSION" SortExpression="F_VERSION" />
			<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="S_DATABASE_VERSION" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [S_DATABASE_VERSION]"></asp:SqlDataSource>
	<hr />
	F_ID:
	<asp:Label ID="ID_Label" runat="server" Text=""></asp:Label>
	<hr />
	F_VERSION:
	<asp:Label ID="VERSION_Label" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE_Label" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


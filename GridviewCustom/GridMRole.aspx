<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridMRole.aspx.cs" Inherits="kurihara_GridviewCustom_GridMRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_ROLE_NAME" DataSourceID="M_ROLE">
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
			<asp:BoundField DataField="F_ROLE_NAME" HeaderText="F_ROLE_NAME" SortExpression="F_ROLE_NAME" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="M_ROLE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_ROLE]"></asp:SqlDataSource>
	<hr />
	F_ID:
	<asp:Label ID="ID_Label" runat="server" Text=""></asp:Label>
	<br />
	F_ROLE_NAME:
	<asp:Label ID="ROLE_NAME_Label" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


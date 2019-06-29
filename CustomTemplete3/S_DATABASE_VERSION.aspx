<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="S_DATABASE_VERSION.aspx.cs" Inherits="kurihara_CustomTemplete3_S_DATABASE_VERSION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="S_DATABASE_VERSION" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="SELECT" OnClick="SELECT_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" runat="server" Text='<%#Bind("F_ID") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_VERSION
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_VERSION" runat="server" Text='<%#Bind("F_VERSION") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_DATE" runat="server" Text='<%#Bind("F_CREATE_DATE") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
	<div>
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:TextBox ID="VERSION" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>更新</th>
				<td>
					<asp:Button ID="UPDATE" runat="server" Text="更新" OnClick="UPDATE_Click" /></td>
			</tr>
		</table>
	</div>
</asp:Content>


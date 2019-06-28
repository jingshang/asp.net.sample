<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTUserRole.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTUserRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_USER_ROLE" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="選択" OnClick="SELECT_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						USER_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="USER_NAME" runat="server" Text='<%#Bind("USER_NAME") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						ROLE_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="ROLE_NAME" runat="server" Text='<%#Bind("ROLE_NAME") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
	<div>
		<table>
			<tr>
				<th>USER_NAME</th>
				<td>
					<asp:Label ID="USER_NAME" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>ROLE_NAME</th>
				<td>
					<asp:Label ID="ROLE_NAME" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


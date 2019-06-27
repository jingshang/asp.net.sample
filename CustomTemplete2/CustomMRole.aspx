<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomMRole.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomMRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="M_ROLE" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="選択" OnClick="SELECT_Click" />
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
						F_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ROLE_NAME" runat="server" Text='<%#Bind("F_ROLE_NAME") %>'></asp:Label>
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
					<asp:Label ID="ID" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>F_ROLE_NAME</th>
				<td>
					<asp:Label ID="ROLE_NAME" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


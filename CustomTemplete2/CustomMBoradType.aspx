<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomMBoradType.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomMBoradType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView runat="server" ID="M_BORAD_TYPE" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="M_BORAD_TYPE" Text="選択" runat="server" OnClick="M_BORAD_TYPE_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" Text='<%# Bind("BIND_F_ID")%>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_NAME" Text='<%# Bind("BIND_F_NAME")%>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_L" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME_L" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


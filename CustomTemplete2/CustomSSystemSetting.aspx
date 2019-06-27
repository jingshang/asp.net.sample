<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomSSystemSetting.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomSSystemSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="S_SYSTEM_SETTING" runat="server" AutoGenerateColumns="false">
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
						SETTING1
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="SETTING1" runat="server" Text='<%#Bind("SETTING1") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						SETTING2
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="SETTING2" runat="server" Text='<%#Bind("SETTING2") %>'></asp:Label>
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
				<th>SETTING1</th>
				<td>
					<asp:Label ID="SETTING1" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>SETTING2</th>
				<td>
					<asp:Label ID="SETTING2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


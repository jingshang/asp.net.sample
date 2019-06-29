<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlS_SYSTEM_SETTING.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlS_SYSTEM_SETTING" %>
<div>
	<asp:GridView ID="S_SYSTEM_SETTING" runat="server" AutoGenerateColumns="false" OnRowCommand="S_SYSTEM_SETTING_RowCommand">
		<Columns>
			<asp:TemplateField>
				<ItemTemplate>
					<asp:Button ID="SELECT" runat="server" Text="PUSH" CommandName="SELECT" />
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
					SETTIMG1
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

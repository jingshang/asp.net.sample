<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlS_DATABASE_VERSION.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlS_DATABASE_VERSION" %>
<div>
	<asp:GridView ID="S_DATABASE_VERSION" runat="server" AutoGenerateColumns="false" OnRowCommand="S_DATABASE_VERSION_RowCommand">
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

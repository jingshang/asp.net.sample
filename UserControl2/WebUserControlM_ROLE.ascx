<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlM_ROLE.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlM_ROLE" %>
<div>
	<asp:GridView ID="M_ROLE" runat="server" AutoGenerateColumns="false" OnRowCommand="M_ROLE_RowCommand">
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
					F_ROLE_NAME
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_NAME" runat="server" Text='<%#Bind("F_ROLE_NAME") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</div>
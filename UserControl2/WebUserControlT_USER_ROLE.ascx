<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_USER_ROLE.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_USER_ROLE" %>
<div>
	<asp:GridView ID="T_USER_ROLE" runat="server" AutoGenerateColumns="false" OnRowCommand="T_USER_ROLE_RowCommand">
		<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="選択" CommandName="SELECT" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_USER_ID" runat="server" Text='<%#Bind("F_USER_ID") %>'></asp:Label>
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
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_USER.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_USER" %>
<div>
	<asp:GridView runat="server" ID="T_USER" AutoGenerateColumns="false" OnRowCommand="T_USER_RowCommand">
		<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" Text="選択" runat="server" CommandName="SELECT" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" Text='<%#Bind("F_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_LAST_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_LAST_NAME" Text='<%#Bind("F_LAST_NAME") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_FIRST_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_FIRST_NAME" Text='<%#Bind("F_FIRST_NAME") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_LAST_NAME_KANA
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_LAST_NAME_KANA" Text='<%#Bind("F_LAST_NAME_KANA") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_FIRST_NAME_KANA
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_FIRST_NAME_KANA" runat="server" Text='<%#Bind("F_FIRST_NAME_KANA") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_EMAIL
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_EMAIL" runat="server" Text='<%#Bind("F_EMAIL") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_PASS
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_PASS" runat="server" Text='<%#Bind("F_PASS") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_USER_ID" runat="server" Text='<%#Bind("F_CREATE_USER_ID") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_UPDATE_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_UPDATE_USER_ID" runat="server" Text='<%#Bind("F_UPDATE_USER_ID") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_UPDATE_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_UPDATE_DATE" runat="server" Text='<%#Bind("F_UPDATE_DATE") %>'></asp:Label>
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
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_ROOT.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_ROOT" %>
<div>
	<asp:GridView ID="T_ROOT" runat="server" AutoGenerateColumns="false" OnRowCommand="T_ROOT_RowCommand">
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
					F_PROJECT_ID
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="PROJECT_NUMBER" runat="server" Text='<%#Bind("PROJECT_NUMBER") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_APPLY_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="APPLY_TYPE" runat="server" Text='<%#Bind("APPLY_TYPE") %>'></asp:Label>
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
					F_CREATE_DATE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_CREATE_DATE" runat="server" Text='<%#Bind("F_CREATE_DATE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</div>
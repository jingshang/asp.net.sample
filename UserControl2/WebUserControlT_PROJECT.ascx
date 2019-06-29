<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_PROJECT.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_PROJECT" %>
<div>
	<asp:GridView ID="T_PROJECT" runat="server" AutoGenerateColumns="false" OnRowCommand="T_PROJECT_RowCommand">
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
					F_PROJECT_NUMBER
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_PROJECT_NUMBER" runat="server" Text='<%#Bind("F_PROJECT_NUMBER") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_BORAD_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="BORAD_TYPE" runat="server" Text='<%#Bind("BORAD_TYPE") %>'></asp:Label>
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
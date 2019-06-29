<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_APPLY_MODIFY.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_APPLY_MODIFY" %>
<div>
	<asp:GridView ID="T_APPLY_MODIFY" runat="server" AutoGenerateColumns="false" OnRowCommand="T_APPLY_MODIFY_RowCommand">
		<Columns>
			<asp:TemplateField>
				<ItemTemplate>
					<asp:Button ID="SELECT" runat="server" Text="push" CommandName="SELECT" />
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
					F_MODIFY_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="MODIFY_TYPE" runat="server" Text='<%#Bind("MODIFY_TYPE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_TITLE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_TITLE" runat="server" Text='<%#Bind("F_TITLE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_BEGIN_DATE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_BEGIN_DATE" runat="server" Text='<%#Bind("F_BEGIN_DATE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_END_DATE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_END_DATE" runat="server" Text='<%#Bind("F_END_DATE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_COMMNET
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_COMMENT" runat="server" Text='<%#Bind("F_COMMENT") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_IS_INVASION
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_IS_INVASION" runat="server" Text='<%#Bind("F_IS_INVASION") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_INVASION_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="INVASION_NAME" runat="server" Text='<%#Bind("INVASION_NAME") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_INVASION_SEVERE_TEXT
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_INVASION_SEVERE_TEXT" runat="server" Text='<%#Bind("F_INVASION_SEVERE_TEXT") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_IS_MONEY_TRANSFER
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_IS_MONEY_TRANSFRE" runat="server" Text='<%#Bind("F_IS_MONEY_TRANSFER") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_MONEY_TRANSFER_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="MONEY_TRANSFER_TYPE" runat="server" Text='<%#Bind("MONEY_TRANSFER_TYPE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_CREATE_USRE_ID
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
					F_CREATE_DATE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_CREATE_DATE" runat="server" Text='<%#Bind("F_CREATE_DATE") %>'></asp:Label>
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
		</Columns>


	</asp:GridView>
</div>

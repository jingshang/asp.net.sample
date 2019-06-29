<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlM_INVASION_TYPE.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlM_INVASION_TYPE" %>
<div>
	<asp:GridView ID="M_INVASION_TYPE" runat="server" AutoGenerateColumns="false" OnRowCommand="M_INVASION_TYPE_RowCommand">
		<Columns>
			<asp:TemplateField>
				<ItemTemplate>
					<asp:Button ID="SELECT" runat="server" Text="選択" CommandName="SELECT" />　
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
					F_NAME
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_NAME" runat="server" Text='<%#Bind("F_NAME") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</div>

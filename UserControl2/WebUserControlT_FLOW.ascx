<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_FLOW.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_FLOW" %>
<div>
	<asp:GridView ID="T_FLOW" runat="server" AutoGenerateColumns="false" OnRowCommand="T_FLOW_RowCommand">
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
					F_NUMBER
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_NUMBER" runat="server" Text='<%#Bind("F_NUMBER") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_FOLW_TYPE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="FLOW_TYPE" runat="server" Text='<%#Bind("FLOW_TYPE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_CREATE_USER_ID
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_CREATE_USER_ID" runat="server" Text='<%#Bind("CREATE_USER_ID") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<HeaderTemplate>
					F_CREATE_DATE
				</HeaderTemplate>
				<ItemTemplate>
					<asp:Label ID="F_CREATE_DATE" runat="server" Text='<%#Bind("CREATE_DATE") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</div>
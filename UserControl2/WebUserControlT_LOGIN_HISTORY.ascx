<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlT_LOGIN_HISTORY.ascx.cs" Inherits="kurihara_UserControl2_WebUserControlT_LOGIN_HISTORY" %>
<div>
	<asp:GridView ID="T_LOGIN_HISTORY" runat="server" AutoGenerateColumns="false" OnRowCommand="T_LOGIN_HISTORY_RowCommand">
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
						F_INPUT_MAIL
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_INPUT_MAIL" runat="server" Text='<%#Bind("F_INPUT_MAIL") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_LOGIN_RESULT
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_LOGIN_RESULT" runat="server" Text='<%#Bind("F_LOGIN_RESULT") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_IP
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_IP" runat="server" Text='<%#Bind("F_IP") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_DATE" Text='<%#("F_CREATE_DATE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
	</asp:GridView>
</div>
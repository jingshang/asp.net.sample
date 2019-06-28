<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTLoginHistory.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTLoginHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_LOGIN_HISTORY" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" Text="選択" runat="server" OnClick="SELECT_Click" />
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
	<div>
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_INPUT_MAIL</th>
				<td>
					<asp:Label ID="INPUT_MAIL" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_LOGIN_RESULT</th>
				<td>
					<asp:Label ID="LOGIN_RESULT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IP</th>
				<td>
					<asp:Label ID="IP" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE
				</th>
				<td>
					<asp:Label ID="CREATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


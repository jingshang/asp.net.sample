<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTUser.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_USER" runat="server" AutoGenerateColumns="false">
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
	<div>
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME</th>
				<td>
					<asp:Label ID="LAST_NAME" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME</th>
				<td>
					<asp:Label ID="FIRST_NAME" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME_KANA</th>
				<td>
					<asp:Label ID="LAST_NAME_KANA" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME_KANA</th>
				<td>
					<asp:Label ID="FIRST_NAME_KANA" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_EMAIL</th>
				<td>
					<asp:Label ID="EMAIL" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_PASS
				</th>
				<td>
					<asp:Label ID="PASS" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE</th>
				<td>
					<asp:Label ID="UPDATE_DATE" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


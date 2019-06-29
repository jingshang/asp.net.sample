<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="T_APPLY_ENTRY.aspx.cs" Inherits="kurihara_CustomTemplete3_T_APPLY_ENTRY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_APPLY_ENTRY" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="PUSH" OnClick="SELECT_Click" />
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
						<asp:Label ID="VERSION" runat="server" Text='<%#Bind("F_VERSION") %>'></asp:Label>
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
						F_COMMENT
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
						<asp:Label ID="F_IS_MONEY_TRANSFER" runat="server" Text='<%#Bind("F_IS_MONEY_TRANSFER") %>'></asp:Label>
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
	<div>
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:TextBox ID="VERSION" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_TITLE</th>
				<td>
					<asp:TextBox ID="TITLE" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE</th>
				<td>
					<asp:TextBox ID="BEGIN_DATE" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_END_DATE</th>
				<td>
					<asp:TextBox ID="END_DATE" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_COMMENT</th>
				<td>
					<asp:TextBox ID="COMMENT" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_IS_INVASION</th>
				<td>
					<asp:RadioButtonList ID="IS_INVASION" runat="server">
						<asp:ListItem Text="有" Value="1"></asp:ListItem>
						<asp:ListItem Text="無" Value="2"></asp:ListItem>
					</asp:RadioButtonList>
				</td>
			</tr>
			<tr>
				<th>F_INVASION_TYPE</th>
				<td>
					<asp:RadioButtonList ID="INVASION_TYPE" runat="server">
						<asp:ListItem Text="軽微な侵襲" Value="1"></asp:ListItem>
						<asp:ListItem Text="重度な侵襲" Value="2"></asp:ListItem>
					</asp:RadioButtonList></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER</th>
				<td>
					<asp:RadioButtonList ID="IS_MONEY_TRANSFER" runat="server">
						<asp:ListItem Text="有" Value="1"></asp:ListItem>
						<asp:ListItem Text="無" Value="2"></asp:ListItem>
					</asp:RadioButtonList></td>
			</tr>
			<tr>
				<th>F_MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:RadioButtonList ID="MONEY_TRANSFER_TYPE" runat="server">
						<asp:ListItem Text="個人からの金銭授受" Value="1"></asp:ListItem>
						<asp:ListItem Text="法人からの金銭授受" Value="2"></asp:ListItem>
					</asp:RadioButtonList></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:TextBox ID="UPDATE_USER_ID" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE</th>
				<td>
					<asp:TextBox ID="UPDATE_DATE" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>更新</th>
				<td>
					<asp:Button ID="UPDATE" runat="server" Text="更新" OnClick="UPDATE_Click" /></td>
			</tr>
		</table>
	</div>
</asp:Content>


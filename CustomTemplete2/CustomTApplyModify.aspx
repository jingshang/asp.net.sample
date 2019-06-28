<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTApplyModify.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTApplyModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_APPLY_ENTRY" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="T_APPLY_MODIFY" Text="選択" runat="server" OnClick="T_APPLY_MODIFY_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						APPLY_ENTRY_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" Text='<%#Bind("F_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_VERSION
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_VERSION" Text='<%#Bind("F_VERSION") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						MODIFY_TYPE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="MODIFY_TYPE" Text='<%#Bind("MODIFY_TYPE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_TITLE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_BEGIN_DATE" Text='<%#Bind("F_BEGIN_DATE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_END_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_END_DATE" Text='<%#Bind("F_END_DATE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_COMMENT
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_COMMENT" Text='<%#Bind("F_COMMENT") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_IS_INVASION 
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_IS_INVASION" Text='<%#Bind("F_IS_INVASION") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						INVASION_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="INVASION_NAME" Text='<%#Bind("INVASION_NAME") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_INVASION_SEVERE_TEXT
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_INVASION_SEVERE_TEXT" Text='<%#Bind("F_INVASION_SEVERE_TEXT") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_IS_MONEY_TANSFER
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_IS_MONEY_TRANSFER" Text='<%#Bind("F_IS_MONEY_TRANSFER") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						MONEY_TRANSFER_TYPE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="MONEY_TRANSFER_TYPE" Text='<%#Bind("MONEY_TRANSFER_TYPE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_USER_ID" Text='<%#Bind("F_CREATE_USER_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_UPDATE_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_UPDATE_USER_ID" Text='<%#Bind("F_UPDATE_USER_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_DATE" Text='<%#Bind("F_CREATE_DATE") %>' runat="server"></asp:Label>
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
				<th>APPLY_ENTRY_ID</th>
				<td>
					<asp:Label ID="ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:Label ID="VERSION" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>MODIFY_TYPE
				</th>
				<td>
					<asp:Label ID="MODIFY_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_TITLE</th>
				<td>
					<asp:Label ID="TITLE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE</th>
				<td>
					<asp:Label ID="BEGIN_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_END_DATE</th>
				<td>
					<asp:Label ID="END_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_COMMNET</th>
				<td>
					<asp:Label ID="COMMENT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_INVASION</th>
				<td>
					<asp:Label ID="IS_INVASION" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>INVASION_TYPE</th>
				<td>
					<asp:Label ID="INVASION_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER</th>
				<td>
					<asp:Label ID="IS_MONEY_TRANSFER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:Label ID="MONEY_TRANSFER_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE
				</th>
				<td>
					<asp:Label ID="_UPDATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


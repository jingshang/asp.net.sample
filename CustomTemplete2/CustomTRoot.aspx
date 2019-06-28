<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTRoot.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTRoot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<asp:GridView ID="T_ROOT" runat="server" AutoGenerateColumns="false">
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
						PROJECT_NUMBER
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="PROJECT_NUMBER" Text='<%#Bind("PROJECT_NUMBER") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						APPLY_TYPE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="APPLY_TYPE" Text='<%#Bind("APPLY_TYPE") %>' runat="server"></asp:Label>
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
						F_CREATE_DATE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_DATE" Text='<%#Bind("F_CREATE_DATE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
	<div>
		<table>
			<tr>
				<th>F_ID
				</th>
				<td>
					<asp:Label ID="ID" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>PROJECT_NUMBER</th>
				<td>
					<asp:Label ID="PROJECT_NUMBER" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>APPLY_TYPE
				</th>
				<td>
					<asp:Label ID="APPLY_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DTE</th>
				<td>
					<asp:Label ID="CREATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>

		</table>
	</div>
</asp:Content>


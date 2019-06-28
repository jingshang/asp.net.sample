<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTProject.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<div>
		<asp:GridView ID="T_PROJECT" runat="server" AutoGenerateColumns="false">
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
						<asp:Label ID="F_ID" runat="server" Text='<%#Bind("F_ID") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_PROJECT_NUMBER
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_PROJECT_NUMBER" Text='<%#Bind("F_PROJECT_NUMBER") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						BORAD_TYPE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="BORAD_TYPE" Text='<%#Bind("BORAD_TYPE") %>' runat="server" ></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_CREATE_USER_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_CREATE_USER_ID" Text='<%#("F_CREATE_USER_ID") %>' runat="server"></asp:Label>
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
				<th>
					F_ID
				</th>
				<td><asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_PROJECT_NUMBER</th>
				<td><asp:Label ID="PROJECT_NUMBER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>BORAD_TYPE</th>
				<td><asp:Label ID="BORAD_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td><asp:Label ID="CREATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td><asp:Label ID="CREATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


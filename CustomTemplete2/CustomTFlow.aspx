<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomTFlow.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomTFlow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<div>
		<asp:GridView ID="T_FLOW" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" Text="選択" runat="server" OnClick="SELECT_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" Text='<%#Bind("F_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_NUMBER
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_NUMBER" Text='<%#Bind("F_NUMBER") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						FLOW_TYPE
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="FLOW_TYPE" Text='<%#Bind("FLOW_TYPE") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						作成社ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="CREATE_USER_ID" Text='<%#Bind("CREATE_USER_ID") %>' runat="server"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						作成日
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="CREATE_DATE" Text='<%#Bind("CREATE_DATE") %>' runat="server"></asp:Label>
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
					<asp:Label ID="ID" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>
					F_NUMBER
				</th>
				<td><asp:Label ID="NUMBER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>FLOW_TYPE</th>
				<td><asp:Label ID="FLOW_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>
					作成社ID
				</th>
				<td><asp:Label ID="CREATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>作成日</th>
				<td><asp:Label ID="CREATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


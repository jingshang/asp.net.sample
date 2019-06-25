<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridMMoneyTransferType.aspx.cs" Inherits="kurihara_GridviewCustom_GridMMoneyTransferType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_NAME" DataSourceID="M_MONEY_TARNSFER_TYPE">
		<Columns>
			<asp:TemplateField>
				<HeaderTemplate>
					ボタン
				</HeaderTemplate>
				<ItemTemplate>
					<div>
						<asp:Button ID="SELECT" runat="server" Text="詳細" OnClick="SELECT_Click" />
					</div>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="M_MONEY_TARNSFER_TYPE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_MONEY_TRANSFER_TYPE]"></asp:SqlDataSource>
	<hr />
	F_ID:
	<asp:Label ID="ID_Label" runat="server" Text=""></asp:Label>
	<br />
	F_NAME:
	<asp:Label ID="NAME_Label" runat="server" Text=""></asp:Label>

	<p>
	</p>
</asp:Content>


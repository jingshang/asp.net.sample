<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridSSystemSetting.aspx.cs" Inherits="kurihara_GridviewCustom_GridSSystemSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,SETTING1,SETTING2" DataSourceID="S_SYSTEM_SETTING">
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
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="SETTING1" HeaderText="SETTING1" SortExpression="SETTING1" />
			<asp:BoundField DataField="SETTING2" HeaderText="SETTING2" SortExpression="SETTING2" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="S_SYSTEM_SETTING" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [S_SYSTEM_SETTING]"></asp:SqlDataSource>
	<br />
	F_ID:
	<asp:Label ID="ID_Label" runat="server" Text=""></asp:Label>
	<hr />
	SETTING1:
	<asp:Label ID="SETTING1_Label" runat="server" Text=""></asp:Label>
	<hr />
	SETTING2:
	<asp:Label ID="SETTING_LABEL" runat="server" Text=""></asp:Label>
</asp:Content>


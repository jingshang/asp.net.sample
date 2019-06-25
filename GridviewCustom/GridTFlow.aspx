<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridTFlow.aspx.cs" Inherits="kurihara_GridviewCustom_GridTFlow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_NUMBER,F_FLOW_TYPE,F_CREATE_USER_ID,F_CREATE_DATE" DataSourceID="T_FLOW">
		<Columns>
			<asp:TemplateField>
				<HeaderTemplate>
					ボタン
				</HeaderTemplate>
				<ItemTemplate>
					<div>
						<asp:Button ID="SELEST" runat="server" Text="詳細" OnClick="SELEST_Click" />
					</div>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
			<asp:BoundField DataField="F_NUMBER" HeaderText="F_NUMBER" ReadOnly="True" SortExpression="F_NUMBER" />
			<asp:BoundField DataField="F_FLOW_TYPE" HeaderText="F_FLOW_TYPE" SortExpression="F_FLOW_TYPE" />
			<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
			<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="T_FLOW" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_FLOW]"></asp:SqlDataSource>
	<br />
	<hr />
	F_ID:
	<asp:Label ID="ID" runat="server" Text=""></asp:Label>
	<hr />
	F_NUMBER:
	<asp:Label ID="NUMBER" runat="server" Text=""></asp:Label>
	<hr />
	F_FLOW_TYPE:
	<asp:Label ID="FLOW_TYPE" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_USER_ID:
	<asp:Label ID="CREATE_USER_ID" runat="server" Text=""></asp:Label>
	<hr />
	F_CREATE_DATE:
	<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label>
	<p>
	</p>
</asp:Content>


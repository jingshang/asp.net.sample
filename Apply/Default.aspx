<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="YourName_Apply_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<div>




		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
			<Columns>
				<asp:ButtonField ButtonType="Button" CommandName="Detail" Text="詳細へ" />
				<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
				<asp:BoundField DataField="F_PROJECT_NUMBER" HeaderText="F_PROJECT_NUMBER" SortExpression="F_PROJECT_NUMBER" />
				<asp:BoundField DataField="F_BORAD_TYPE" HeaderText="F_BORAD_TYPE" SortExpression="F_BORAD_TYPE" />
				<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
				<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_PROJECT]"></asp:SqlDataSource>




	</div>
</asp:Content>


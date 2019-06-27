<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="project.aspx.cs" Inherits="kurihara_Apply_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<style>
		.block{
			margin:20px 0 0 0;
		}
		table{
			
			border-collapse:collapse;
		}
		th{text-align:center;}
		th, td {
			border:1px solid;
			padding:3px 5px;
		}
	</style>

	<!-- 隠しフィールド -->
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<asp:HiddenField ID="HiddenProjectId" runat="server" />
		</ContentTemplate>
	</asp:UpdatePanel>

	<h3>プロジェクト情報</h3>
	<table class="block">
		<tr>
			<th>F_ID</th>
			<td>
				<asp:Label ID="Label_F_ID" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>プロジェクト番号</th>
			<td>
				<asp:Label ID="Label_F_PROJECT_NUMBER" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>委員会名</th>
			<td>
				<asp:Label ID="Label_F_BORAD_TYPE" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>作成者氏名</th>
			<td>
				<asp:Label ID="Label_F_CREATE_USER" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>作成日</th>
			<td>
				<asp:Label ID="Label_F_CREATE_DATE" runat="server"></asp:Label>
			</td>
		</tr>

	</table>


	<div class="block">
		<asp:Button ID="Button_NewApply" runat="server" OnClick="Button_NewApply_Click" Text="新規申請" />

		<asp:GridView ID="GridView_RootList" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="SqlDataSource1" OnRowCommand="GridView_RootList_RowCommand">
			<Columns>
				<asp:ButtonField ButtonType="Button" CommandName="Detail" Text="詳細へ" />
				<asp:BoundField DataField="F_NAME" HeaderText="申請タイプ" SortExpression="F_APPLY_TYPE" />
				<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="作成者氏名" SortExpression="F_CREATE_USER_ID" />
				<asp:BoundField DataField="F_CREATE_DATE" HeaderText="作成日" SortExpression="F_CREATE_DATE" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_ROOT] A INNER JOIN M_APPLY_TYPE B ON A.F_APPLY_TYPE = B.F_ID"></asp:SqlDataSource>

	</div>
</asp:Content>


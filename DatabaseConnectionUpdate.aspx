<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DatabaseConnectionUpdate.aspx.cs" Inherits="YourName_DatabaseConnectionUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<style>
		html{letter-spacing:0.5px;}
		.group_div{
			border-bottom:1px solid;
			padding:10px;
		}
		.group_div div{
			padding:10px;
		}
		h3{
			font-weight:bold;
			font:2em;
		}
		img{
			border:1px solid;
			margin:20px;
		}
	</style>

	<asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="戻る"  style="margin:20px 0;"/>
	<h1 id="Label_Title" runat="server" ></h1>

	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<div class="group_div">
				↓↓↓↓ここに隠しフィールド（テーブル名）↓↓↓↓<br />
				<asp:HiddenField ID="Hidden_TableName" runat="server" />
				↑↑↑↑ここに隠しフィールド（テーブル名）↑↑↑↑<br />
				<br />
				<p>クエリストリングの文字列を更新で使うと、直接URLのクエリパラメータを変更されたとき不整合が起きる可能性があるかも。
					<br />
					テーブル名は画面の隠しフィールドへ保持しておく
				</p>
			</div>
			<div class="group_div">
				<h3>データ表示</h3>
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_NAME" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
					<Columns>
						<asp:ButtonField ButtonType="Button" CommandName="Edit" Text="編集" />
						<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
						<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_APPLY_TYPE]"></asp:SqlDataSource>
			</div>
			<div class="group_div">

				<h3>データ編集</h3>
				F_ID:<asp:Label ID="Label_F_ID" runat="server"></asp:Label>
				<br />
				F_NAME:<asp:TextBox ID="TextBox_F_NAME" runat="server"></asp:TextBox>
				<br />
				<asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="更新" />
			</div>
			<div class="group_div">

				<h3>データ追加</h3>
				F_NAME:<asp:TextBox ID="TextBox_Insert_F_NAME" runat="server"></asp:TextBox>
				<br />
				<asp:Button ID="Button_Insert" runat="server" OnClick="Button_Insert_Click" Text="追加" />
			</div>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>


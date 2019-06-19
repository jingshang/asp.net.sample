<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DatabaseConnectionSelect.aspx.cs" Inherits="kentaro_DatabaseConnectionSelect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	
	<style>
		html {
			letter-spacing: 0.5px;
		}

		.group_div {
			border-bottom: 1px solid;
			padding: 10px;
		}

			.group_div div {
				padding: 10px;
			}

		h3 {
			font-weight: bold;
			font: 2em;
		}

		img {
			border: 1px solid;
			margin: 20px;
		}
	</style>

	<asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="戻る" Style="margin: 20px 0;" />
	<h1 id="Label_Title" runat="server"></h1>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<div class="group_div">
				<h3>SQLを発行してみましょう</h3>
				<p>ボタンを押下すると [SELECT * FROM T_USER] を発行します。</p>
				<div>
					件数：<asp:Label ID="Label_Select1" runat="server"></asp:Label>件
					<br />
					<asp:Button ID="Button_Select1" runat="server" OnClick="Button_Select1_Click" Text="実行" />
				</div>
			</div>
			<div class="group_div">
				<h3>データをGridViewに表示する</h3>
				<p>データをGridViewに設定して表示します。<br />
					別のページでGridViewについて学習したと思います。<br />
					そちらと組み合わせれば、<br />
					データ表示⇒ボタンクリック⇒IDをセッションに格納⇒次の画面でIDを検索条件に...<br />
					など割と何でもできるようになります。<br />
				</p>
				
				<asp:GridView ID="GridView_Select2_1" runat="server" AutoGenerateColumns="False" >
					<Columns>
						<asp:BoundField DataField="F_ID" HeaderText="F_ID" />
						<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" />
					</Columns>
				</asp:GridView>
				<asp:GridView ID="GridView_Select2_2" runat="server" AutoGenerateColumns="False" >
					<Columns>
						<asp:BoundField DataField="F_ID" HeaderText="F_ID" />
						<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" />
					</Columns>
				</asp:GridView>
				<asp:GridView ID="GridView_Select2_3" runat="server" AutoGenerateColumns="False" >
					<Columns>
						<asp:BoundField DataField="F_PROJECT_ID" HeaderText="F_PROJECT_ID" />
						<asp:BoundField DataField="F_BORAD_TYPE_NAME" HeaderText="F_BORAD_TYPE_NAME" />
						<asp:BoundField DataField="F_APPLY_TYPE_NAME" HeaderText="F_APPLY_TYPE" />
						<asp:BoundField DataField="F_TITLE" HeaderText="F_TITLE" />
					</Columns>
				</asp:GridView>
				
				<asp:Button ID="Button_Select2" runat="server" OnClick="Button_Select2_Click" Text="実行" />
			</div>
		</ContentTemplate>

	</asp:UpdatePanel>
</asp:Content>


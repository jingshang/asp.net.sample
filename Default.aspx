<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<!-- 「ASP.NET　WebForoms研修」とDefault.aspx.cs の Page_Loadメソッドから設定しています。-->
	<h1 id="Label_Title" runat="server"></h1>

	<hr />
	<div>
		<h3>データの準備</h3>
		新規にDBを作成し以下のSQLを実行してください。<br />
		\Sample\kurihara\SampleProject\SampleProjectDoc\001.asp_er190609_DLL<br />
		<br />
		db名やユーザー名パスワードは Web.configに入力する必要があります。<br />
		「★データベースにログインする情報です。」を参照してください。<br />
	</div>
	<hr />
	<div>
		<h3>一般的なコントロール</h3>
		<asp:Button Text="移動" ID="Button_NomalControl" runat="server" OnClick="Button_NomalControl_Click" />
	</div>
	<hr />
	<div>
		<h3>GridViewについて</h3>
		<asp:Button Text="移動" ID="Button_GridView" runat="server" OnClick="Button_GridView_Click" />
	</div>
	<hr />
	<div>
		<h3>SESSION・クエリストリングについて</h3>
		SESSIONで次の画面に運びたい文字列を入力：<asp:TextBox ID="TextBox_SessionText" runat="server"></asp:TextBox><br />
		クエリストリングで次の画面に運びたい文字列を入力：<asp:TextBox ID="TextBox_QueryStringText" runat="server"></asp:TextBox><br />
		<asp:Button Text="移動" ID="Button_Session" runat="server" OnClick="Button_Session_Click" />
	</div>
	<hr />
	<div>
		<h3>バリデーションについて</h3>
		<asp:Button Text="移動" ID="Button_Validation" runat="server" OnClick="Button_Validation_Click" />
	</div>
	<hr />
	<div>
		<h3>DB接続について</h3>
		<p>画面上部の「データの準備」を参考にしてSQL Serverにデータベースを作成してから行いましょう。</p>
		<asp:UpdatePanel ID="UpdatePanel_DBConnect" runat="server">
			<ContentTemplate>
				<div>
					<asp:Button Text="接続テスト（成功）" ID="Button_DatabaseConnection" runat="server" OnClick="Button_DatabaseConnection_Click" />
					<br />
					<asp:Label ID="Label_ConnectionTestResult" runat="server"></asp:Label>
				</div>
				<div>
					<asp:Button Text="接続テスト（失敗）" ID="Button_DatabaseConnectionError" runat="server" OnClick="Button_DatabaseConnectionError_Click" />
					<br />
					<asp:Label ID="Label_ConnectionTestResultError" runat="server"></asp:Label>
				</div>
			</ContentTemplate>
		</asp:UpdatePanel>
	</div>
	<hr />
	<div>
		<h3>DB接続について（Select）</h3>
		
		<asp:Button Text="移動" ID="Button_DatabaseConnection_Select" runat="server" OnClick="Button_DatabaseConnection_Select_Click" />
	</div>
	<hr />
	<div>
		<h3>DB接続について（更新処理）</h3>
		<asp:Button Text="移動" ID="Button_DatabaseConnection_Update" runat="server" OnClick="Button_DatabaseConnection_Update_Click" />
		<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="NAME">
		</asp:DropDownList>
		<%-- 前方一致　M_ と一致するテーブルが対象になっています --%>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="select NAME from sys.objects where type = 'U' and NAME Like 'M_%';"></asp:SqlDataSource>
	</div>
	<hr />
	<div>
		<h3>Webユーザーコントロール (部品化) について</h3>
		<asp:Button Text="移動" ID="Button_UserControl" runat="server" OnClick="Button_UserControl_Click" />
	</div>
	<hr />
	<div>
		<h3>CSSについて</h3>
		<asp:Button Text="移動" ID="Button_CSS" runat="server" OnClick="Button_CSS_Click" />
	</div>
	<hr />
	<div>
		<h3>サンプルプロジェクトへ（ログイン画面）</h3>
		<asp:Button Text="移動" ID="Button_GotoSampleProject" runat="server" OnClick="Button_GotoSampleProject_Click" />
	</div>
	<div>
		<h3>ユーザーコントロール練習画面へ</h3>
		<asp:Button Text="移動" ID="Button_GotoUserControlPractice" runat="server" OnClick="Button_GotoUserControlPractice_Click" />
	</div>
	<div>
		<h3>ユーザーコントロール練習画面2回目へ</h3>
		<asp:Button Text="移動" ID="Button_GotoUserControlPractice2" runat="server" OnClick="Button_GotoUserControlPractice2_Click1" />
	</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="kentaro_GridView" %>

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
	
	<div class="group_div">
		<h3>Page_LoadでGridViewを表示する</h3>
		
		<p>
			単純なGridViewを表示します。<br />
			GridView の表示内容ををプログラムから用意する方法です。<br />
			
			色々なコントロールがGridViewに用意されています。<br />

			また、GridViewの一覧には任意の値を表示する必要があります。<br />
			DataField利用しましょう。<br />
			以下の例だと「SAMPLE_CHECK」、「SAMPLE_URL」、「SAMPLE_TEXT」がDataFieldにあたります。<br />
			DataFieldはCSファイルから値を設定するためのキーです。<br />
			CSファイルで1行ずつ用意するのですが、その時にDataFieldキーに対して値を設定できます。<br />
		</p>
		<asp:GridView ID="GridView_Sample1" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:CheckBoxField Text="CheckBoxField" DataField="SAMPLE_CHECK"  />
				<asp:ButtonField Text="ButtonField" ButtonType="Button"/>
				<asp:HyperLinkField Text="HyperLinkField" Target="_blank" NavigateUrl="https://yahoo.co.jp"/>
				<asp:ImageField NullImageUrl="~/kentaro/SampleProject/SampleProjectDoc/GridView1.jpg" DataImageUrlField="SAMPLE_URL"></asp:ImageField>
				<asp:BoundField DataField="SAMPLE_TEXT" />
			</Columns>
		</asp:GridView>

	</div>

	<div class="group_div">
		<h3>DBのSelectの結果を表示する（データソースの利用）</h3>
		
		<p>
			GridView は画面からSQLを指定してDBから値を取得、表示まで自動でやってくれる機能があります。<br />
			なかなか便利ですが、複雑なことができません。<br />
			マスタテーブルを表示したいというような単純な表示であれば実装もお手軽です。<br />
			しかし、画面にSQLが文字列として表現されてしまうので、テーブル構造が変化したときに変更が必要になります。<br />
			逆にCSファイルには手を加えなくて済みます。<br />
			
		 </p>
		<asp:GridView ID="GridView_Sample2" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="SqlDataSource1">
			<Columns>
				<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
				<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_BORAD_TYPE] ORDER BY [F_ID]" ValidateRequestMode="Disabled"></asp:SqlDataSource>
	</div>
	
	<div class="group_div">
		<h3>一般的なコントロールをGridViewで使う</h3>
		
		<p>
			例えば１つのセルにチェックボックス、ボタン、テキストが表示される列が欲しいとなると今までの方法では実現できません。<br />
			そこで、GridViewの列の中身をオリジナルで定義します。<br />
			一般的なコントロールを書くわけですが、GridViewのItemではないのでDataFieldの仕組みがありません。<br />
			代わりにもっと原始的な方法で値を表示していきましょう。<br />
			Bindと言います。<br />
			CSファイルで設定すると画面に表示される仕組みです。<br />
			ググってみてください。<br />
		 </p>
		<asp:GridView ID="GridView_Sample3" runat="server" AutoGenerateColumns="False" >
			<Columns>
				<asp:TemplateField>
					<HeaderTemplate>
						ヘッダー１
					</HeaderTemplate>
					<ItemTemplate>
						<div>
							<asp:CheckBox ID="CheckBox_UpdatePanel" runat="server"  Text='<%# Bind("BIND_TEXT_CHECKBOX")%>' Checked='<%# Bind("BIND_IS_CHECK")%>' />
						</div>
						<div>
							<asp:RadioButton GroupName="UpdatePanelRadio" ID="RadioButton_UpdatePanel1" runat="server" Text="ラジオ１" Checked='<%# Bind("BIND_IS_RADIO1")%>'/>
							<asp:RadioButton GroupName="UpdatePanelRadio" ID="RadioButton_UpdatePanel2" runat="server" Text="ラジオ２" Checked='<%# Bind("BIND_IS_RADIO2")%>'/>
						</div>
						<div>
							<asp:Button ID="Button_UpdatePanel" runat="server" Text='<%# Bind("BIND_TEXT_BUTTON")%>' />
						</div>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						ヘッダー２
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="Label_UpdatePanel" runat="server" Text='<%# Bind("BIND_TEXT_LABEL")%>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>

	<div class="group_div">
		<h3>ボタンクリックイベントについて</h3>
		
		ボタンがあるってことはクリックイベントも発生させることができます。<br />
		定義の仕方は2種類あります。<br />
		<ul>
			<li>[ButtonField] の [OnRowCommand] </li>
			<li>[asp:Button] の ]OnClick] </li>
		</ul>
		いずれにせよその行の情報を取得する仕組みがあるので順番にデバッグで見ていきましょう。<br />
		ちなみに、このGridViewではDataFieldを使ってません。<br />
		内部的には値を持っているけど表示しないという事も可能なのです。<br />
		<br />
		OnRowCommandのパターンでは左2列が対象です。<br />
		GridView の ボタン押下イベント「GridView1_RowCommand」をデバッグしてみましょう。<br />
		GridViewのOnRowCommandイベントにメソッド名が定義してあります。
		ボタンの「CommandName」にキーとなる名前を設定してCSファイルで文字を判定して処理を分岐します。<br />
		<br />
		一般的なコントロールであるButtonのOnClickイベント「Button_GridView_Click」をデバッグしてみましょう。<br />
		ButtonのOnClickイベントにメソッド名が定義してあります。<br />

		<asp:UpdatePanel ID="UpdatePanel_GridView_Sample4" runat="server">
			<ContentTemplate>
				<asp:Panel ID="Panel_GridView_Sample4" runat="server">
					行 ：<asp:Label ID="Label_GridView_Sample4_f_rowindex" runat="server"></asp:Label><br />
					押下したボタン ：<asp:Label ID="Label_GridView_Sample4_f_comment" runat="server"></asp:Label><br />
					選択した F_ID ：<asp:Label ID="Label_GridView_Sample4_f_id" runat="server"></asp:Label><br />
					選択した F_NAME ：<asp:Label ID="Label_GridView_Sample4_f_name" runat="server"></asp:Label>
				</asp:Panel>
				<asp:GridView ID="GridView_Sample4" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
					<Columns>
						<asp:ButtonField Text="OnRowCommandイベント(CommandA)" ButtonType="Button" CommandName="CommandA"/>
						<asp:ButtonField Text="OnRowCommandイベント(CommandB)" ButtonType="Button" CommandName="CommandB"/>
						<asp:TemplateField>
							<ItemTemplate>
								<asp:Button ID="Button_GridView" runat="server" OnClick="Button_GridView_Click" Text="OnClickでイベント発生" />
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
				</asp:GridView>
			</ContentTemplate>
		</asp:UpdatePanel>
		

	</div>
</asp:Content>


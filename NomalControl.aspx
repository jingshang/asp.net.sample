<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NomalControl.aspx.cs" Inherits="kentaro_NomalControl" %>

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
		<h3>インデント</h3>
		インデントは常に注意を払いましょう。<br />
		これすらできない人は迷惑なのでプログラムしないでください。<br />
		これによりバグを生み出しチームに迷惑をかけ、資産価値と自身の評価を最低ラインまで落とかねません。<br />
		以下例として修正前と修正後を示します。<br /><br />

		
		【修正前】
		<asp:TextBox TextMode="MultiLine" runat="server" ID="MultiLineSample" ReadOnly="true" Rows="9" Width="100%" style="max-width:100%;margin:5px;">if(1==1){
int text_count = 10;
for( var i = 0; i < text_count; i++){
	Log.output(i + "回目のループ");
	}
	var original_class = new OriginalClass();
	original_class.Close();
}
		</asp:TextBox>

		【修正後】
		<asp:TextBox TextMode="MultiLine" runat="server" ID="TextBox1" ReadOnly="true" Rows="9" Width="100%" style="max-width:100%;margin:5px;">if(1==1){
	int text_count = 10;
	for( var i = 0; i < text_count; i++)
	{
		Log.output(i + "回目のループ");
	}
	var original_class = new OriginalClass();
	original_class.Close();
}
		</asp:TextBox>

	</div>
	<div class="group_div">
		<h3>Label</h3>
		プログラムから色々設定してるので見てみてください。<br />
		↓↓↓↓↓↓↓↓↓↓↓↓↓<br />
		<asp:Label ID="Label_Sample" runat="server"></asp:Label><br />
		↑↑↑↑↑↑↑↑↑↑↑↑↑<br />
	</div>
	<div class="group_div">
		<h3>TextBox</h3>
		<asp:TextBox ID="TextBox_Sample" runat="server"></asp:TextBox>
	</div>
	<div class="group_div">
		<h3>RadioButton1</h3>
		GroupNameに設定した名前が同じRadioButtonは単一選択となります。
		<div>
			<asp:RadioButton GroupName="GroupA" ID="RadioButtonA_Sample1" runat="server" Text="A-1" />
			<asp:RadioButton GroupName="GroupA" ID="RadioButtonA_Sample2" runat="server" Text="A-2" />
			<asp:RadioButton GroupName="GroupA" ID="RadioButtonA_Sample3" runat="server" Text="A-3" />
		</div>
		<h3>RadioButton2</h3>
		csファイルから設定します。
		<div>
			<asp:RadioButton GroupName="" ID="RadioButtonB_Sample1" runat="server" Text="" />
			<asp:RadioButton GroupName="" ID="RadioButtonB_Sample2" runat="server" Text="" />
			<asp:RadioButton GroupName="" ID="RadioButtonB_Sample3" runat="server" Text="" />
		</div>
		<h3>RadioButton3</h3>
		選択変更したときにイベントを発生させることができます。<br />
		NomalControl.aspx.csのメソッド「RadioButtonC_Sample_CheckedChanged」にブレークポイントを張って動作を見てみましょう。<br />
		<div>
			<asp:RadioButton GroupName="GroupC" ID="RadioButtonC_Sample1" runat="server" Text="C-1Event" 
				OnCheckedChanged="RadioButtonC_Sample_CheckedChanged" AutoPostBack="true"/>
			<asp:RadioButton GroupName="GroupC" ID="RadioButtonC_Sample2" runat="server" Text="C-2Event" 
				OnCheckedChanged="RadioButtonC_Sample_CheckedChanged" AutoPostBack="true"/>
			<asp:RadioButton GroupName="GroupC" ID="RadioButtonC_Sample3" runat="server" Text="C-3Event" 
				OnCheckedChanged="RadioButtonC_Sample_CheckedChanged" AutoPostBack="true"/>

			<div>
				ラジオボタンを変更したシステム時刻：<asp:Label ID="Label_RadioButtonChangeTime" runat="server"></asp:Label>
			</div>
		</div>
		<h3>RadioButton4</h3>
		選択変更イベントで画面全体がロードされたのに気づきましたか？<br />
		戻るボタンで状態を戻すことができると思います。<br />
		AutoPostBackをtrueにしたのが原因です。<br />
		こいつをTrueにしてサーバーのイベントを実行しています。<br />
		サーバーはイベントを処理して、処理した結果のHTMLをブラウザに返してきます。<br />
		<asp:Image ID="Image_RadioButton41" runat="server" ImageUrl="~/kentaro/SampleProject/SampleProjectDoc/RadioButton4.jpg" />
		しかし、ラジオボタンを選択するたびにロードされたら見にくいですね。<br />
		そこでUpdatePanelというもので囲うとその部分の描画だけ更新されます。<br />
		非同期でサーバーとやり取りする基本的な仕組みです。<br />
		<asp:Image ID="Image_RadioButton5" runat="server" ImageUrl="~/kentaro/SampleProject/SampleProjectDoc/RadioButton5.jpg" />
		<br />
		RadioButtonD_Sample_CheckedChangedメソッドを新たに定義して、自国の表示更新を行うようにしました。<br />
		今度はUpdatePanelで囲ったので画面全体はロードされません。<br />

		<div>
			<asp:UpdatePanel ID="UpdatePanel_RadioButton" runat="server">
				<ContentTemplate>
					<asp:RadioButton GroupName="GroupD" ID="RadioButton1" runat="server" Text="D-1AsyncEvent" 
						OnCheckedChanged="RadioButtonD_Sample_CheckedChanged" AutoPostBack="true"/>
					<asp:RadioButton GroupName="GroupD" ID="RadioButton2" runat="server" Text="D-2AsyncEvent" 
						OnCheckedChanged="RadioButtonD_Sample_CheckedChanged" AutoPostBack="true"/>
					<asp:RadioButton GroupName="GroupD" ID="RadioButton3" runat="server" Text="D-3AsyncEvent" 
						OnCheckedChanged="RadioButtonD_Sample_CheckedChanged" AutoPostBack="true"/>
					<div>
						ラジオボタンを変更したシステム時刻：<asp:Label ID="Label_RadioButtonChangeTime_Async" runat="server"></asp:Label>
					</div>
				</ContentTemplate>
			</asp:UpdatePanel>
			
		</div>
	</div>
	<div class="group_div">
		<h3>UpdatePanel & Button</h3>
		先ほどのUpdatePanelについてみてみましょう。<br />
		サーバーとの通信が発生すると画面全てがロードされるのが普通なのですが、それだと使い勝手悪いので一部分だけ更新するのでしたね。<br />
		一般的に非同期処理と呼びます。<br />
		<br />
		以下の２つのボタンはクリックすると NomalControl.aspx.cs の
		メソッド「Button_UpdateTest1_Click」と「Button_UpdateTest2_Click」が実行されます。<br />
		どちらのボタンもクリック処理を実行しますが、片方はUpdatePanelで囲ってあります。<br />
		画面全体がロードされるのを確認してみてください。<br />
		クリックするとランダムで背景色が変化します。
		<div style="border:1px solid;">
			
			<asp:UpdatePanel ID="UpdatePanelSample1" runat="server">
				<ContentTemplate>
					非同期
					<asp:Button ID="Button_UpdateTest1" runat="server" OnClick="Button_UpdateTest1_Click" />
				</ContentTemplate>
			</asp:UpdatePanel>

			同期
			<asp:Button ID="Button_UpdateTest2" runat="server" OnClick="Button_UpdateTest2_Click" />
		</div>
	</div>


</asp:Content>


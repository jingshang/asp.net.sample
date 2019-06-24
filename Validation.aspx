<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="kurihara_Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

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

	<div class="group_div">
		<h3>基本的な説明</h3>

		<p>
			ASP.NETにはエラーチェックを行ってくれる仕組みが用意されています。<br />
			ボタン押下で発生する通信（ポストバック）でエラーチェックを行います。<br />

			いくつか作成するので見てみましょう。
		</p>

	</div>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
		<ContentTemplate>
			<div class="group_div">
				<h3>入力必須</h3>
				<p>
					ControlToValidateに対象のコントロールを指定している点に注意してください。
					<br />

					ButtonにValidationGroupを指定しています。<br />
					このボタンを押したときにチェックするバリデーションを指定できます。<br />
					入力必須では「ValidationGroup」にTextBoxとRequiredFieldValidator で同じ値を設定しています。<br />
					同じ文字列はグループとされ、その他のグループのバリデーションは反応しません。<br />
					今回のように部分的にバリデーションをかけたいときには使えます。<br />
					「ValidationGroup」を指定しなければ全てのバリデーションが反応します。
				</p>
				<asp:TextBox ID="TextBox_UpdatePanel1" runat="server"></asp:TextBox>
				<asp:Button ID="Button_UpdatePanel1" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup1" />
				<asp:RequiredFieldValidator ForeColor="Red" ID="ValidRequired" runat="server" ControlToValidate="TextBox_UpdatePanel1" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup1"></asp:RequiredFieldValidator>
			</div>
			<div class="group_div">
				<h3>数値</h3>
				<p>0から100までの半角数字をチェックします。必須ではないので注意してください。</p>
				<asp:TextBox ID="TextBox_UpdatePanel2" runat="server"></asp:TextBox>
				<asp:Button ID="Button_UpdatePanel2" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup2" />
				<asp:RangeValidator ForeColor="Red" ID="ValidRange" runat="server" ControlToValidate="TextBox_UpdatePanel2" MaximumValue="100" MinimumValue="0" ErrorMessage="0～100の半角数字のみ受け付けます。" ValidationGroup="ValidGroup2"></asp:RangeValidator>
			</div>
			<div class="group_div">
				<h3>入力必須＋数値</h3>
				<p>バリデーションは組み合わせても利用できます。</p>
				<asp:TextBox ID="TextBox_UpdatePanel3" runat="server"></asp:TextBox>
				<asp:Button ID="Button_UpdatePanel3" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup3" />
				<asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_UpdatePanel3" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup3"></asp:RequiredFieldValidator>
				<asp:RangeValidator ForeColor="Red" ID="RangeValidator1" runat="server" ControlToValidate="TextBox_UpdatePanel3" MaximumValue="100" MinimumValue="0" ErrorMessage="0～100の半角数字のみ受け付けます。" ValidationGroup="ValidGroup3"></asp:RangeValidator>
			</div>
			<div class="group_div">
				<h3>正規表現</h3>
				<p>正規表現で入力チェックをかけられます。<br />
					例えば日本の郵便番号　ルール以外はエラーを表示します。<br />
					正規表現はデザインファイルで設定します。<br />
					ValidationExpressionを確認していましょう。<br />

				</p>
				<asp:TextBox ID="TextBox_UpdatePanel4" runat="server"></asp:TextBox>
				<asp:Button ID="Button_UpdatePanel4" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup4" />
				<asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="日本の郵便番号のみ受け付けます。" ControlToValidate="TextBox_UpdatePanel4" ValidationExpression="\d{3}(-(\d{4}|\d{2}))?" ValidationGroup="ValidGroup4"></asp:RegularExpressionValidator>
			</div>
			<div class="group_div">
				<h3>自分のルール</h3>
				<p>
					用意されたバリデーションはデザインファイルに配置するだけなので楽ですが、複雑なエラーチェックをしたいときにはカスタムバリデーションを利用します。<br />
					OnServerValidateイベント（メソッド）を定義してその中でチェック処理を行います。<br />
					CSファイルの「ValidCustom5_ServerValidate」メソッドをデバッグしてみましょう。<br />
					第2引数の「ServerValidateEventArgs」の「IsValid」に false を設定するとエラーとなります。<br />

				</p>
				<asp:RadioButton GroupName="Radio5" ID="RadioButton5_ON" runat="server" Text="ON" />
				<asp:RadioButton GroupName="Radio5" ID="RadioButton5_OFF" runat="server" Text="OFF" />
				<asp:Button ID="Button_UpdatePanel5" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup5" />
				<asp:CustomValidator ForeColor="Red" ID="ValidCustom5" runat="server" ErrorMessage="ラジオボタンのONを選択してください。" ValidationGroup="ValidGroup5" OnServerValidate="ValidCustom5_ServerValidate"></asp:CustomValidator>
			</div>
			<div class="group_div">
				<h3>全てのエラーを表示</h3>
				<p>
					全てのエラーを1か所に表示するときに使用します。
					<br />
					画面の上部などにひとまとめに表示したいときに利用します。
				</p>
				<asp:TextBox ID="Button_UpdatePanel61" runat="server" ></asp:TextBox>
				<asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Button_UpdatePanel61" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup6"></asp:RequiredFieldValidator>

				<br />
				<asp:TextBox ID="Button_UpdatePanel62" runat="server" ></asp:TextBox>
				<asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Button_UpdatePanel62" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup6"></asp:RequiredFieldValidator>
				<br />
				<asp:TextBox ID="Button_UpdatePanel63" runat="server" ></asp:TextBox>
				<asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Button_UpdatePanel63" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup6"></asp:RequiredFieldValidator>
				<br />
				<asp:TextBox ID="Button_UpdatePanel64" runat="server" ></asp:TextBox>
				<asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ControlToValidate="Button_UpdatePanel64" ErrorMessage="入力必須です。" ValidationGroup="ValidGroup6"></asp:RequiredFieldValidator>
				<br />
				<asp:Button ID="Button1" runat="server" OnClick="Button_UpdatePanel1_Click" Text="ボタン" ValidationGroup="ValidGroup6" />
				
				<div>
					<p>以下[ValidationSummary]で表示している文字列です。</p>
					<asp:ValidationSummary ID="ValidSum" runat="server" ValidationGroup="ValidGroup6" ForeColor="Violet" />
				</div>
			</div>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>


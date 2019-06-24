<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl_Sample1.ascx.cs" Inherits="kurihara_WebUserControl_Sample1" %>



<p>
	画面と処理を作成してると、共通化したくなる時があります。<br />
	
	例えば、Webサイトで言うとヘッダーやフッターはまさにその対象です。<br />

	システムで言うと、ユーザーを選ぶ処理が必要になったとします。<br />
	1画面ならまだしも10画面同じ処理が必要になったとします。<br />
	あなたはどのように作りますか？<br />

	コピペですか？<br />
	もし、その処理の一部分を少しだけ修正しなければならなくなった場合、10画面の修正が必要になります。<br />

	ASP.NETでは処理を共通化する仕組みがあり「Webユーザーコントロール」と呼ばれます。<br />

	この文字列もWebユーザーコントロールで作成されています。<br />
	ファイル名「WebUserControl_Sample1.aspx」を確認してください。
</p>
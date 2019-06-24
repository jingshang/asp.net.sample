<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Session.aspx.cs" Inherits="kurihara_Session" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
		<style>
		html{letter-spacing:0.5px;}
		.sampe_block{
			border-bottom:1px solid;
			padding:10px;
		}
		.sampe_block div{
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

	クエリストリングはURLに埋め込まれる情報で、ブラウザの上部URL欄で丸見えなので、セキュリティに問題ない情報のみ扱う事。
	<div class="sampe_block">
		前の画面で設定したSESSION【<asp:Label ID="Label_Session" runat="server" ></asp:Label>】
		<br />
		前の画面で設定したQueryString【<asp:Label ID="Label_QueryString" runat="server" ></asp:Label>】
	</div>

</asp:Content>


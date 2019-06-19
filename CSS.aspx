<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CSS.aspx.cs" Inherits="kentaro_CSS" %>

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

	<p>
		最低限以下は何を意味するか理解できること<br />
	</p>

	<ul>
		<li>margin:10px auto 5px auto</li>
		<li>padding:10px 10px 5px 2px</li>
		<li>color:red</li>
		<li>width:100px</li>
		<li>height:100px</li>
		<li>border:1px solid</li>
	</ul>

	<p>
		このページを見てる時点で、初めて見たって人はかなり焦った方がいいです。<br />
		（厳しいこと言うと「それでお金貰えるの？え？すごい！！」レベルです）<br />
	</p>
	<div>
		<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://dotinstall.com/lessons/basic_html_v4" Text="HTMLの外部動画" Target="_blank" ></asp:HyperLink>
	</div>

	<div>
		<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://dotinstall.com/lessons/basic_css_v4"  Text="CSSの外部動画" Target="_blank"></asp:HyperLink>
	</div>
</asp:Content>


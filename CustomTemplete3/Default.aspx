<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_CustomTemplete3_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<h3>M_APPLY_TYPEへ</h3>
	<asp:Button ID="M_APPLY_TYPE" runat="server" Text="PUSH" OnClick="M_APPLY_TYPE_Click" />
	<hr />
	<h3>M_BORAD_TYPEへ</h3>
	<asp:Button ID="M_BORAD_TYPE" runat="server" Text="PUSH" OnClick="M_BORAD_TYPE_Click" />
	<hr />
	<h3>M_FLOW_TYPEへ</h3>
	<asp:Button ID="M_FLOW_TYPE" runat="server" Text="PUSH" OnClick="M_FLOW_TYPE_Click" />
	
</asp:Content>


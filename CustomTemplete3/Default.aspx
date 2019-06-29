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
	<hr />
	<h3>M_INVASION_TYPE</h3>
	<asp:Button ID="M_INVASION_TYPE" runat="server" Text="PUSH" OnClick="M_INVASION_TYPE_Click" />
	<hr />
	<h3>M_MODIFY_TYPEへ</h3>
	<asp:Button ID="M_MODIFY_TYPE" runat="server" Text="PUSH" OnClick="M_MODIFY_TYPE_Click" />
	<hr />
	<h2>M_MONEY_TRANSFER_TYPEへ</h2>
	<asp:Button ID="M_MONEY_TRANSFER_TYPE" runat="server" Text="PUSH" OnClick="M_MONEY_TRANSFER_TYPE_Click" />
	<hr />
	<h3>M_ROLE</h3>
	<asp:Button ID="M_ROLE" runat="server" Text="PUSH" OnClick="M_ROLE_Click" />
	<hr />
	<h3>S_DATABASE_VERSION</h3>
	<asp:Button ID="S_DATABASE_VERSION" runat="server" Text="PUSH" OnClick="S_DATABASE_VERSION_Click" />
	<hr />
	<h3>S_SYSTEM_SETTING</h3>
	<asp:Button ID="S_SYSTEM_SETTING" runat="server" Text="PUSH" OnClick="S_SYSTEM_SETTING_Click" />
	<hr />
	<h3>T_APPLY_ENTRY</h3>
	<asp:Button ID="T_APPLY_ENTRY" runat="server" Text="PUSH" OnClick="T_APPLY_ENTRY_Click" />

</asp:Content>


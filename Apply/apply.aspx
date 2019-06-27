<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="apply.aspx.cs" Inherits="kurihara_Apply_apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	
	<!-- 隠しフィールド -->
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<asp:HiddenField ID="HiddenProjectId" runat="server" />
			<asp:HiddenField ID="HiddenRootId" runat="server" />
			<asp:HiddenField ID="HiddenApplyTypeId" runat="server" />
		</ContentTemplate>
	</asp:UpdatePanel>

</asp:Content>


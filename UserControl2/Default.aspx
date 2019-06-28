<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControl2_Default" %>

<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_APPLY_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_APPLY_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_BORAD_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_BORAD_TYPE" %>






<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<div>
		<h3>M_APPLY_TYPE</h3>
		<uc1:WebUserControlM_APPLY_TYPE runat="server" ID="M_APPLY_TYPE" OnOriginalEvent="M_APPLY_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td><asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td><asp:Label ID="NAME" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_BORAD_TYPE</h3>
		<uc1:WebUserControlM_BORAD_TYPE runat="server" ID="WebUserControlM_BORAD_TYPE" OnOriginalEvent="WebUserControlM_BORAD_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID1" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td><asp:Label ID="NAME1" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


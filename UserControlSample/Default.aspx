<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControlSample_Default" %>

<%@ Register src="WebUserControl_TABLE_NAME.ascx" tagname="WebUserControl_TABLE_NAME" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<uc1:WebUserControl_TABLE_NAME ID="WebUserControl_TABLE_NAME1" runat="server" OnOriginalEvent="WebUserControl_TABLE_NAME1_OriginalEvent" />


	
	<hr />
	<div>
		<h3>TABLE NAME</h3>
		<div>
			<%-- GridView(UserControl) --%>
		</div>
		<div>
			<%-- データ表示 --%>
			<table>
				<tr>
					<th>F_ID</th>
					<td><asp:Label ID="Label_FLOW_ID" runat="server"></asp:Label></td>
				</tr>
				<tr>
					<th>F_NAME</th>
					<td><asp:Label ID="Label_FLOW_NAME" runat="server"></asp:Label></td>
				</tr>
			</table>
		</div>
	</div>
	<hr />
	<hr />
	<hr />
	<hr />
	<hr />
	<hr />
</asp:Content>


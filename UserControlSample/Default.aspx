<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControlSample_Default" %>

<%@ Register src="WebUserControl_TABLE_NAME.ascx" tagname="WebUserControl_TABLE_NAME" tagprefix="uc1" %>

<%@ Register src="WebUserControl_example1.ascx" tagname="WebUserControl_example1" tagprefix="uc2" %>
<%@ Register Src="~/kurihara/UserControlSample/WebUserControl_Button_Sample.ascx" TagPrefix="uc1" TagName="WebUserControl_Button_Sample" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<uc1:WebUserControl_TABLE_NAME ID="WebUserControl_TABLE_NAME1" runat="server" OnOriginalEvent="WebUserControl_TABLE_NAME1_OriginalEvent" />
	<br />
	<uc2:WebUserControl_example1 ID="WebUserControl_example11" runat="server"  OnOriginalEvent1="WebUserControl_example11_OriginalEvent1"/>
	<br />
	<uc1:WebUserControl_Button_Sample runat="server" ID="WebUserControl_Button_Sample" OnOriginalEvent="WebUserControl_Button_Sample_OriginalEvent" />
	

	
	<hr />
	
	

	
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
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControlSample_Default" %>

<%@ Register src="WebUserControl_TABLE_NAME.ascx" tagname="WebUserControl_TABLE_NAME" tagprefix="uc1" %>

<%@ Register src="WebUserControl_example1.ascx" tagname="WebUserControl_example1" tagprefix="uc2" %>
<%@ Register Src="~/kurihara/UserControlSample/WebUserControl_Button_Sample.ascx" TagPrefix="uc1" TagName="WebUserControl_Button_Sample" %>


<%@ Register src="WebUserControlMApplyType.ascx" tagname="WebUserControlMApplyType" tagprefix="uc3" %>


<%@ Register src="WebUserControlMBoradType.ascx" tagname="WebUserControlMBoradType" tagprefix="uc4" %>


<%@ Register src="WebUserControlMFlowType.ascx" tagname="WebUserControlMFlowType" tagprefix="uc5" %>


<%@ Register src="WebUserControlMInvasionType.ascx" tagname="WebUserControlMInvasionType" tagprefix="uc6" %>


<%@ Register src="WebUserControlMModifyType.ascx" tagname="WebUserControlMModifyType" tagprefix="uc7" %>


<%@ Register src="WebUserControlMMoneyTransferType.ascx" tagname="WebUserControlMMoneyTransferType" tagprefix="uc8" %>


<%@ Register src="WebUserControlMRole.ascx" tagname="WebUserControlMRole" tagprefix="uc9" %>


<%@ Register src="WebUserControlSDatabaseVersion.ascx" tagname="WebUserControlSDatabaseVersion" tagprefix="uc10" %>


<%@ Register src="WebUserControlSSystemSetting.ascx" tagname="WebUserControlSSystemSetting" tagprefix="uc11" %>


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
					<th>F_ID:</th>
					<td><asp:Label ID="Label_FLOW_ID" runat="server"></asp:Label></td>
				</tr>
				<tr>
					<th>F_NAME:</th>
					<td><asp:Label ID="Label_FLOW_NAME" runat="server"></asp:Label></td>
				</tr>
			</table>
		</div>
	</div>
	<hr />
	<h3>M_APPLY_TYPE</h3>
	<uc3:WebUserControlMApplyType ID="WebUserControlMApplyType1" runat="server" OnOriginalEvent="WebUserControlMApplyType1_OriginalEvent"/>

	<div>
		<br />
		<table>
			<tr>
				<th>F_ID</th>
				<td><asp:Label ID="ID_Label" runat="server" Text="" ></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td><asp:Label ID="NAME_Label" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>

	</div>
	<hr />
	<h3>M_BORAD_TYPE</h3>
	<uc4:WebUserControlMBoradType ID="WebUserControlMBoradType1" runat="server" OnOriginalEvent="WebUserControlMBoradType1_OriginalEvent" />
	<div>
		<br />
		<table>
			<tr>
				<th>F_ID</th>
				<td><asp:Label ID="ID_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td><asp:Label ID="NAME_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_FLOW_TYPE</h3>
	<uc5:WebUserControlMFlowType ID="WebUserControlMFlowType1" runat="server" OnOriginalEvent="WebUserControlMFlowType1_OriginalEvent"/>
	<div>
		<br />
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td><asp:Label ID="NAME_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>F_INVASION_TYPE</h3>

	<uc6:WebUserControlMInvasionType ID="WebUserControlMInvasionType1" runat="server" OnOriginalEvent="WebUserControlMInvasionType1_OriginalEvent"/>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td><asp:Label ID="NAME_Label3" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_MODIFY_TYPE</h3>
	<uc7:WebUserControlMModifyType ID="WebUserControlMModifyType1" runat="server" OnOriginalEvent="WebUserControlMModifyType1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label4" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td><asp:Label ID="NAME_Label4" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_MONEY_TRANSFER_TYPE</h3>

	<uc8:WebUserControlMMoneyTransferType ID="WebUserControlMMoneyTransferType1" runat="server" OnOriginalEvent="WebUserControlMMoneyTransferType1_OriginalEvent"/>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label5" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td><asp:Label ID="NAME_Label5" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_ROLE</h3>
	<uc9:WebUserControlMRole ID="WebUserControlMRole1" runat="server" OnOriginalEvent="WebUserControlMRole1_OriginalEvent"/>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label6" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_ROLE_NAME:</th>
				<td><asp:Label ID="ROLE_NAME" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>S_SYSTEM_VERSION</h3>
	<uc10:WebUserControlSDatabaseVersion ID="WebUserControlSDatabaseVersion1" runat="server" OnOriginalEvent="WebUserControlSDatabaseVersion1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label7" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td><asp:Label ID="VERSION_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td><asp:Label ID="CREATE_DATE_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>S_SYSTEM_SETTING</h3>
	<p>
		<uc11:WebUserControlSSystemSetting ID="WebUserControlSSystemSetting1" runat="server" OnOriginalEvent="WebUserControlSSystemSetting1_OriginalEvent"/>
	</p>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td><asp:Label ID="ID_Label8" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>SETTING1</th>
				<td><asp:Label ID="SETTING1" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>SETTING2</th>
				<td><asp:Label ID="SETTING2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<hr />
	<hr />

</asp:Content>


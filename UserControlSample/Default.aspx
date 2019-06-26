<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControlSample_Default" %>

<%@ Register Src="WebUserControl_TABLE_NAME.ascx" TagName="WebUserControl_TABLE_NAME" TagPrefix="uc1" %>

<%@ Register Src="WebUserControl_example1.ascx" TagName="WebUserControl_example1" TagPrefix="uc2" %>
<%@ Register Src="~/kurihara/UserControlSample/WebUserControl_Button_Sample.ascx" TagPrefix="uc1" TagName="WebUserControl_Button_Sample" %>


<%@ Register Src="WebUserControlMApplyType.ascx" TagName="WebUserControlMApplyType" TagPrefix="uc3" %>


<%@ Register Src="WebUserControlMBoradType.ascx" TagName="WebUserControlMBoradType" TagPrefix="uc4" %>


<%@ Register Src="WebUserControlMFlowType.ascx" TagName="WebUserControlMFlowType" TagPrefix="uc5" %>


<%@ Register Src="WebUserControlMInvasionType.ascx" TagName="WebUserControlMInvasionType" TagPrefix="uc6" %>


<%@ Register Src="WebUserControlMModifyType.ascx" TagName="WebUserControlMModifyType" TagPrefix="uc7" %>


<%@ Register Src="WebUserControlMMoneyTransferType.ascx" TagName="WebUserControlMMoneyTransferType" TagPrefix="uc8" %>


<%@ Register Src="WebUserControlMRole.ascx" TagName="WebUserControlMRole" TagPrefix="uc9" %>


<%@ Register Src="WebUserControlSDatabaseVersion.ascx" TagName="WebUserControlSDatabaseVersion" TagPrefix="uc10" %>


<%@ Register Src="WebUserControlSSystemSetting.ascx" TagName="WebUserControlSSystemSetting" TagPrefix="uc11" %>


<%@ Register Src="WebUserControlTApplyEntry.ascx" TagName="WebUserControlTApplyEntry" TagPrefix="uc12" %>


<%@ Register src="WebUserControlTApplyModify.ascx" tagname="WebUserControlTApplyModify" tagprefix="uc13" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<uc1:WebUserControl_TABLE_NAME ID="WebUserControl_TABLE_NAME1" runat="server" OnOriginalEvent="WebUserControl_TABLE_NAME1_OriginalEvent" />
	<br />
	<uc2:WebUserControl_example1 ID="WebUserControl_example11" runat="server" OnOriginalEvent1="WebUserControl_example11_OriginalEvent1" />
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
					<td>
						<asp:Label ID="Label_FLOW_ID" runat="server"></asp:Label></td>
				</tr>
				<tr>
					<th>F_NAME:</th>
					<td>
						<asp:Label ID="Label_FLOW_NAME" runat="server"></asp:Label></td>
				</tr>
			</table>
		</div>
	</div>
	<hr />
	<h3>M_APPLY_TYPE</h3>
	<uc3:WebUserControlMApplyType ID="WebUserControlMApplyType1" runat="server" OnOriginalEvent="WebUserControlMApplyType1_OriginalEvent" />

	<div>
		<br />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME_Label" runat="server" Text=""></asp:Label></td>
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
				<td>
					<asp:Label ID="ID_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_FLOW_TYPE</h3>
	<uc5:WebUserControlMFlowType ID="WebUserControlMFlowType1" runat="server" OnOriginalEvent="WebUserControlMFlowType1_OriginalEvent" />
	<div>
		<br />
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>F_INVASION_TYPE</h3>

	<uc6:WebUserControlMInvasionType ID="WebUserControlMInvasionType1" runat="server" OnOriginalEvent="WebUserControlMInvasionType1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME_Label3" runat="server" Text=""></asp:Label></td>
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
				<td>
					<asp:Label ID="ID_Label4" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME_Label4" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_MONEY_TRANSFER_TYPE</h3>

	<uc8:WebUserControlMMoneyTransferType ID="WebUserControlMMoneyTransferType1" runat="server" OnOriginalEvent="WebUserControlMMoneyTransferType1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label5" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME_Label5" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>M_ROLE</h3>
	<uc9:WebUserControlMRole ID="WebUserControlMRole1" runat="server" OnOriginalEvent="WebUserControlMRole1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label6" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_ROLE_NAME:</th>
				<td>
					<asp:Label ID="ROLE_NAME" runat="server" Text=""></asp:Label></td>
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
				<td>
					<asp:Label ID="ID_Label7" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:Label ID="VERSION_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE_Label1" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>S_SYSTEM_SETTING</h3>
	<p>
		<uc11:WebUserControlSSystemSetting ID="WebUserControlSSystemSetting1" runat="server" OnOriginalEvent="WebUserControlSSystemSetting1_OriginalEvent" />
	</p>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label8" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>SETTING1</th>
				<td>
					<asp:Label ID="SETTING1" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>SETTING2</th>
				<td>
					<asp:Label ID="SETTING2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>T_APPLY_ENTRY</h3>

	<uc12:WebUserControlTApplyEntry ID="WebUserControlTApplyEntry1" runat="server" OnOriginalEvent="WebUserControlTApplyEntry1_OriginalEvent" />
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label9" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION:</th>
				<td>
					<asp:Label ID="VERSION_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_TITLE:</th>
				<td>
					<asp:Label ID="TITLE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE:</th>
				<td>
					<asp:Label ID="BEGIN_DATE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_END_DATE:</th>
				<td>
					<asp:Label ID="END_DATE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_COMMENT:</th>
				<td>
					<asp:Label ID="COMMENT_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_INVASION:</th>
				<td>
					<asp:Label ID="IS_INVASION_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_TYPE</th>
				<td>
					<asp:Label ID="INVASION_TYPE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT:</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER:</th>
				<td>
					<asp:Label ID="IS_MONEY_TRANSFER_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:Label ID="MONEY_TRANFER_TYPE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID:</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE:</th>
				<td>
					<asp:Label ID="CREATE_DATE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE:</th>
				<td>
					<asp:Label ID="UPDATE_DATE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<h3>T_APPLY_MODIFY</h3>

	<uc13:WebUserControlTApplyModify ID="WebUserControlTApplyModify1" runat="server" OnOriginalEvent="WebUserControlTApplyModify1_OriginalEvent"/>
	<div>
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID_Label10" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION:</th>
				<td>
					<asp:Label ID="VERSION_Label3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_MODIFY_TYPE</th>
				<td><asp:Label ID="MODIFY_TYPE_Label" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_TITLE:</th>
				<td>
					<asp:Label ID="TITLE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE:</th>
				<td>
					<asp:Label ID="BEGIN_DATE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_END_DATE:</th>
				<td>
					<asp:Label ID="END_DATE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_COMMENT:</th>
				<td>
					<asp:Label ID="COMMENT_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_INVASION:</th>
				<td>
					<asp:Label ID="IS_INVASION_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_TYPE</th>
				<td>
					<asp:Label ID="INVASION_TYPE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT:</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER:</th>
				<td>
					<asp:Label ID="IS_MONEY_TRANSFER_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:Label ID="MONEY_TRANSFER_TYPE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID:</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE:</th>
				<td>
					<asp:Label ID="CREATE_DATE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE:</th>
				<td>
					<asp:Label ID="UPDATE_DATE_Label2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<hr />
	<hr />
	<hr />

</asp:Content>


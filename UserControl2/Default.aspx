<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_UserControl2_Default" %>

<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_APPLY_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_APPLY_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_BORAD_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_BORAD_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_FLOW_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_FLOW_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_INVASION_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_INVASION_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_MODIFY_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_MODIFY_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_MONEY_TRANSFER_TYPE.ascx" TagPrefix="uc1" TagName="WebUserControlM_MONEY_TRANSFER_TYPE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlM_ROLE.ascx" TagPrefix="uc1" TagName="WebUserControlM_ROLE" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlS_DATABASE_VERSION.ascx" TagPrefix="uc1" TagName="WebUserControlS_DATABASE_VERSION" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlS_SYSTEM_SETTING.ascx" TagPrefix="uc1" TagName="WebUserControlS_SYSTEM_SETTING" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_APPLY_ENTRY.ascx" TagPrefix="uc1" TagName="WebUserControlT_APPLY_ENTRY" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_APPLY_MODIFY.ascx" TagPrefix="uc1" TagName="WebUserControlT_APPLY_MODIFY" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_FLOW.ascx" TagPrefix="uc1" TagName="WebUserControlT_FLOW" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_LOGIN_HISTORY.ascx" TagPrefix="uc1" TagName="WebUserControlT_LOGIN_HISTORY" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_PROJECT.ascx" TagPrefix="uc1" TagName="WebUserControlT_PROJECT" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_ROOT.ascx" TagPrefix="uc1" TagName="WebUserControlT_ROOT" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_USER.ascx" TagPrefix="uc1" TagName="WebUserControlT_USER" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_USER_ENTRY.ascx" TagPrefix="uc1" TagName="WebUserControlT_USER_ENTRY" %>
<%@ Register Src="~/kurihara/UserControl2/WebUserControlT_USER_ROLE.ascx" TagPrefix="uc1" TagName="WebUserControlT_USER_ROLE" %>
























<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<div>
		<h3>M_APPLY_TYPE</h3>
		<uc1:WebUserControlM_APPLY_TYPE runat="server" ID="M_APPLY_TYPE" OnOriginalEvent="M_APPLY_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME" runat="server" Text=""></asp:Label></td>
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
				<td>
					<asp:Label ID="NAME1" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_FLOW_TYPE</h3>
		<uc1:WebUserControlM_FLOW_TYPE runat="server" ID="WebUserControlM_FLOW_TYPE" OnOriginalEvent="WebUserControlM_FLOW_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_INVASION_TYPE</h3>
		<uc1:WebUserControlM_INVASION_TYPE runat="server" ID="WebUserControlM_INVASION_TYPE" OnOriginalEvent="WebUserControlM_INVASION_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME3" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_MODIFY_TYPE</h3>
		<uc1:WebUserControlM_MODIFY_TYPE runat="server" ID="WebUserControlM_MODIFY_TYPE" OnOriginalEvent="WebUserControlM_MODIFY_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID:</th>
				<td>
					<asp:Label ID="ID4" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME:</th>
				<td>
					<asp:Label ID="NAME4" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_MONEY_TRANSFER_TYPE</h3>
		<uc1:WebUserControlM_MONEY_TRANSFER_TYPE runat="server" ID="WebUserControlM_MONEY_TRANSFER_TYPE" OnOriginalEvent="WebUserControlM_MONEY_TRANSFER_TYPE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID5" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td>
					<asp:Label ID="NAME5" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>M_ROLE</h3>
		<uc1:WebUserControlM_ROLE runat="server" ID="WebUserControlM_ROLE" OnOriginalEvent="WebUserControlM_ROLE_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID6" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>F_ROLE_NAME</th>
				<td>
					<asp:Label ID="ROLE_NAME" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>S_DATABASE_VERSION</h3>
		<uc1:WebUserControlS_DATABASE_VERSION runat="server" ID="WebUserControlS_DATABASE_VERSION" OnOriginalEvent="WebUserControlS_DATABASE_VERSION_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID7" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:Label ID="VERSION" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>S_SYSTEM_SETTING</h3>
		<uc1:WebUserControlS_SYSTEM_SETTING runat="server" ID="WebUserControlS_SYSTEM_SETTING" OnOriginalEvent="WebUserControlS_SYSTEM_SETTING_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID8" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>SETTING1</th>
				<td>
					<asp:Label ID="SETTING1" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>SETTING2</th>
				<td>
					<asp:Label ID="SETTING2" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_APPLY_ENTRY</h3>
		<uc1:WebUserControlT_APPLY_ENTRY runat="server" ID="WebUserControlT_APPLY_ENTRY" OnOriginalEvent="WebUserControlT_APPLY_ENTRY_OriginalEvent" />
		<table>
			<tr>
				<th>APPLY_ENTRY_ID</th>
				<td>
					<asp:Label ID="ID9" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:Label ID="VERSION2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_TITLE</th>
				<td>
					<asp:Label ID="TITLE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE</th>
				<td>
					<asp:Label ID="BEGIN_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_END_DATE</th>
				<td>
					<asp:Label ID="END_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_COMMNET</th>
				<td>
					<asp:Label ID="COMMENT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_INVASION</th>
				<td>
					<asp:Label ID="IS_INVASION" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>INVASION_TYPE</th>
				<td>
					<asp:Label ID="INVASION_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER</th>
				<td>
					<asp:Label ID="IS_MONEY_TRANSFER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:Label ID="MONEY_TRANSFER_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE
				</th>
				<td>
					<asp:Label ID="UPDATE_DATE" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_APPLY_MODIFY</h3>
		<uc1:WebUserControlT_APPLY_MODIFY runat="server" ID="WebUserControlT_APPLY_MODIFY" OnOriginalEvent="WebUserControlT_APPLY_MODIFY_OriginalEvent" />
		<table>
			<tr>
				<th>APPLY_ENTRY_ID</th>
				<td>
					<asp:Label ID="ID10" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_VERSION</th>
				<td>
					<asp:Label ID="VERSION3" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>MODIFY_TYPE
				</th>
				<td>
					<asp:Label ID="MODIFY_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_TITLE</th>
				<td>
					<asp:Label ID="TITLE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_BEGIN_DATE</th>
				<td>
					<asp:Label ID="BEGIN_DATE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_END_DATE</th>
				<td>
					<asp:Label ID="END_DATE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_COMMNET</th>
				<td>
					<asp:Label ID="COMMENT2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_INVASION</th>
				<td>
					<asp:Label ID="IS_INVASION2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>INVASION_TYPE</th>
				<td>
					<asp:Label ID="INVASION_TYPE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_INVASION_SEVERE_TEXT</th>
				<td>
					<asp:Label ID="INVASION_SEVERE_TEXT2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IS_MONEY_TRANSFER</th>
				<td>
					<asp:Label ID="IS_MONEY_TRANSFER2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>MONEY_TRANSFER_TYPE</th>
				<td>
					<asp:Label ID="MONEY_TRANSFER_TYPE2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE3" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE
				</th>
				<td>
					<asp:Label ID="UPDATE_DATE2" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_FLOW</h3>
		<uc1:WebUserControlT_FLOW runat="server" ID="WebUserControlT_FLOW" OnOriginalEvent="WebUserControlT_FLOW_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID11" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>F_NUMBER
				</th>
				<td>
					<asp:Label ID="NUMBER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>FLOW_TYPE</th>
				<td>
					<asp:Label ID="FLOW_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>作成社ID
				</th>
				<td>
					<asp:Label ID="CREATE_USER_ID3" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>作成日</th>
				<td>
					<asp:Label ID="CREATE_DATE4" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_LOGIN_HISTORY</h3>
		<uc1:WebUserControlT_LOGIN_HISTORY runat="server" ID="WebUserControlT_LOGIN_HISTORY" OnOriginalEvent="WebUserControlT_LOGIN_HISTORY_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID12" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_INPUT_MAIL</th>
				<td>
					<asp:Label ID="INPUT_MAIL" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_LOGIN_RESULT</th>
				<td>
					<asp:Label ID="LOGIN_RESULT" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_IP</th>
				<td>
					<asp:Label ID="IP" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE
				</th>
				<td>
					<asp:Label ID="CREATE_DATE5" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_PROJECT</h3>
		<uc1:WebUserControlT_PROJECT runat="server" ID="WebUserControlT_PROJECT" OnOriginalEvent="WebUserControlT_PROJECT_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID
				</th>
				<td>
					<asp:Label ID="ID13" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_PROJECT_NUMBER</th>
				<td>
					<asp:Label ID="PROJECT_NUMBER" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>BORAD_TYPE</th>
				<td>
					<asp:Label ID="BORAD_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID4" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE6" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_ROOT</h3>
		<uc1:WebUserControlT_ROOT runat="server" ID="WebUserControlT_ROOT" OnOriginalEvent="WebUserControlT_ROOT_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID
				</th>
				<td>
					<asp:Label ID="ID14" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>PROJECT_NUMBER</th>
				<td>
					<asp:Label ID="PROJECT_NUMBER1" Text="" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<th>APPLY_TYPE
				</th>
				<td>
					<asp:Label ID="APPLY_TYPE" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID5" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DTE</th>
				<td>
					<asp:Label ID="CREATE_DATE7" Text="" runat="server"></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_USER</h3>
		<uc1:WebUserControlT_USER runat="server" ID="WebUserControlT_USER" OnOriginalEvent="WebUserControlT_USER_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID15" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME</th>
				<td>
					<asp:Label ID="LAST_NAME" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME</th>
				<td>
					<asp:Label ID="FIRST_NAME" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME_KANA</th>
				<td>
					<asp:Label ID="LAST_NAME_KANA" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME_KANA</th>
				<td>
					<asp:Label ID="FIRST_NAME_KANA" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_EMAIL</th>
				<td>
					<asp:Label ID="EMAIL" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_PASS
				</th>
				<td>
					<asp:Label ID="PASS" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID6" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE</th>
				<td>
					<asp:Label ID="UPDATE_DATE3" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE8" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_USER_ENTRY</h3>
		<uc1:WebUserControlT_USER_ENTRY runat="server" ID="WebUserControlT_USER_ENTRY" OnOriginalEvent="WebUserControlT_USER_ENTRY_OriginalEvent" />
		<table>
			<tr>
				<th>F_ID</th>
				<td>
					<asp:Label ID="ID16" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME</th>
				<td>
					<asp:Label ID="LAST_NAME2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME</th>
				<td>
					<asp:Label ID="FIRST_NAME2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_LAST_NAME_KANA</th>
				<td>
					<asp:Label ID="LAST_NAME_KANA2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_FIRST_NAME_KANA</th>
				<td>
					<asp:Label ID="FIRST_NAME_KANA2" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>F_EMAIL</th>
				<td>
					<asp:Label ID="EMAIL2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_PASS
				</th>
				<td>
					<asp:Label ID="PASS2" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_USER_ID</th>
				<td>
					<asp:Label ID="CREATE_USER_ID7" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_USER_ID</th>
				<td>
					<asp:Label ID="UPDATE_USER_ID4" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_UPDATE_DATE</th>
				<td>
					<asp:Label ID="UPDATE_DATE4" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_CREATE_DATE</th>
				<td>
					<asp:Label ID="CREATE_DATE9" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
	<div>
		<h3>T_USER_ROLE</h3>
		<uc1:WebUserControlT_USER_ROLE runat="server" ID="WebUserControlT_USER_ROLE" OnOriginalEvent="WebUserControlT_USER_ROLE_OriginalEvent" />
		<table>
			<tr>
				<th>F_USER_ID</th>
				<td>
					<asp:Label ID="USER_ID" Text="" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<th>USER_NAME</th>
				<td>
					<asp:Label ID="USER_NAME" runat="server" Text=""></asp:Label>
				</td>
			</tr>
			<tr>
				<th>ROLE_NAME</th>
				<td>
					<asp:Label ID="USER_ROLE" runat="server" Text=""></asp:Label></td>
			</tr>
		</table>
	</div>
</asp:Content>


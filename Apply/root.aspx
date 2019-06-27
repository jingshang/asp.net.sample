<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="root.aspx.cs" Inherits="kurihara_Apply_root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
		<style>
		.block{
			margin:20px 0 0 0;
		}
		table{
			
			border-collapse:collapse;
		}
		th{text-align:center;}
		th, td {
			border:1px solid;
			padding:3px 5px;
		}
	</style>

	<!-- 隠しフィールド -->
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<asp:HiddenField ID="HiddenProjectId" runat="server" />
			<asp:HiddenField ID="HiddenRootId" runat="server" />
			<asp:HiddenField ID="HiddenApplyTypeId" runat="server" />
		</ContentTemplate>
	</asp:UpdatePanel>

	<h3>申請情報</h3>
	<!-- 現在申請中ではない場合に有効 -->
	<asp:Button ID="Button_Edit" runat="server" Text="編集" OnClick="Button_Edit_Click" />
	<table class="block">
		<tr>
			<th>申請状況</th>
			<td>
				<asp:Label ID="Label_F_APPLYED" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>プロジェクト番号</th>
			<td>
				<asp:Label ID="Label_F_PROJECT_NUMBER" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>委員会名</th>
			<td>
				<asp:Label ID="Label_F_BORAD_TYPE" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>申請タイプ</th>
			<td>
				<asp:Label ID="Label_F_APPLY_TYPE" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>申請作成者氏名</th>
			<td>
				<asp:Label ID="Label_F_CREATE_USER" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<th>申請作成日</th>
			<td>
				<asp:Label ID="Label_F_CREATE_DATE" runat="server"></asp:Label>
			</td>
		</tr>

	</table>
	<asp:UpdatePanel ID="UpdatePanel2" runat="server" class="block">
		<ContentTemplate>

			<!-- 表示するバージョンを選択 -->
			<asp:DropDownList ID="DropDownList_ApplyVersion" runat="server" OnSelectedIndexChanged="Update_ShowApplyInfo" AutoPostBack="true">
			</asp:DropDownList>

			<!-- 上記で選択されたバージョンを表示 -->
			<table>
				<tr>
					<th>ApplyId</th>
					<td>
						<asp:Label ID="ApplyId" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>ApplyVersion</th>
					<td>
						<asp:Label ID="ApplyVersion" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>ApplyTitle</th>
					<td>
						<asp:Label ID="ApplyTitle" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>ApplyBeginDate</th>
					<td>
						<asp:Label ID="ApplyBeginDate" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>ApplyEndDate</th>
					<td>
						<asp:Label ID="ApplyEndDate" runat="server"></asp:Label>
					</td>
				</tr>

			</table>

			<h5>フロー状況</h5>
			<asp:GridView ID="GridView_Flow" runat="server" AutoGenerateColumns="False" DataKeyNames="F_NUMBER" >
				<Columns>
					<asp:BoundField Visible="false" DataField="F_NUMBER" HeaderText="F_NUMBER" ReadOnly="True" SortExpression="F_NUMBER" />
					<asp:BoundField Visible="true" DataField="F_FLOW_TYPE" HeaderText="F_FLOW_TYPE" SortExpression="F_FLOW_TYPE" />
					<asp:BoundField Visible="false" DataField="F_CREATE_USER" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
					<asp:BoundField Visible="true" DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
					<asp:TemplateField>
						<ItemTemplate>
							<asp:Button ID="Button_Delete" runat="server" OnClick="Button_Delete_Click" Text="削除" />
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
				</asp:GridView>
			</h3>

		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>


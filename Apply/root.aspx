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
	<table class="block">
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
			<asp:DropDownList ID="DropDownList_ApplyVersion" runat="server" OnSelectedIndexChanged="Update_ShowApplyInfo">
			</asp:DropDownList>

			<!-- 上記で選択されたバージョンを表示 -->
			<table>
				<tr>
					<th>プロジェクト番号</th>
					<td>
						<asp:Label ID="Label1" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>委員会名</th>
					<td>
						<asp:Label ID="Label2" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>申請タイプ</th>
					<td>
						<asp:Label ID="Label3" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>申請作成者氏名</th>
					<td>
						<asp:Label ID="Label4" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<th>申請作成日</th>
					<td>
						<asp:Label ID="Label5" runat="server"></asp:Label>
					</td>
				</tr>

			</table>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>


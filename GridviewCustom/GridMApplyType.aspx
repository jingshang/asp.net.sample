<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridMApplyType.aspx.cs" Inherits="kurihara_GridviewCustom_GridMApplyType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
		</div>
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_NAME" DataSourceID="M_APPLY_TYPE" OnRowCommand="GridView1_RowCommand">
			<Columns>
				<asp:TemplateField>
					<HeaderTemplate>
						ボタン
					</HeaderTemplate>
					<ItemTemplate>
						<div>
							<asp:Button ID="M_APPLY_TYPE" runat="server" Text="一覧表示" OnClick="M_APPLY_TYPE_Click" />
						</div>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
				<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="M_APPLY_TYPE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_APPLY_TYPE]"></asp:SqlDataSource>
	</form>


	F_ID
	<asp:Label ID="F_ID1" runat="server" Text=""></asp:Label>
	F_NAME
	<asp:Label ID="F_NAME1" runat="server" Text=""></asp:Label>

</body>
</html>

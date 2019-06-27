<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomMApplyType.aspx.cs" Inherits="kurihara_CustomTemplete2_CustomMApplyType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:GridView runat="server" ID="M_APPLY_TYPE" AutoGenerateColumns="false" OnRowCommand="M_APPLY_TYPE_RowCommand">
				<Columns>
					<asp:TemplateField>
						<ItemTemplate>
							<asp:Button ID="Select" Text="選択" runat="server" CommandName="SELECT" />
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField>
						<HeaderTemplate>
							F_ID
						</HeaderTemplate>
						<ItemTemplate>
							<asp:Label ID="F_ID" Text="" runat="server"></asp:Label>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField>
						<HeaderTemplate>
							F_NAME
						</HeaderTemplate>
						<ItemTemplate>
							<asp:Label ID="F_NAME" Text="" runat="server"></asp:Label>
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
		</div>
	</form>
</body>
</html>

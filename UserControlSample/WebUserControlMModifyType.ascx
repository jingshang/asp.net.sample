<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlMModifyType.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlMModifyType" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="M_MODIFY_TYPE" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="M_MODIFY_TYPE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_MODIFY_TYPE]"></asp:SqlDataSource>


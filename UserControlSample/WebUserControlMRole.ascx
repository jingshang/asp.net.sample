<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlMRole.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlMRole" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="M_ROLE" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_ROLE_NAME" HeaderText="F_ROLE_NAME" SortExpression="F_ROLE_NAME" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="M_ROLE" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [M_ROLE]"></asp:SqlDataSource>


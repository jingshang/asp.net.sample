<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTFlow.ascx.cs" Inherits="kurihara_UserControlSample_WebUserControlTFlow" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID,F_NUMBER" DataSourceID="T_FLOW" OnRowCommand="GridView1_RowCommand">
	<Columns>
		<asp:ButtonField ButtonType="Button" Text="選択" CommandName="SELECT" />
		<asp:BoundField DataField="F_ID" HeaderText="F_ID" ReadOnly="True" SortExpression="F_ID" />
		<asp:BoundField DataField="F_NUMBER" HeaderText="F_NUMBER" ReadOnly="True" SortExpression="F_NUMBER" />
		<asp:BoundField DataField="F_FLOW_TYPE" HeaderText="F_FLOW_TYPE" SortExpression="F_FLOW_TYPE" />
		<asp:BoundField DataField="F_CREATE_USER_ID" HeaderText="F_CREATE_USER_ID" SortExpression="F_CREATE_USER_ID" />
		<asp:BoundField DataField="F_CREATE_DATE" HeaderText="F_CREATE_DATE" SortExpression="F_CREATE_DATE" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="T_FLOW" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT * FROM [T_FLOW]"></asp:SqlDataSource>


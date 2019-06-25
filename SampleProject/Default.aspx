<%@ Page Title="" Language="C#" MasterPageFile="~/kentaro/SampleProject/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kentaro_SampleProject_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:Panel ID="Panel_Apply" runat="server">
		<h2>申請者メニュー</h2>
		<div style="border:1px solid; margin:15px 0;width:400px;">
			<div>
				<h3>新規申請</h3>
			</div>
			<div>
				<asp:Button ID="Button_ApplyEntry" runat="server" OnClick="Button_ApplyEntry_Click"  Text="登録"/>
			</div>
			<div>
				<h3>研究一覧（作成日昇順）</h3>
			</div>
			<div>
				※タイトルは、プロジェクトの最新のタイトル
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID" DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound">
					<Columns>
						<asp:BoundField DataField="F_ID" HeaderText="ID" Visible="false" />
						<asp:BoundField DataField="F_PROJECT_NUMBER" HeaderText="プロジェクト番号" />
						<asp:BoundField DataField="F_NAME" HeaderText="タイトル" SortExpression="F_NAME" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionStr %>" SelectCommand="SELECT F_ID , F_PROJECT_NUMBER, '' AS F_NAME FROM [T_PROJECT] "></asp:SqlDataSource>
				
			</div>
			

		</div>

	</asp:Panel>
</asp:Content>


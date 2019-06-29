﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Custom3M_FLOW_TYPE.aspx.cs" Inherits="kurihara_CustomTemplete3_Custom3M_FLOW_TYPE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
	<div>
		<asp:GridView runat="server" AutoGenerateColumns="false" ID="M_FLOW_TYPE">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="SELECT" runat="server" Text="PUSH" OnClick="SELECT_Click" />
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_ID
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_ID" runat="server" Text='<%#Bind("F_ID") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<HeaderTemplate>
						F_NAME
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Label ID="F_NAME" runat="server" Text='<%#Bind("F_NAME") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
	<div>
		<table>
			<tr>
				<th>F_ID</th>
				<td><asp:Label ID="ID" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<th>F_NAME</th>
				<td><asp:TextBox ID="NAME" runat="server" Text=""></asp:TextBox></td>
			</tr>
			<tr>
				<th>更新</th>
				<td><asp:Button ID="UPDATE" runat="server" Text="更新" OnClick="UPDATE_Click" /></td>
			</tr>
		</table>
	</div>
</asp:Content>

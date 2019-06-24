<%@ Page Title="" Language="C#" MasterPageFile="~/kurihara/SampleProject/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="kurihara_SampleProject_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:Button ID="ENTRY" runat="server" Text="新規申請" OnClick="ENTRY_Click" />
	<asp:Button ID="EDIT" runat="server" Text="編集" OnClick="EDIT_Click" />
</asp:Content>




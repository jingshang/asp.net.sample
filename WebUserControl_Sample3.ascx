<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl_Sample3.ascx.cs" Inherits="kurihara_WebUserControl_Sample3" %>

<p>このボタンを押すと、WebUserControlの外にイベントを発生させる事が出来ます。</p>
<asp:Button ID="ButtonEvent" runat="server" OnClick="ButtonEvent_Click" Text="外にイベントを発生させる" />
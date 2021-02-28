<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm8.aspx.vb" Inherits="svoge.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:Button ID="Button2" Text="Обратно в галерията" runat="server" onclick="Button1_Click" />
<br /><br />
<asp:Image ID="Image1" Width="800px" Height="550px" runat="server" />
<br /><br />
<asp:Button ID="Button1" Text="Обратно в галерията" runat="server" onclick="Button1_Click" />
</asp:Content>

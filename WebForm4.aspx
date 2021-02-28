<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm4.aspx.vb" Inherits="svoge.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CreateUserText="Създайте акаунт" FailureText="Не успяхте да се логнете опитайте отново!" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Влез" PasswordLabelText="Парола:" PasswordRecoveryText="Възстановете паролата" PasswordRequiredErrorMessage="Трябва да въведете парола!" RememberMeText="Запомниме" TextLayout="TextOnTop" TitleText="Влизане в профил." UserNameLabelText="Потребите:" UserNameRequiredErrorMessage="Вкарайте потребителско име!" ValidateRequestMode="Disabled" Width="241px" CreateUserUrl="~/WebForm5.aspx" PasswordRecoveryUrl="~/WebForm6.aspx">
	<InstructionTextStyle Font-Italic="True" ForeColor="Black" />
	<LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
	<TextBoxStyle Font-Size="0.8em" />
	<TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
</asp:Content>

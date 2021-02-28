<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm6.aspx.vb" Inherits="svoge.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerLabelText="Въпрос" AnswerRequiredErrorMessage="Въпроса е задължителен." GeneralFailureText="Твоя опит да въстановиш паролата е неуспешен, моля опитай отново." QuestionFailureText="Твоя отговор не успя да бъде потвърден моля опитай отново." QuestionInstructionText="Отговори на тайния въпрос за да си въстановиш паролата!" QuestionLabelText="Въпрос!" QuestionTitleText="Потвърден" SubmitButtonText="Изпрати!" SuccessText="Паролата ти беше изпратена на майл!" UserNameFailureText="Не успяхме да открием информация за теб, моля опитай отново!" UserNameInstructionText="Вкарай твоето потребителско име и паролата ти ще бъде въстановена!" UserNameLabelText="Потребителско име!" UserNameRequiredErrorMessage="Потребителското име е задължително!" UserNameTitleText="Забравена парола?">
</asp:PasswordRecovery>
</asp:Content>

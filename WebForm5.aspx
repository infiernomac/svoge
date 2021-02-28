<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm5.aspx.vb" Inherits="svoge.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			font-weight: bold;
			color: white;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Таен отговор" AnswerRequiredErrorMessage="Тайния отговор е задължителен." BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" CancelButtonText="Върни" CompleteSuccessText="Твоя акаунт беше успешно създаден!" ConfirmPasswordCompareErrorMessage="Паролата и паролата за потвръждаване трябва да са еднакви!" ConfirmPasswordLabelText="Потвърди Паролата" ConfirmPasswordRequiredErrorMessage="Трябва да потвърдиш паролата." ContinueButtonText="Продължи" CreateUserButtonText="Създай акаунт." DuplicateEmailErrorMessage="Пощата която въведохте вече се използва моля използвайте друга!" DuplicateUserNameErrorMessage="Това име вече се позва, моля използвайте друго!" EmailLabelText="Поща:" EmailRegularExpressionErrorMessage="Моля вкарайте различна поща!" EmailRequiredErrorMessage="Пощата е задължителна!" FinishCompleteButtonText="Край" FinishPreviousButtonText="Върни" Font-Names="Verdana" Font-Size="0.8em" Height="341px" InvalidAnswerErrorMessage="Моля вкарайте нов таен отговор!" InvalidEmailErrorMessage="Моля вкарайте валидна поща!" InvalidPasswordErrorMessage="Паролата трябва да е дълга {0} синвола. И трябва да съдържа поне  {1} от буква." InvalidQuestionErrorMessage="Моля вкарайте различен таен въпрос!" LoginCreatedUser="False" PasswordLabelText="Парола:" PasswordRegularExpressionErrorMessage="Моля вкарайте друга парола!" PasswordRequiredErrorMessage="Паролата е задължителна!" QuestionLabelText="Таен въпрос!" QuestionRequiredErrorMessage="Тайния въпрос е задължителен!" StartNextButtonText="Продължи" StepNextButtonText="Продължи" StepPreviousButtonText="Върни се!" UnknownErrorMessage="Твоя акаунт не е създаден, моля опитай отново!" UserNameLabelText="Потребителско име." UserNameRequiredErrorMessage="Потребителското име е задължително!" Width="378px">
		<ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
		<CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
		<TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<WizardSteps>
			<asp:CreateUserWizardStep runat="server" Title="Създай своя акаунт." />
			<asp:CompleteWizardStep runat="server" Title="Готово!" />
		</WizardSteps>
		<HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
		<NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
		<SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
		<SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
		<StepStyle Font-Size="0.8em" />
	</asp:CreateUserWizard>
</asp:Content>

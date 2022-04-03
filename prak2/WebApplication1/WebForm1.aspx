<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            Имя<asp:TextBox ID="login" runat="server" OnTextChanged="login_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="login" ErrorMessage="Ошибка ввода имени">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Пароль<asp:TextBox ID="TextBox_pasword" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_pasword" ErrorMessage="Ошибка ввода пароля" ValidationExpression="\w{8,}">Пароль должен содержать не менее 8 символов</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pasword" ErrorMessage="Ошибка ввода пароля">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Подтвердите пароль<asp:TextBox ID="TextBox_paswordCheck" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_pasword" ControlToValidate="TextBox_paswordCheck" ErrorMessage="Ошибка подтверждения пароля">Не верно введен пароль</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_paswordCheck" ErrorMessage="Ошибка подтверждения пароля">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            email<asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Ошибка ввода email" ValidationExpression="^[-a-z0-9!#$%&'*+/=?^_`{|}~]+(?:\.[-a-z0-9!#$%&'*+/=?^_`{|}~]+)*@(?:[a-z0-9]([-a-z0-9]{0,61}[a-z0-9])?\.)*(?:aero|arpa|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|[a-z][a-z])$">Не правильно введен email</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Ошибка ввода email">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Возраст<asp:TextBox ID="TextBox_age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Ошибка ввода возраста" MaximumValue="65" MinimumValue="18">Не верно введен возраст</asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Ошибка ввода возраста">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Отправить" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="65px" />
        </div>
    </form>
</body>
</html>

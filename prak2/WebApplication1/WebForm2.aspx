<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="Login_form" runat="server">
        <div>
            Логин:
            <asp:TextBox ID="Login" runat="server"></asp:TextBox>
            <br />
            Пароль:
            <asp:TextBox ID="Password_box" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Войти" />
        </div>
    </form>
</body>
</html>

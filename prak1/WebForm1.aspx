<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prak1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="Login" runat="server"></asp:TextBox>
            логин
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            пароль
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Button" />
        </div>
    </form>
</body>
</html>

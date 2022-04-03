<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="prak1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem>Сахар</asp:ListItem>
                <asp:ListItem>Соль</asp:ListItem>
                <asp:ListItem>Перец</asp:ListItem>
            </asp:ListBox>
                    <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>яблоко</asp:ListItem>
                <asp:ListItem>лимон</asp:ListItem>
                <asp:ListItem>груша</asp:ListItem>
            </asp:DropDownList>
                    <br />
            <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Кружка</asp:ListItem>
                        <asp:ListItem>Тарелка</asp:ListItem>
                        <asp:ListItem>Чайник</asp:ListItem>
                    </asp:RadioButtonList>
            <br />
            <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Отправить" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>

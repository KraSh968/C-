<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="TradeCompany.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Customers" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="YearOfBirth" HeaderText="YearOfBirth" SortExpression="YearOfBirth" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyDBConnectionString2 %>" InsertCommand="Insert into Customers(Name, Surname, YearOfBirth) values (@Name, @Surname, @YearOfBirth)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="Update Customers set Name=@Name, Surname =@Surname, YearOfBirth=@YearOfBirth where Id=@Id " DeleteCommand="Delete from Customers where Id=@Id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="Customers" Name="Id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBoxName" Name="Name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxSurname" Name="Surname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxYear" Name="YearOfBirth" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="Customers" Name="Name" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Customers" Name="Surname" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Customers" Name="YearOfBirth" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Customers" Name="Id" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="Orders" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="IdCust" HeaderText="IdCust" SortExpression="IdCust" ReadOnly="True" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quant" HeaderText="Quant" SortExpression="Quant" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyDBConnectionString2 %>" InsertCommand="Insert into Orders(Title, IdCust, Price, Quant) values (@Title, @IdCust, @Price, @Quant)" SelectCommand="SELECT * FROM [Orders] WHERE ([IdCust] = @IdCust)" UpdateCommand="Update Orders set Title = @Title, IdCust = @IdCust, Price = @Price, Quant = @Quant where Id=@Id" DeleteCommand="Delete from Orders where Id=@Id" >
            <DeleteParameters>
                <asp:ControlParameter ControlID="Orders" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBoxTitle" Name="Title" PropertyName="Text" />
                <asp:ControlParameter ControlID="Customers" Name="IdCust" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBoxPrice" Name="Price" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxQuant" Name="Quant" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Customers" Name="IdCust" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="Orders" Name="Title" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Customers" Name="IdCust" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Orders" Name="Price" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Orders" Name="Quant" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Orders" Name="Id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="AddOrder" runat="server" OnClick="AddOrder_Click" Text="Добавить заказ" />
        <asp:Button ID="AddCustomer" runat="server" OnClick="AddCustomer_Click" Text="Добавить заказчика" />
        <br />
        <asp:Button ID="EditOrder" runat="server" OnClick="EditOrder_Click" Text="Редактировать заказы" />
        <asp:Button ID="EditCustomer" runat="server" OnClick="EditCustomer_Click" Text="Редактировать заказчиков" />
        <br />
        <asp:Button ID="DeleteOrder" runat="server" OnClick="DeleteOrder_Click" Text="Удалить заказ" />
        <asp:Button ID="DeleteCustomer" runat="server" OnClick="DeleteCustomer_Click" Text="Удалить заказчика" />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            Название товара:<asp:TextBox ID="TextBoxTitle" runat="server"></asp:TextBox>
            <br />
            Цена:<asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
            <br />
            Количество:<asp:TextBox ID="TextBoxQuant" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="AddEditOrder" runat="server" OnClick="AddEditOrder_Click" Text="Добавить" />
            <asp:Button ID="CancelEditOrder" runat="server" OnClick="CancelEditOrder_Click" Text="Отменить" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            Имя:<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            <br />
            Фамилия:<asp:TextBox ID="TextBoxSurname" runat="server"></asp:TextBox>
            <br />
            Год рождения:<asp:TextBox ID="TextBoxYear" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="AddEditCustomer" runat="server" OnClick="AddEditCustomer_Click" Text="Добавить" />
            <asp:Button ID="CancelEditCustomer" runat="server" OnClick="CancelEditCustomer_Click" Text="Отменить" />
        </asp:Panel>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReadPage.aspx.cs" Inherits="WAPP_ASSIGNMENT.AdminReadPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Read Users Data"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="104px" Width="174px">
                        <Fields>
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
                            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT registeration.fname,registeration.lname, registeration.uname, registeration.Age,registeration.Email, registeration.pwd,Quiz.Level
FROM registeration INNER JOIN
Quiz ON registeration.Id = Quiz.StudentID"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KIDSREGISTRATION.aspx.cs" Inherits="WAPP_ASSIGNMENT.KIDSREGISTRATION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            width: 224px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First name</td>
                    <td>
                        <asp:TextBox ID="KFname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last name&nbsp;</td>
                    <td>
                        <asp:TextBox ID="KLname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Username</td>
                    <td>
                        <asp:TextBox ID="KUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="KAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="KEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="KPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Level</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="KLevel" runat="server">
                            <asp:ListItem>BEGINNER</asp:ListItem>
                            <asp:ListItem>INTERMEDIATE</asp:ListItem>
                            <asp:ListItem>ADVANCED</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT registeration.fname,registeration.lname, registeration.uname, registeration.Age,registeration.Email, registeration.pwd,Quiz.Level
FROM registeration INNER JOIN
Quiz ON registeration.Id = Quiz.StudentID"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

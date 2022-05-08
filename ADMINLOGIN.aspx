<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMINLOGIN.aspx.cs" Inherits="WAPP_ASSIGNMENT.ADMINLOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Id</td>
                    <td>
                        <asp:TextBox ID="Aid" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Username</td>
                    <td>
                        <asp:TextBox ID="AUsername" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="APassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Usertype</td>
                    <td>
                        <asp:TextBox ID="AUsertype" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [adminlogin]"></asp:SqlDataSource>
    </form>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>

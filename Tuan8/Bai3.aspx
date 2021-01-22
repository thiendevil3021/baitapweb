<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai3.aspx.cs" Inherits="Bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bai3.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView2" runat="server">
            <asp:View ID="ChooseView" runat="server">
                <table style="border:2px solid red">
                    <tr>
                        <td id="title" colspan="2"><h2>CHOOSE AN OPTION</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Button ID="btnLogin" runat="server" Text="Login" Width="90px" OnClick="btnLogin_Click" Font-Bold="True" /></td>
                        <td><asp:Label ID="Label1" runat="server" Text="Click Login Button to Enter Login Screen"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Button ID="btnRegister" runat="server" Text="Register" Width="90px" OnClick="btnRegister_Click" Font-Bold="True"/></td>
                        <td><asp:Label ID="Label2" runat="server" Text="Click Register Button to Enter Register Screen"></asp:Label></td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="LoginView" runat="server">
                <table style="border:2px solid red">
                    <tr>
                        <td id="title" colspan="2"><h2>LOGIN SCREEN</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label></td>
                        <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblPassWord" runat="server" Text="PassWord"></asp:Label></td>
                        <td><asp:TextBox ID="txtPassWord" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:Button ID="btnXuat_Login" runat="server" Text="Login" Font-Bold="True" OnClick="xuatLogin" /></td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="RegisterView" runat="server">
                <table style="border:2px solid red">
                    <tr>
                        <td id="title" colspan="2"><h2>REGISTER SCREEN</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblUS" runat="server" Text="User Name"></asp:Label></td>
                        <td><asp:TextBox ID="txtUS" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblPS" runat="server" Text="Password"></asp:Label></td>
                        <td><asp:TextBox ID="txtPS" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:Button ID="btnXuat_Register" runat="server" Text="Register" Font-Bold="True" OnClick="xuatRegister" /></td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="XL_LoginView" runat="server">
                <table style="border:2px solid red">
                    <tr>
                        <td id="title" colspan="2"><h2>LOGIN SCREEN</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LB1" runat="server" Text="User Name"></asp:Label></td>
                        <td><asp:Label ID="lblXuat_US" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LB2" runat="server" Text="PassWord"></asp:Label></td>
                        <td><asp:Label ID="lblXuat_PS" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="XL_RegisterView" runat="server">
                <table style="border:2px solid red">
                    <tr>
                        <td id="title" colspan="2"><h2>REGISTER SCREEN</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LB3" runat="server" Text="User Name"></asp:Label></td>
                        <td><asp:Label ID="lblRegister_US" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LB4" runat="server" Text="Password"></asp:Label></td>
                        <td><asp:Label ID="lblRegister_PS" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="LB5" runat="server" Text="Email"></asp:Label></td>
                        <td><asp:Label ID="lblRegister_Email" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>

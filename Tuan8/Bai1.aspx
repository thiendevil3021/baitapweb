<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai1.aspx.cs" Inherits="Bai1" %>

<%@ Register src="loginControl.ascx" tagname="loginControl" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login1">
        <asp:Label ID="Label1" runat="server" Text="KIEM TRA THONG TIN DANG NHAP"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="VG1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="K dc trong" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="K dc trong" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <uc1:loginControl ID="loginControl1" runat="server" />
    </div>
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 158px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 26px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" Text="Button" />
        </p>
    </form>
</body>
</html>

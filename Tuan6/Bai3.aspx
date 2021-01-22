<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai3.aspx.cs" Inherits="Bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h5>Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="171px"></asp:TextBox>
        </h5>
        <h5>
            State&nbsp;&nbsp; :  
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="2" Width="175px"></asp:TextBox>
        </h5>
        <h5>
            Comment:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </h5>
        <h5>
            password:
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="187px"></asp:TextBox>
        </h5>
    </div>
    </form>
</body>
</html>

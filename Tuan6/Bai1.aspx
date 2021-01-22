<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai1.aspx.cs" Inherits="Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Your Hobby</h2>
    </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="16px" style="float:left; margin-top: 0px;" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="113px">
            <asp:ListItem>Music</asp:ListItem>
            <asp:ListItem>Sport</asp:ListItem>
            <asp:ListItem>Reading</asp:ListItem>
        </asp:CheckBoxList>
        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
            <asp:ListItem>Watching TV</asp:ListItem>
            <asp:ListItem>Surfing Internet</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="81px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear Selection" Width="108px" />
        <h5>Your hoppy:
        <asp:Label ID="Label1" runat="server" Text="Your hoppy"></asp:Label>
        </h5>
    </form>
</body>
</html>

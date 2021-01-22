<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL_Bai2.aspx.cs" Inherits="BTTL_Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="BTTL_Bai2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Area of Interest"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Web Designer</asp:ListItem>
                <asp:ListItem>Web Administrator</asp:ListItem>
                <asp:ListItem>Web Developer</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Experience"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>1 năm</asp:ListItem>
                <asp:ListItem>3 năm</asp:ListItem>
                <asp:ListItem>5 năm</asp:ListItem>
                <asp:ListItem>10 năm</asp:ListItem>
                <asp:ListItem>&gt; 10 năm</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Comments"></asp:Label>
            <textarea id="txt" rows="9" cols="70" name="comment" form="usrform"> 
                Type your comment here...
            </textarea><br />
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Send acknowledgement?" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

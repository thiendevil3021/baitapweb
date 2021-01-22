<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL_Bai1.aspx.cs" Inherits="BTTL_Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="BTTL_Bai1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <br />
            <h2>Thêm thành viên mới</h2>
            <asp:Label ID="Label1" runat="server" Text="Tên khách hàng" CssClass="lb"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email" CssClass="lb"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mật khẩu" CssClass="lb"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Giới tính" CssClass="lb"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nữ</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Công việc hiện tại" CssClass="lb"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Văn phòng</asp:ListItem>
                <asp:ListItem>Quản lý</asp:ListItem>
                <asp:ListItem>Công nhân</asp:ListItem>
                <asp:ListItem>Sinh viên</asp:ListItem>
                <asp:ListItem>Nội trợ</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Tôi đồng ý với những quy định trên" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Gửi thông tin" OnClick="Button1_Click" />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>

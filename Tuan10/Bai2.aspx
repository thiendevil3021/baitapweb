<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai2.aspx.cs" Inherits="Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bai2.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="themchude">

        <asp:Label ID="Label8" runat="server" Text="Tổng số thành viên: "></asp:Label>
        <asp:Label ID="lbSL" runat="server" Text="Label"></asp:Label>
        <br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="ĐĂNG KÝ THÀNH VIÊN"  Width="100%" Font-Italic="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Chọn tên hiển thị" Width="150"></asp:Label>
        <asp:TextBox ID="txtTen" runat="server" Width="200"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email của bạn" Width="150"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Width="200"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Mật khẩu" Width="150" style="margin-left: 10px"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" Width="200" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu" Width="150" style="margin-left: 10px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="200" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Hãy viết tên nước ta kèm theo ngày Quốc Khánh" Width="50%"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Trả lời câu hỏi" Width="150" style="margin-left: 10px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="200"></asp:TextBox>
        <br />
        <br />
    </div>
    <div class="phanduoi">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Nhận email từ ban quản trị</asp:ListItem>
            <asp:ListItem>Tôi đã đọc và đồng ý các điều khoản</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Button ID="btnThem" runat="server" Text="Thêm mới" OnClick="btnThem_Click" />
        <asp:Label ID="lbKetQua" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL_Bai4.aspx.cs" Inherits="BTTL_Bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .xinchao {
            margin-left: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Đăng Nhập" style="color:red ;font-size:35px;margin-left:500px; "></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Tên Thành viên" Width="150" style="margin-left: 350px"></asp:Label>
            <asp:TextBox ID="txtTenTV" runat="server"></asp:TextBox>

            <br />

        </div>
        <div style="margin-top:10px">
            <asp:Label ID="Label3" runat="server" Text="Mật khẩu" Width="150" style="margin-left: 350px"></asp:Label>
            <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>

            <br />

        </div>
        <div style="margin-top:10px">
            <asp:Button ID="Button1" runat="server" Text="Đăng nhập " OnClick="Button1_Click" style="margin-left: 502px" />
            <asp:Label ID="lblkq" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <div class="xinchao" style="width: 219px; margin-top:20px;">
            <p>Xin chào bạn <asp:Label ID="lblsession" runat="server" Text="" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>

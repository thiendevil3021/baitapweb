<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTVN_Bai2.aspx.cs" Inherits="BTVN_Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table
        {
        margin-left:30%;
        }
        .a
        {
        margin-left:-10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table>
            <tr>
                <th colspan="2"><h1>Thêm thành viên mới</h1></th>
            </tr>
        <tr>
                <td>
                    Hình ảnh
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>Mã thành viên</td>
                <td>
                    <asp:TextBox ID="txtMaKH" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Tên thành viên</td>
                <td>
                    <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td>
                    <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="a" runat="server" RepeatColumns="2">
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            
            <tr>
                <td>Công việc hiện tại</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Văn phòng</asp:ListItem>
                        <asp:ListItem>Quản lý</asp:ListItem>
                        <asp:ListItem>Công nhân</asp:ListItem>
                        <asp:ListItem>Sinh viên</asp:ListItem>
                        <asp:ListItem>Nội trợ</asp:ListItem>
                    </asp:DropDownList>  </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server"  Text="Tôi đồng ý với những quy định" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server"  Text="Gửi thông tin" OnClick="Button1_Click" />  </td>
            </tr>
             <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>  </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

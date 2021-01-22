<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai3Mau3.aspx.cs" Inherits="Bai3Mau3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bai3Mau.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <table>
                 <tr>
                        <td>
                            Đây là nội dung trang hiển thị sản phẩm(nội dung thay đổi)
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">Xin chào, bạn <asp:Label ID="lblName1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                       <td> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Bai3Mau1.aspx">Trang Chủ</asp:HyperLink></td>
                    </tr>
                </table>
    </form>
</body>
</html>

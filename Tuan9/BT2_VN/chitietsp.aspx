<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chitietsp.aspx.cs" Inherits="NguyenThaiBao_BT2_VN_chitietsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="TextFile.css" type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 339px;
        }
        .auto-style2 {
            width: 232px;
        }
         td ,table {
        border:3px solid orange;
        }
        table {
        border-collapse:collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:370px;height:219px">
            <table  width: 378px;">
            <asp:Image ID="Image1" runat="server" Height="219px" Width="100%" />
            
                <tr style="border:2px solid #ff6a00">
                    <td class="auto-style2" >
                        <p>Tên sản phẩm</p>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <p>Mã sản phẩm</p>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                       
                         <div style="float:right;">
                  <asp:Button ID="Button1" runat="server" Text="Đặt hàng" BackColor="#FF6A00" ForeColor="White" Font-Size="20px" Height="50px" OnClick="Button1_Click" />
            </div>
                    </td>
                </tr>
            </table>
        <ul>
            <li><a href="gio.aspx">giỏ hàng</a></li>
        </ul>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BaiTap3Mau.aspx.cs" Inherits="BaiTap3Mau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bai3Mau.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
        .auto-style4 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                  <div class="dangnhap">
                        <table>
                       <tr>
                           <td class="auto-style1">
                           Tên đăng nhập:
                           </td>
                           <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                           </td>
                       </tr> 
                      <tr>
                          <td class="auto-style1">
                               Mật Khẩu:
                          </td>
                          <td>
                             <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                          </td>
                      </tr>
                            <tr>
                                <td colspan="2" style="text-align: center" class="auto-style1">
                                    <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" style="margin-left: 5px" OnClick="Button1_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                  <div>
        <table>
       <tr>
          <td>
              Đây là Trang chủ 
          </td>
      </tr>
      <tr>
          <td style="text-align:right" class="auto-style4">Xin chào, bạn <asp:Label ID="lblName" runat="server" Text="Label" ForeColor="Red"></asp:Label></td>
      </tr>
       <tr>
           <td>
               Liên kêt trang: <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Bai3Mau2.aspx">Hiển Thị sản phẩm</asp:HyperLink>
           </td>
      </tr>
        </table>
    </div>
            </asp:View>

        </asp:MultiView>
    </form>
</body>
</html>

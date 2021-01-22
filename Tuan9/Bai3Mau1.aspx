<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai3Mau1.aspx.cs" Inherits="Bai3Mau1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bai3Mau.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
       <tr>
          <td>
              Đây là Trang chủ 
          </td>
      </tr>
      <tr>
          <td style="text-align:right" class="auto-style4">Xin chào, bạn <asp:Label ID="lblName" runat="server" Text="Lan" ForeColor="#CC0000"></asp:Label></td>
      </tr>
       <tr>
           <td>
               Liên kêt trang: <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Bai3Mau2.aspx">Hiển Thị sản phẩm</asp:HyperLink>
           </td>
      </tr>
        </table>
    </div>
    </form>
</body>
</html>

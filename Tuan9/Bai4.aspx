<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai4.aspx.cs" Inherits="Bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hãy chọn sản phẩm bạn thích</h1>
        </div>
        <div class ="quanao">
        <div class="gallerry">
            <div class="desc">
                <asp:Label ID="Label1" runat="server" Text="ÁO KIỂU THÊU TAY BÈO NHÚN 857"></asp:Label>
               
            </div>
            <img src="hinhanh/aotheu1.jpg" />
            <table >
                <tr>
                    <th>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="hinhanh/hinh2.aspx">Chi tiết </asp:HyperLink>
                    </th>
                    <td>
                        <asp:Button ID="btndathang1" runat="server" Text="Đặt hàng" BorderStyle="None" OnClick="btndathang1_Click" />
                    </td>
                </tr>
            </table>
        </div>
         <div class="gallerry">
            <div class="desc">
                <asp:Label ID="Label2" runat="server" Text="ÁO KIỂU THÊU TAY CỔ TIM 050"></asp:Label>
                
            </div>
            <img src="hinhanh/AO-KIEU-THEU-TAY-CO-TIM.jpg" />
            <table >
                <tr>
                    <th>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/hinhanh/hinh3.aspx">Chi tiết </asp:HyperLink>
                    </th>
                    <td>
                         <asp:Button ID="btnsp2" runat="server" Text="Đặt hàng" BorderStyle="None" OnClick="btnsp2_Click" />
                    </td>
                </tr>
            </table>
        </div>
         <div class="gallerry">
            <div class="desc">
              <asp:Label ID="Label3" runat="server" Text="ÁO KIỂU THÊU TAY BÈO NHÚN 900"></asp:Label>
            </div>
            <img src="hinhanh/AO-THEU-TAY-PHOI-BONG-VIEn.jpg" />
            <table >
                <tr>
                    <th>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/hinhanh/hinh4.aspx">Chi tiết </asp:HyperLink>
                    </th>
                    <td>
                        <asp:Button ID="btnsp3" runat="server" Text="Đặt hàng" BorderStyle="None" OnClick="btnsp3_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </div>
        <div class="clear">
        </div>
        <div class="giohang">
        <div>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GIỎ HÀNG</h1>
        </div>
        <div >
            <asp:ListBox ID="ListBox1" runat="server"  Width="395px">
            </asp:ListBox>
            
            <br />
            
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Mua tiếp" />
            
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Xóa" OnClick="Button4_Click" />
&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Xóa tất cả" OnClick="Button2_Click" />
            
        &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Cập nhật lại đơn giá" />
            
        </div >
            </div>
    </form>
</body>
</html>

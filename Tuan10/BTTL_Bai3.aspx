<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL_Bai3.aspx.cs" Inherits="BTTL_Bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="BTTL_Bai3.css" rel="stylesheet" type="text/css" />
</head>
<body style="width: 885px">
    <form id="form1" runat="server">
    <div class="full">
        <div>
            <div class="title">
                <asp:Label ID="Label1" runat="server" Text="Thêm sản phẩm mới"></asp:Label>
            </div>
        </div>

        <div>
            <asp:Label ID="Label7" runat="server" Text="Mã sản phẩm" Width="200"></asp:Label>
            <asp:TextBox ID="txtMasp" runat="server" Width="200"></asp:TextBox>
        </div>

        <div style="margin-top:10px">
            <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm" Width="200"></asp:Label>
            <asp:TextBox ID="txtTensp" runat="server" Width="500px"></asp:TextBox>
        </div>

        <div style="margin-top:10px">
            <asp:Label ID="Label3" runat="server" Text="Đơn giá" Width="200"></asp:Label>
            <asp:TextBox ID="txtDongia" runat="server" Width="200"></asp:TextBox>
        </div>

        <div style="margin-top:10px">
            <asp:Label ID="Label4" runat="server" Text="Hình minh họa" Width="200"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="318" />
        </div>

        <div style="margin-top:10px">
            <asp:Label ID="Label5" runat="server" Text="Mô tả" Width="200"></asp:Label>
            <asp:TextBox ID="txtMota" runat="server" TextMode="MultiLine" Width="500" Height="200px"></asp:TextBox>
        </div>

        <div style="margin-top:10px">
            <asp:Label ID="Label6" runat="server" Text="Loại sản phẩm" Width="200"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"  Width="300px" DataSourceID="SqlDataSource1" DataTextField="TenLoai" DataValueField="TenLoai">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSPConnectionString %>" SelectCommand="SELECT [TenLoai] FROM [Loai]"></asp:SqlDataSource>
        </div>

        <div style="margin-bottom:20px">
            <asp:Button ID="btnThem" runat="server" Text="Thêm mới" OnClick="btnThem_Click" />
            <asp:Label ID="lblkq" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>

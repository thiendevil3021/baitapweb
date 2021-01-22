<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai1.aspx.cs" Inherits="Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bai1.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="themchude">
        <asp:Label ID="Label1" runat="server" Text="THÊM CHỦ ĐỀ MỚI"  Width="100%" Font-Italic="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Mã chủ đề" Width="100"></asp:Label>
        <asp:TextBox ID="txtMaCD" runat="server" Width="200"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Tên chủ đề" Width="100"></asp:Label>
        <asp:TextBox ID="txtTenCD" runat="server" Width="200"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnThem" runat="server" Text="Thêm mới" OnClick="btnThem_Click" />
        <asp:Label ID="lbKetQua" runat="server" Text="Label"></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTVN_Bai1.aspx.cs" Inherits="BTVN_Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div>
        <h1 style="color:red;">Thêm tin mới</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Chủ đề"></asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Mã tin"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Chi tiết"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Ngày tạo"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox3" TextMode="Date" runat="server"></asp:TextBox></td>
        </tr>
     
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Người tạo"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td style="border-bottom:2px solid #000">
           
                <td style="border-bottom:2px solid #000">  </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="File đính kèm"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
        </tr>
           <tr>
            <td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Thêm mới" OnClick="Button1_Click" /><asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                </td>
        </tr>
    </table>
    </div>
    </div>
    </form>
</body>
</html>

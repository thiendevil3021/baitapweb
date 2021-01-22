<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai2.aspx.cs" Inherits="Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bai2.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="view1" runat="server">
                <div class="nhapthongtin">
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Tên sách:" Width="150"></asp:Label>
                    <asp:TextBox ID="txtTenSach" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Hình minh họa" Width="150"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Thêm mới" OnClick="btnAdd_Click" />
                </div>
            </asp:View>
            <asp:View ID="view2" runat="server">
                <div class="xuatthongtin">
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Tên sách:" Width="150"></asp:Label>
                    <asp:Label ID="lblTenSach" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Hình minh họa" Width="150"></asp:Label>
                    <asp:Label ID="lblFileHinh" runat="server" Text="Label"></asp:Label>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>

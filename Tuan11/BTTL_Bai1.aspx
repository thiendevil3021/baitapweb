<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL_Bai1.aspx.cs" Inherits="BTTL_Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="idtin" HeaderText="ID Tin" />
                <asp:BoundField DataField="tentheloai" HeaderText="Loại tin" />
                <asp:BoundField DataField="tieudetin" HeaderText="Tiêu đề tin" />
                <asp:BoundField DataField="noidungtin" HeaderText="Nội dung tin" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="idloai" HeaderText="ID" />
                <asp:BoundField DataField="tentheloai" HeaderText="Tên thể loại" />
                <asp:HyperLinkField DataNavigateUrlFields="IDLOAI" DataNavigateUrlFormatString="Hinh3BTTL1.aspx?id={0}" DataTextField="IDLOAI" DataTextFormatString="Chi tiết tin" Target="_blank" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

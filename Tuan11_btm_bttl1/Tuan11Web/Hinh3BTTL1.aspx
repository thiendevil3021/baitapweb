<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hinh3BTTL1.aspx.cs" Inherits="Hinh3BTTL1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <h2 style="color:gray;">Danh sách các tin tức</h2>
        <h2 style="color:blue;">Thể loại: <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="IDTIN" HeaderText="ID Tin" />
                 <asp:BoundField DataField="TENTHELOAI" HeaderText="Loại tin" />
                 <asp:BoundField DataField="TIEUDETIN" HeaderText="Tiêu đề tin" />
                 <asp:BoundField DataField="NOIDUNGTIN" HeaderText="Nội dung tin" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTTL1.aspx.cs" Inherits="BTTL1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2 style="color:gray;">Danh sách các tin tức</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="170px" Width="726px">
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

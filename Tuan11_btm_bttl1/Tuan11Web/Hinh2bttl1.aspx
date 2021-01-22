<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hinh2bttl1.aspx.cs" Inherits="Hinh2bttl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
               <Columns>
                <asp:BoundField DataField="IDloai" HeaderText="ID Loai" />
                 <asp:BoundField DataField="TENTHELOAI" HeaderText="Loại tin" />
                   <asp:HyperLinkField  DataTextFormatString="Chi tiết tin" DataTextField="IDLOAI" DataNavigateUrlFields="IDLOAI" DataNavigateUrlFormatString="Hinh3BTTL1.aspx?id={0}" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>

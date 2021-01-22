<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BT1_M.aspx.cs" Inherits="BT1_M" %>

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
                <asp:BoundField DataField="MAKH" HeaderText="Mã Khách Hàng" SortExpression="MAKH" />
                <asp:BoundField DataField="HOTENKH" HeaderText="Họ Tên Khách Hàng" SortExpression="HOTENKH" />
                <asp:BoundField DataField="DIACHIKH" HeaderText="Địa chỉ" SortExpression="DIACHIKH" />
                    <asp:BoundField DataField="DIENTHOAIKH" HeaderText="Điện thoại KH" SortExpression="DIENTHOAIKH" />
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh" SortExpression="NGAYSINH" />
                    <asp:CheckBoxField DataField="GIOITINH" HeaderText="Giới tính" />
            </Columns>
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>

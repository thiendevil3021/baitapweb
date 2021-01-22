<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BT1_M.aspx.cs" Inherits="BT1_M" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center; margin:0; padding:0;">
        <h2 style="text-align:center;background:pink;color:blue;margin:0; padding:0;">Danh sách khách hàng</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MAKH" HeaderText="Mã Khách Hàng" SortExpression="MAKH" />
                <asp:BoundField DataField="HOTENKH" HeaderText="Họ Tên Khách Hàng" SortExpression="HOTENKH" />
                <asp:BoundField DataField="DIACHIKH" HeaderText="Địa chỉ" SortExpression="DIACHIKH" />
                    <asp:BoundField DataField="DIENTHOAIKH" HeaderText="Điện thoại KH" SortExpression="DIENTHOAIKH" />
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh" SortExpression="NGAYSINH" />
                    <asp:CheckBoxField DataField="GIOITINH" HeaderText="Giới tính" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>

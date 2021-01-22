<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="BTVN1_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .con1{
            margin:auto 300px;
            display:inline-block;
        }
        h2{
            color:blue;
            text-align:center;
        }
        .con2{
            padding:25px;
            margin:10px;
            border: 1px solid gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="con1">
            <h2>QUẢN LÝ PHÒNG BAN</h2>
            <div class="con2">
              Phòng ban:  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenPhong" DataValueField="MaPhong"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qlnvConnectionString1 %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
            </div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="MaNhanVien" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" ReadOnly="True" SortExpression="MaNhanVien" />
                    <asp:BoundField DataField="TenNhanVien" HeaderText="TenNhanVien" SortExpression="TenNhanVien" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                    <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                    <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:qlnvConnectionString4 %>" SelectCommand="SELECT [MaNhanVien], [TenNhanVien], [NgaySinh], [DiaChi], [DienThoai], [GioiTinh], [MaPhong] FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

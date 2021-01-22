<%@ Page Language="C#" AutoEventWireup="true" CodeFile="btvn1.aspx.cs" Inherits="btvn1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #Label1 {
            font-size: 30px;
            margin-left:500px;
            font-weight:bold;
            color:blue;
        }
        #DropDownList1 {
            margin-left:40px;
        }
        #GridView1 {
            margin-left: 350px;
        }
        #Label2 {
            margin-top:20px;
            margin-left:55px;
        }
        .dongkhung {
            border: 1px solid blue;
            width: 200px;
            margin-left:550px;
            height: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="QUẢN LÍ PHÒNG BAN"></asp:Label>
        <br />
        <br />
        <div class="dongkhung">
        <asp:Label ID="Label2" runat="server" Text="Phòng Ban"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenphong" DataValueField="maphong" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlBTVN1ConnectionString %>" SelectCommand="SELECT [tenphong], [maphong] FROM [phongban]"></asp:SqlDataSource>
            </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="manhanvien" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="manhanvien" HeaderText="manhanvien" ReadOnly="True" SortExpression="manhanvien" />
                <asp:BoundField DataField="tennhanvien" HeaderText="tennhanvien" SortExpression="tennhanvien" />
                <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" />
                <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                <asp:BoundField DataField="dienthoai" HeaderText="dienthoai" SortExpression="dienthoai" />
                <asp:CheckBoxField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
                <asp:BoundField DataField="maphong" HeaderText="maphong" SortExpression="maphong" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlBTVN1ConnectionString %>" SelectCommand="SELECT [manhanvien], [tennhanvien], [ngaysinh], [diachi], [dienthoai], [gioitinh], [maphong] FROM [nhanvien] WHERE ([maphong] = @maphong)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="maphong" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

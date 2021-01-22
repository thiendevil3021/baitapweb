<%@ Page Language="C#" AutoEventWireup="true" CodeFile="btvn2.aspx.cs" Inherits="btvn2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #DropDownList1 {
            margin-left: 700px;
        }
        #form1 {
            border: 1px solid blue;
            background-color:#48D1CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="tentheloai" DataValueField="idloai"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlBTVN2ConnectionString %>" SelectCommand="SELECT [idloai], [tentheloai] FROM [theloaitin]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="idtin" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="idtin" HeaderText="Mã bản tin" ReadOnly="True" SortExpression="idtin" />
                <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" SortExpression="tieude" />
                <asp:BoundField DataField="noidungtomtat" HeaderText="Nội dung tóm tắt" SortExpression="noidungtomtat" />
                <asp:BoundField DataField="noidung" HeaderText="Nội dung" SortExpression="noidung" />
                <asp:BoundField DataField="ngaydangtin" HeaderText="Ngày đăng tin" SortExpression="ngaydangtin" />
                <asp:ImageField DataImageUrlField="hinhanh" HeaderText="Hình ảnh">
                    <ControlStyle Height="200px" Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="chuthichhinh" HeaderText="Chú thích hình" SortExpression="chuthichhinh" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlBTVN2ConnectionString %>" SelectCommand="SELECT [idtin], [tieude], [noidungtomtat], [noidung], [ngaydangtin], [hinhanh], [chuthichhinh] FROM [tintuc] WHERE ([idloai] = @idloai)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="idloai" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

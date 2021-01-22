﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tintuc.aspx.cs" Inherits="tintuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idtin" DataSourceID="SqlDataSource1" Width="717px">
            <Columns>
                <asp:BoundField DataField="idtin" HeaderText="idtin" ReadOnly="True" SortExpression="idtin" />
                <asp:BoundField DataField="idloai" HeaderText="idloai" SortExpression="idloai" />
                <asp:BoundField DataField="tieudetin" HeaderText="tieudetin" SortExpression="tieudetin" />
                <asp:BoundField DataField="noidungtin" HeaderText="noidungtin" SortExpression="noidungtin" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlBTTL1ConnectionString3 %>" SelectCommand="SELECT [idtin], [idloai], [tieudetin], [noidungtin] FROM [tintuc] WHERE ([idloai] = @idloai)">
            <SelectParameters>
                <asp:QueryStringParameter Name="idloai" QueryStringField="idloai" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

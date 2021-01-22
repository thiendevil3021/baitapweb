<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gio.aspx.cs" Inherits="BT1_TL_gio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" CellSpacing="3" AutoGenerateColumns="False" Width="218px" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="STT">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField ControlStyle-Height="20px" DataField="Name" HeaderText="TÊN">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>                                     
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#ff9900" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
   </div>
        </form>   
</body>
</html>

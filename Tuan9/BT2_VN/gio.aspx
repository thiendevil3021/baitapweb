<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gio.aspx.cs" Inherits="BT2_VN_gio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="TextFile.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%; margin-top:30px; height: 243px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" EnableModelValidation="True" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="100%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="STT">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Tên ">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Số Lượng(RI)">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Giá ">
                <HeaderStyle HorizontalAlign="Left" />

                </asp:BoundField>
                 <asp:BoundField DataField="Thanh" HeaderText="Thành tiền">
                <HeaderStyle HorizontalAlign="Left" />

                </asp:BoundField>
                <asp:TemplateField ControlStyle-CssClass="a" HeaderText ="Xóa">
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete" OnClientClick="return confirm(&quot;Are u sure ?&quot;)">Xóa</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#ff9900" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>

        <div class="total" style="background:#ff9900;color:white">
            <asp:Label ID="Label6" runat="server" Text="Tổng tiền: "></asp:Label>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </div>
        </div>
    <div style="margin-top: 30px;width:40%; float:right;margin-left:10px">
        <asp:Button ID="Button1" runat="server" Text="Mua Tiếp" Width="75px" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Xóa giỏ hàng" Width="171px" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Cập nhật lại đơn hàng" Width="214px" OnClick="Button3_Click" />
    </div>
    </form>
</body>
</html>

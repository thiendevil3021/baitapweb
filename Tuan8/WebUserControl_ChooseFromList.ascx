<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl_ChooseFromList.ascx.cs" Inherits="WebUserControl_ChooseFromList" %>
<link rel="stylesheet" href="Bai6_style.css">
<div class="header">
       <h1>CHOOSE YOUR FAVOURITE ITEM</h1>
</div>
<table>
    <tr>
        <td class="listItem">
            <asp:ListBox ID="listItem" runat="server" Height="181px" >
                <asp:ListItem>Item1</asp:ListItem>
                <asp:ListItem>Item2</asp:ListItem>
                <asp:ListItem>Item3</asp:ListItem>
                <asp:ListItem>Item4</asp:ListItem>
            </asp:ListBox>
        </td>
        <td>
            <asp:Button ID="btnadd" runat="server" Text="Add-->" Width="96px" OnClick="btnadd_click" />
            </br>
            <asp:Button ID="btnaddall" runat="server" Text="Add All" Width="97px" OnClick="btnaddall_Click" />
            </br>
             <asp:Button ID="btnremove" runat="server" Text="<--Remove" Width="96px" OnClick="btnremove_Click" />
            </br>
             <asp:Button ID="btnremoveall" runat="server" Text="Remove All" Width="96px" OnClick="btnremoveall_Click" />

        </td>
        <td class="listItem">
            <asp:ListBox ID="ListBox2" runat="server" Height="186px" Width="338px"></asp:ListBox>
        </td>
    </tr>

</table>
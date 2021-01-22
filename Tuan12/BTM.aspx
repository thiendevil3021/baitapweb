<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BTM.aspx.cs" Inherits="BTM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:DataList ID="dtSach" runat="server" OnSelectedIndexChanged="dtSach_SelectedIndexChanged" RepeatColumns="2">
        </asp:DataList>

    </div>
    </form>
</body>
</html>

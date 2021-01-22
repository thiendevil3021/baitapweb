<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai6.aspx.cs" Inherits="Bai6" %>

<%@ Register Src="~/WebUserControl_ChooseFromList.ascx" TagPrefix="uc1" TagName="WebUserControl_ChooseFromList" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:WebUserControl_ChooseFromList runat="server" ID="WebUserControl_ChooseFromList" />
    </div>
    </form>
</body>
</html>

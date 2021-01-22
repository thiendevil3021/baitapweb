<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai5.aspx.cs" Inherits="Bai5" %>

<%@ Register Src="~/CalendarUserControl.ascx" TagPrefix="uc1" TagName="CalendarUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Select Date from the Calender</h2>  
        <div>
            <uc1:CalendarUserControl runat="server" ID="CalendarUserControl" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai2.aspx.cs" Inherits="Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewPersonal" runat="server">
                <table style="border:3px solid blue">
                    <tr>
                        <td colspan="2"><h2>STEP 1. PERSONAL</h2></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:DropDownList ID="DrowDropList1" runat="server">
                                <asp:ListItem Value="Mail"></asp:ListItem>
                                <asp:ListItem Value="Femail"></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <asp:Button ID="btnStep2" runat="server" Text="Step 2" OnClick="btnStep2_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewContact" runat="server">
                <table style="border:3px solid blue">
                    <tr>
                        <td colspan="2"><h2>STEP 2. CONTACT</h2></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                            <asp:Button ID="btnStep1" runat="server" Text="Step 1" OnClick="btnStep1_Click" />
                        </td>
                        <td colspan="1" align="right">
                            <asp:Button ID="btnStep3" runat="server" Text="Step 3" OnClick="btnStep3_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewSummary" runat="server">
                <table style="border:3px solid blue">
                    <tr>
                        <td colspan="2"><h2>STEP 3. SUMMARY</h2></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p>PERSONAL DETAIL</p></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><asp:TextBox ID="lblFirstName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><asp:TextBox ID="lblLastName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><asp:TextBox ID="lblGender" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p>CONTACT DETAIL</p></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td><asp:TextBox ID="lblEmail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><asp:TextBox ID="lblMobile" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                            <asp:Button ID="btnStep22" runat="server" Text="Step 2" OnClick="btnStep2_Click" />
                        </td>
                        <td colspan="1" align="right">
                            <asp:Button ID="btnSubmid" runat="server" Text="SUBMIT" OnClick="btnStep3_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>

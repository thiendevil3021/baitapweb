<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai4.aspx.cs" Inherits="Bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .main {
            height: 615px;
        }
        #form1 {
            border:1px solid blue;
            width:1000px;
            height:550px;
        }
        #Label1 {
            font-size:30px;
            font-weight:bold;
            color:red;
            margin-left:400px;
        }
        #Label2 {
            font-weight:bold;
            margin-left:20px;
        }
        #Label11 {
            font-weight:bold;
            color:blue;
            margin-left:10px;
        }
        #Label3 {
            width:40px;
            margin-left:30px;
        }
        #Label4 {
            width:40px;
            margin-left:30px;
        }
        #Label5 {
            width:40px;
            margin-left:30px;
        }
        #Label6 {
            width:40px;
            margin-left:30px;
        }
        #Label7 {
            width:40px;
            margin-left:30px;
        }
        #Label9 {
            width:40px;
            margin-left:30px;
        }
        #Label10 {
            width:40px;
            margin-left:30px;
        }
        #Label12 {
            width:40px;
            margin-left:30px;
        }
        #Label13{
            width:40px;
            margin-left:30px;
        }
        #Label8 {
            font-weight:bold;
            color:blue;
            margin-left:10px;
        }
        #Button1 {
            margin-left:200px;
        }
        #CheckBoxList1 {
            float:right;
            margin-right:530px;
        }
        #TextBox1 {
            width:200px;
            margin-left:30px;
        }
        #DropDownList1 {
            margin-left:10px;
        }
        #DropDownList4 {
            margin-left:18px;
        }
        #TextBox2 {
            width:200px;
            margin-left:10px;
        }
        #TextBox4 {
            width:200px;
            margin-left:39px;
        }
        #FileUpload1 {
            margin-left:35px;
        }
        #TextBox3 {
            margin-left:18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <asp:Label ID="Label1" runat="server" Text="ĐĂNG KÝ HỌC"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Bạn vui lòng điền đủ thông tin vào các ô bên dưới để hoàn tất việc gởi đơn đăng ký học công ty TNHH VCL"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="THÔNG TIN CÁ NHÂN"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Họ tên"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kh dc rong" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Ngày sinh"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        /<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        /<asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Gioi tinh"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>Nam</asp:ListItem>
            <asp:ListItem>Nu</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Điện thoại"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Số điện thoại chữ đủ 10 chữ số" ValidationExpression="^[0-9]{10}$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Sai định dạng email" ControlToValidate="TextBox4" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Avatar"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Sở thích"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" RepeatColumns="4" runat="server">
            <asp:ListItem>Nghe nhạc</asp:ListItem>
            <asp:ListItem>Xem TV</asp:ListItem>
            <asp:ListItem>Chơi thể thao</asp:ListItem>
            <asp:ListItem>Đọc sách</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="THÔNG TIN ĐĂNG KÍ XÉT TUYỂN"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Lĩnh vực đăng ký"></asp:Label>
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Công nghệ phần mềm</asp:ListItem>
            <asp:ListItem>Hệ thống thông tin</asp:ListItem>
            <asp:ListItem>Khoa học máy tính</asp:ListItem>
            <asp:ListItem>Mạng máy tính &amp; TT</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Địa chỉ liên hệ"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng nhập địa chỉ" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Đăng ký" />
    </div>
    </form>
</body>
</html>

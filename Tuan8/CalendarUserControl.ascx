<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CalendarUserControl.ascx.cs" Inherits="CalendarUserControl" %>
<link rel="stylesheet" href="calendar.css">
<div class="txtbox">
    <asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>
     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calendar.png" Height="84px" OnClick="ImageButton1_Click" Width="72px"  />
</div>
<div class="icon"></div>
<div class="c">
<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" CssClass="calendar" SelectedDate="06/28/2020 10:49:57">
    <DayHeaderStyle BackColor="#FFCC00" ForeColor="#CC00FF" />
    <DayStyle BackColor="#FFFF66" BorderColor="#FFFF66" />
    <TitleStyle BackColor="Red" ForeColor="White" />
    
</asp:Calendar>
</div>

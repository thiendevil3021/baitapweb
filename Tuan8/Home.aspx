<%@ Page Title="" Language="C#" MasterPageFile="~/Bai5_MASTER.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .body {
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 196px;
        }
        .auto-style4 {
            width: 99px;
        }
        .auto-style5 {
            margin-left: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewDK" runat="server">
            <div class="label"> 
                <asp:Label ID="Label1" runat="server" Text="PHIẾU ĐĂNG KÝ ỨNG TUYỂN NHÂN SỰ"></asp:Label>
            </div>
            <div class="body">
                <asp:Label ID="Label2" runat="server" Text="1.Tên nhân viên: "></asp:Label> 
             
                <asp:TextBox ID="txtTennv" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTennv" ErrorMessage="Không được để trống tên nv"></asp:RequiredFieldValidator>
                
                <br />
                <asp:Label ID="Label3" runat="server" Text="2.Ngày sinh"></asp:Label> 

                <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                
                <asp:Label ID="Label4" runat="server" Text="3.Số CMT"></asp:Label>
                <asp:TextBox ID="txtcmt" runat="server" Width="106px"></asp:TextBox>

                <asp:Label ID="Label5" runat="server" Text="4.Nơi cấp"></asp:Label>
                <asp:TextBox ID="txtnoicap" runat="server" Width="142px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtngaysinh" ErrorMessage="không đúng dinh dang ngay sinh" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Không đúng định dạng cmt" ControlToValidate="txtcmt" ValidationExpression="^[0-9]{9}$"></asp:RegularExpressionValidator>
                <br>
                <asp:Label ID="Label6" runat="server" Text="5.Địa chỉ liên lạc"></asp:Label>
                <asp:TextBox ID="txtlienlac" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="6.Vị trí ứng tuyển:" style="float:left" ></asp:Label>
                <asp:RadioButtonList ID="radiovitriungtuyen" runat="server" RepeatColumns="3"   >
                    <asp:ListItem>Trưởng phòng</asp:ListItem>
                    <asp:ListItem>kế toán</asp:ListItem>
                    <asp:ListItem>Nhân viên </asp:ListItem>
                    <asp:ListItem>Bảo vệ</asp:ListItem>
                    <asp:ListItem>Tạp vụ</asp:ListItem>
                </asp:RadioButtonList>
                
            
     

                <br />
                <asp:Label ID="Label8" runat="server" style="float:left" Text="7.Các yêu cầu về phụ cấp" ></asp:Label>
                <asp:CheckBoxList ID="chklistphucap" runat="server" RepeatColumns="2" style="margin-left: 6px">
                    <asp:ListItem>Trách nhiệm</asp:ListItem>
                    <asp:ListItem>Xăng xe</asp:ListItem>
                    <asp:ListItem>Điện thoại</asp:ListItem>
                    <asp:ListItem>Ăn trưa </asp:ListItem>
                    <asp:ListItem>Độc hại</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:Label ID="Label9" runat="server" Text="8.Loại hợp đồng"></asp:Label>
                <asp:ListBox ID="ListBox1" runat="server">
                    <asp:ListItem>Dài hạn</asp:ListItem>
                    <asp:ListItem>Ngắn hạn</asp:ListItem>
                    <asp:ListItem>Thử việc</asp:ListItem>
                    <asp:ListItem>Hợp đồng theo tháng</asp:ListItem>
                </asp:ListBox>
                <br />
                <asp:Label ID="Label10" runat="server" Text="9.Phòng ban dự tuyển"></asp:Label>
                <asp:DropDownList ID="droplistphongban" runat="server">
                    <asp:ListItem>Phòng kế hoạch</asp:ListItem>
                    <asp:ListItem>Phòng bảo vệ</asp:ListItem>
                    <asp:ListItem>Phòng quản trị</asp:ListItem>
                    <asp:ListItem>Phòng bếp</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label11" runat="server" Text="10. Ngày bắt đầu làm việc:" style="float:left"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" style="float:left" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btntieptuc" runat="server" style="margin-left:200px" Text="Tiếp tục" OnClick="btntieptuc_Click" ValidationGroup="VG1" />
            </div>
        </asp:View>
        <asp:View ID="ViewSYLL" runat="server">
            <div class="label">
                <asp:Label ID="Label12" runat="server" Text="SƠ YẾU LÝ LỊCH"></asp:Label>
            </div>
            <div class="body">
                    <div class="label01">
                        <asp:Label ID="Label13" runat="server" Text="Về Bản thân"></asp:Label>
                    </div>
                <asp:Label ID="Label14" runat="server" Text="Hình thẻ"></asp:Label>
                    &nbsp;
                    <asp:Image ID="Image2" runat="server" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <div>
                    <table>
                        <tr>
                            <td>
                    <asp:Label ID="Label15" runat="server" Text="1.Địa chỉ thường trú"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdiachithuongtru" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                    <asp:Label ID="Label16" runat="server" Text="2.Số điện thoại liên lạc"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                    <asp:Label ID="Label17" runat="server" Text="3.Bằng cấp cao nhất"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="radiobangcap" runat="server" RepeatColumns="3">
                                    <asp:ListItem>Tốt nghiệp trung học</asp:ListItem>
                                    <asp:ListItem>Trung cấp</asp:ListItem>
                                    <asp:ListItem>Cao Đẳng</asp:ListItem>
                                    <asp:ListItem>Đại học</asp:ListItem>
                                    <asp:ListItem>Thạc sĩ </asp:ListItem>
                                    <asp:ListItem>Tiến sĩ</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="4.Trình độ ngoại ngữ"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="chktrinhdo" runat="server" RepeatColumns="3">
                                    <asp:ListItem>Anh</asp:ListItem>
                                    <asp:ListItem>Nhật</asp:ListItem>
                                    <asp:ListItem>Hàn </asp:ListItem>
                                    <asp:ListItem>Đài loan</asp:ListItem>
                                    <asp:ListItem>Hoa</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="5.Thói quen xấu"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="chkthoiquen" runat="server" >
                                    <asp:ListItem>Hút thuốc</asp:ListItem>
                                    <asp:ListItem>Uống rượu bia</asp:ListItem>
                                    <asp:ListItem>Giờ giấc tự do </asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="label01">
                        <asp:Label ID="Label20" runat="server" Text="Về Gia Đình"></asp:Label>
                    </div>
                 <div>
                     <table>
                         <tr>
                              <td class="auto-style4">
                                  <asp:Label ID="Label21" runat="server" Text="1.Họ tên cha "></asp:Label>
                              </td>
                              <td class="auto-style3">
                                  <asp:TextBox ID="txthotencha" runat="server" Height="18px" Width="209px"></asp:TextBox>
                              </td>
                              <td >
                                  &nbsp;<asp:Label ID="Label22" runat="server" Text="Nghề nghiệp"></asp:Label>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtnghecha" runat="server"></asp:TextBox>
                              </td>
                         </tr>
                          <tr>
                              <td class="auto-style4">
                                  <asp:Label ID="Label23" runat="server" Text="2.Họ tên mẹ "></asp:Label>
                              </td>
                              <td class="auto-style3">
                                  <asp:TextBox ID="txthotenme" runat="server" Height="19px" Width="204px"></asp:TextBox>
                              </td>
                              <td >
                                  &nbsp;<asp:Label ID="Label24" runat="server" Text="Nghề nghiệp"></asp:Label>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtngheme" runat="server"></asp:TextBox>
                              </td>
                              
                         </tr>
                          
                     </table>
                 </div>
                <div>
                    <asp:Label ID="Label25" runat="server" Text="3.Số anh chị em trong gia đình"></asp:Label>
                    <asp:TextBox ID="txtsoluongchiem" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Không đúng định dạng số " ControlToValidate="txtsoluongchiem" ValidationExpression="^[0-9]$" ValidationGroup="VG1"></asp:RegularExpressionValidator>
                    
                  
                    <br />
                    <asp:Button ID="btnquaylai" runat="server" Text="Quay lại" CssClass="auto-style5" OnClick="btnquaylai_click" />
                    <asp:Button ID="btntrang3" runat="server" Text="Tiếp tục" OnClick="btntrang3_Click" />
                  
                </div>
            </div>
        </asp:View>
         <asp:View ID="ViewTonghop" runat="server">
             <table style="height: 634px">
                 <tr>
                     <td>
                         <asp:Label ID="Label26" runat="server" Text="1.Tên nhân viên: "></asp:Label> 
                     </td>
                     <td>
                         <asp:Label ID="lbltennv" runat="server" Text="label"></asp:Label> 
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label27" runat="server" Text="2.Ngày sinh"></asp:Label> 
                     </td>
                     <td>
                         <asp:Label ID="lblngaysinh" runat="server" Text="label"></asp:Label>
                     </td>  
                     <td>
                         <asp:Label ID="Label28" runat="server" Text="3.Số CMT"></asp:Label> 
                     </td>
                     <td>
                         <asp:Label ID="lblsoCMT" runat="server" Text="label"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="Label29" runat="server" Text="4.Nơi cấp"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblnoicap" runat="server" Text="label"></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label30" runat="server" Text="5.Địa chỉ liên lạc"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lbllienlac" runat="server" Text="label"></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label31" runat="server" Text="6.Vị trí ứng tuyển"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblvitri" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label32" runat="server" Text="7.Các yêu cầu phụ cấp"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblyeucaupc" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label33" runat="server" Text="8.Loại hợp đồng"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblloaihd" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label34" runat="server" Text="9.Phòng ban:"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblphongban" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label35" runat="server" Text="10.Ngày bắt đầu"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblngaybatdau" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                  <tr>
                     <td colspan="4" class="label01">
                         
                         <asp:Label ID="Label47" runat="server" Text="Về Bản Thân"></asp:Label>
                         
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label48" runat="server" Text="Hình thẻ"></asp:Label>
                     </td>
                     <td>
                         <asp:Image ID="Image1" runat="server" Width="50" Height="50" />
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label36" runat="server" Text="1.Địa chỉ thường trú"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lbldc" runat="server" Text=""></asp:Label> 
                     </td> 
                     <td></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label37" runat="server" Text="2.Số điện thoại:"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblphone" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label38" runat="server" Text="3.Bằng cấp cao nhất:"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblbangcap" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label39" runat="server" Text="4.Trình độ ngoại ngữ"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblngoaingu" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label40" runat="server" Text="5.Thói quen xấu"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblthoiquen" runat="server" Text=""></asp:Label> 
                     </td> 
           
                 </tr>
                 <tr>
                     <td colspan="4" class="label01">
                         
                         <asp:Label ID="Label46" runat="server" Text="Về gia đình"></asp:Label>
                         
                     </td>
                 </tr>
                 <tr>
                     <td><asp:Label ID="Label41" runat="server" Text="1.Họ tên cha"></asp:Label> </td> 
                     <td>
                         <asp:Label ID="lblhotencha" runat="server" Text=""></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="Label42" runat="server" Text="Nghề nghiệp"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblnghecha" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                 <tr>
                     <td>
                        <asp:Label ID="Label43" runat="server" Text="2.Họ tên mẹ"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblhotenme" runat="server" Text=""></asp:Label> 
                     </td>
                     <td>
                         <asp:Label ID="Label44" runat="server" Text="Nghề nghiệp"></asp:Label> 
                     </td> 
                     <td>
                         <asp:Label ID="lblngheme" runat="server" Text=""></asp:Label> 
                     </td> 
                 </tr>
                  <tr>
                      <td><asp:Label ID="Label45" runat="server" Text="3.Số chị em trong gia đình"></asp:Label> </td>
                      <td>
                          <asp:Label ID="lblsoluong" runat="server" Text=""></asp:Label> 
                      </td>
                  </tr>

             </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>


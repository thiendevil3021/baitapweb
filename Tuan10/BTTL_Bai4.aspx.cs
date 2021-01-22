using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTTL_Bai4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("UserLogin", txtTenTV.Text);
        //tạo kêt nôi 
        String strcn = ConfigurationManager.ConnectionStrings["QLKH"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        //tao cmd
        String strcmd = "Select count(*) from KHACHHANG Where TENKH='" + txtTenTV.Text + "' and MatKhau='" + txtMatKhau.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        int kt = (int)cmd.ExecuteScalar();
        if (kt == 1)
        {
            lblkq.Text = "Đăng nhập thành công ";
            lblsession.Text = "" + Session["UserLogin"];
        }
        else
            lblkq.Text = "Sai mật khẩu hoặc tài khoản  ";
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbSL.Text = DemSL().ToString();
    }

    int DemSL()
    {
        //tao ket noi
        String strcn = ConfigurationManager.ConnectionStrings["QLTin"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        //dem so thanh vien
        string strsel = "select count(*) from tblThanhVien";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int sl = (int)cmd.ExecuteScalar();
        cn.Close();
        return sl;
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        //tao ket noi
        String strcn = ConfigurationManager.ConnectionStrings["QLTin"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        //dem so thanh vien co trung dia chi email vua nhap tren form?
        string strsel = "select count(*) from tblThanhVien where Email = '" + txtEmail.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int bKtra = (int)cmd.ExecuteScalar();

        if (bKtra == 0)
        {
            String strcmd = "insert into tblThanhVien(MaTV, Email, MatKhau) values('";
            strcmd = strcmd + txtTen.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "')";
            cmd.CommandText = strcmd;

            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                lbKetQua.Text = "Đã thêm";
            }
        }
        else
        {
            lbKetQua.Text = "Trùng email";
        }
        cn.Close();
    }
}
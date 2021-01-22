using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        //TAO KET NOI
        String strcn = ConfigurationManager.ConnectionStrings["QLTin"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        //tao cmd;
        String strcmd = "insert into tblChuDe values('" + txtMaCD.Text + "','" + txtTenCD.Text + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        //thuc thi
        int rs = cmd.ExecuteNonQuery();

        if (rs == 1)
            lbKetQua.Text = "Đã thêm";

        cn.Close();
    }
}
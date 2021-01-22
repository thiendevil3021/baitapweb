using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTTL_Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLKH"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strcn);
        cnn.Open();
        String strcmd = "insert into KHACHHANG values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "',N'" + RadioButtonList1.SelectedValue + "',N'" + DropDownList1.SelectedValue + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = strcmd;

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
            Label6.Text = "Đã Thêm";

        cnn.Close();
    }
}
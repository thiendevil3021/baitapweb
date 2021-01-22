using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTTL_Bai2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLKH"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strcn);
        cnn.Open();
        String strcmd = "insert into THONGTIN values('" + TextBox1.Text + "',N'" + RadioButtonList1.SelectedValue + "',N'" + DropDownList1.SelectedValue + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = strcmd;

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
            Label5.Text = "Đã Thêm";

        cnn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        RadioButtonList1.SelectedItem.Selected = false;
        DropDownList1.SelectedItem.Selected = false;
        CheckBox1.Checked = false;
    }
}